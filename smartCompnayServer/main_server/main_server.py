# 필요한 라이브러리를 임포트합니다.
from flask import Flask, request
from flask_restx import Api, Resource
from flask_jwt_extended import JWTManager, create_access_token, jwt_required, get_jwt_identity
from werkzeug.security import safe_str_cmp
import pymysql


# Flask 애플리케이션 인스턴스와 API 인스턴스를 생성합니다.
app = Flask(__name__)
api = Api(app)

# JWT를 설정합니다.
app.config['JWT_SECRET_KEY'] = 'your_jwt_secret_key'
jwt = JWTManager(app)

# MySQL 데이터베이스 연결 설정
def get_mysql_connection(host, user, password, db):
    return pymysql.connect(host=host,
                           user=user,
                           password=password,
                           db=db,
                           charset='utf8')


# 사용자 정보를 담고 있는 예제 데이터베이스를 정의합니다.
users = [
    {"username": "user1", "password": "abc123"},
    {"username": "user2", "password": "password"}
]

# 로그인 API 리소스를 정의합니다.
@api.route('/login')
class LoginResource(Resource):
    def post(self):
        username = request.json.get('username', None)
        password = request.json.get('password', None)

        user = next((u for u in users if u['username'] == username and safe_str_cmp(u['password'], password)), None)
        if user is None:
            return {"message": "사용자 이름 또는 비밀번호가 잘못되었습니다."}, 401

        access_token = create_access_token(identity=username)
        return {"access_token": access_token}

# 보호된 API 리소스를 정의합니다.
@api.route('/protected')
class ProtectedResource(Resource):
    @jwt_required()
    def get(self):
        current_user = get_jwt_identity()
        return {"logged_in_as": current_user}


# 사용자 정보를 검색하는 API 리소스를 정의합니다.
@api.route('/user/<int:user_id>')
class UserResource(Resource):
    @jwt_required()
    def get(self, user_id):
        # MySQL 데이터베이스에 연결합니다.
        conn = get_mysql_connection()
        cursor = conn.cursor(pymysql.cursors.DictCursor)

        # 데이터베이스에서 사용자를 찾습니다.
        cursor.execute("SELECT * FROM users WHERE id = %s", (user_id,))
        user = cursor.fetchone()
        cursor.close()
        conn.close()

        if user:
            return user
        else:
            return {'message': '사용자를 찾을 수 없습니다.'}, 404


# 애플리케이션을 실행합니다.
if __name__ == '__main__':
    host, user, password, db = input('host, user, password, db 순 입력: ').split(' ')
    app.run(host='0.0.0.0', port=50000)

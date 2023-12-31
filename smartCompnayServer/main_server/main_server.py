# 필요한 라이브러리를 임포트합니다.
from flask import Flask, request
from flask_restx import Api, Resource
from flask_jwt_extended import JWTManager, create_access_token, jwt_required, get_jwt_identity
from werkzeug.security import generate_password_hash, check_password_hash
from flask_cors import CORS
import pymysql


# Flask 애플리케이션 인스턴스와 API 인스턴스를 생성합니다.
app = Flask(__name__)
CORS(app)
api = Api(app)

# JWT를 설정합니다.
app.config['JWT_SECRET_KEY'] = 'minseo'
jwt = JWTManager(app)

# MySQL 데이터베이스 연결 설정
def get_mysql_connection(host, user, password, db):
    return pymysql.connect(host=host,
                           user=user,
                           password=password,
                           db=db,
                           charset='utf8')

def insertUserTable(username, password):
    hashed_password = generate_password_hash(password)
    sql = '''
            insert into user_table(user_name, user_password) values (%s, %s);
        '''
    try:
        with connector.cursor() as cursor:
            cursor.execute(sql, [username, hashed_password])
            connector.commit()
    except pymysql.MySQLError as e:
        print("Failed to insert member information", e)
        return None
    finally:
        cursor.close()

# 사용자 정보를 담고 있는 예제 데이터베이스를 정의합니다.
users = [
    {"username": "user1", "password": "abc123"},
    {"username": "user2", "password": "password"}
]

# 사용자 등록 API 리소스 정의
@api.route('/api/register')
class RegisterResource(Resource):
    def post(self):
        # 요청으로부터 사용자 이름과 비밀번호 추출
        username = request.json.get('username', None)
        password = request.json.get('password', None)

        if username is None or password is None:
            return {"message": "Username and password are required."}, 400

        # 기존 사용자 확인
        existing_user = next((u for u in users if u['username'] == username), None)
        if existing_user is not None:
            return {"message": "Username already exists."}, 409

        # 새 사용자 추가
        insertUserTable(username, password)

        return {"message": "User registered successfully."}, 201
# 로그인 API 리소스를 정의합니다.
@api.route('/api/login')
class LoginResource(Resource):
    def post(self):
        username = request.json.get('username', None)
        password = request.json.get('password', None)

        # 데이터베이스에서 사용자 조회
        sql = "SELECT * FROM user_table WHERE user_name = %s"
        try:
            with connector.cursor(pymysql.cursors.DictCursor) as cursor:
                cursor.execute(sql, [username])
                user = cursor.fetchone()
                if user and check_password_hash(user['user_password'], password):
                    access_token = create_access_token(identity=username)
                    return {"access_token": access_token}, 200
                else:
                    return {"message": "Your username or password is incorrect."}, 401
        except pymysql.MySQLError as e:
            print("Failed to retrieve member information", e)
            return {"message": "An error occurred during login."}, 500


# 보호된 API 리소스를 정의합니다.
@api.route('/protected')
class ProtectedResource(Resource):
    @jwt_required()
    def get(self):
        current_user = get_jwt_identity()
        return {"logged_in_as": current_user}

# services_table 데이터를 조회하는 API 라우터를 정의합니다.
@api.route('/api/getServices')
class ServicesResource(Resource):
    @jwt_required()
    def get(self):
        sql = "SELECT * FROM services_table"  # services_table에서 모든 데이터를 조회하는 쿼리
        try:
            with connector.cursor(pymysql.cursors.DictCursor) as cursor:
                cursor.execute(sql)
                services = cursor.fetchall()  # 모든 서비스 데이터를 조회
                return {"services": services}, 200
        except pymysql.MySQLError as e:
            print("Failed to retrieve services information", e)
            return {"message": "An error occurred while retrieving services."}, 500

    @jwt_required()
    def post(self):
        sql = "insert into services_table(service_name, service_img_url, service_url values(%s, %s, %s);"

        service_name = request.json.get('service_name', None)
        service_img_url = request.json.get('service_img_url', None)
        service_url = request.json.get('service_url', None)

        try:
            with connector.cursor(pymysql.cursors.DictCursor) as cursor:
                cursor.execute(sql, [service_name, service_img_url, service_url])
                connector.commit()
                return {"success to add services to database"}, 200
        except pymysql.MySQLError as e:
            print("Failed to add services information", e)
            return {"message": "An error occurred while retrieving services."}, 500


# 애플리케이션을 실행합니다.
if __name__ == '__main__':
    global host, user, password, db
    host, user, password, db = input('host, user, password, db 순 입력: ').split(' ')
    global connector
    connector = get_mysql_connection(host, user, password, db)
    app.run(host='0.0.0.0', port=50000, debug=True)

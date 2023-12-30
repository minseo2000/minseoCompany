import pymysql

def connect_to_database(
        host,
        user,
        password,
        database
):
    try:
        # 데이터베이스 연결 설정
        connection = pymysql.connect(
            host=host,       # 호스트 이름
            user=user,   # 사용자 이름
            password=password, # 비밀번호
            database=database,  # 데이터베이스 이름
            cursorclass=pymysql.cursors.DictCursor
        )
        return connection
    except pymysql.MySQLError as e:
        print("데이터베이스 연결 실패:", e)
        return None

def execute_query(connection, query):
    try:
        with connection.cursor() as cursor:
            cursor.execute(query)
            return cursor.fetchall()  # 또는 fetchone(), fetchmany() 사용 가능
    except pymysql.MySQLError as e:
        print("쿼리 실행 실패:", e)

def main():
    # 데이터베이스에 연결
    print('DB 정보를 입력해주세요')
    host, username, password, database = input('host, username, password, database 순으로 입력.').split(' ')
    connection = connect_to_database(
        host = host,
        user = username,
        password = password,
        database = database
    )
    if connection == None:
        return
    else:
        info = 0
        while info != 2:
            print('1: DB 연결하기')
            print('2: DB서버 종료하기')
            info = int(input('수행할 작업의 수를 입력해주세요: '))

if __name__ == "__main__":
    main()

import pymysql

def connect_to_database(host,user,password,database,):
    try:
        # 데이터베이스 연결 설정
        connection = pymysql.connect(
            host=host,       # 호스트 이름
            user=user,   # 사용자 이름
            password=password, # 비밀번호
            database=database,  # 데이터베이스 이름
            cursorclass=pymysql.cursors.DictCursor,
        )
        return connection
    except pymysql.MySQLError as e:
        print("데이터베이스 연결 실패:", e)
        return None

def makeServicesTable(connector):
    sql = '''
        create table services_table(
    service_id int primary key auto_increment,
    service_name varchar(255) not null,
    service_img_url varchar(255) not null,
    service_url varchar(255) not null
);
    '''
    try:
        with connector.cursor() as cursor:
            cursor.execute(sql)
            connector.commit()
    except pymysql.MySQLError as e:
        print("services_table 만들기 실패", e)
        return None
    finally:
        cursor.close()

def showTables(connector):
    sql = '''
            show tables;
        '''
    try:
        with connector.cursor() as cursor:
            cursor.execute(sql)
            result = cursor.fetchall()

            # 결과를 출력합니다.
            for row in result:
                print(row)
    except pymysql.MySQLError as e:
        print("테이블 목록 조회 실패", e)
        return None
    finally:
        cursor.close()

def showTableContent(connector, tableName):
    sql = f'''
                select * from {tableName};
            '''
    try:
        with connector.cursor() as cursor:
            cursor.execute(sql)
            result = cursor.fetchall()

            # 결과를 출력합니다.
            for row in result:
                print(row)
    except pymysql.MySQLError as e:
        print(f"{tableName} 조회 실패", e)
        return None
    finally:
        cursor.close()

def main():
    # 데이터베이스에 연결
    print('DB 정보를 입력해주세요')
    host, username, password, database = input('host, username, password, database 순으로 입력.').split(' ')
    connection = connect_to_database(
        host = host,
        user = username,
        password = password,
        database = database,

    )
    if connection == None:
        return
    else:
        info = 0
        while info != 2:
            print('1: services Table 생성하기')
            print('2: DB서버 종료하기')
            print('3: table 목록 보기')
            print('4: table 조회하기')
            info = int(input('수행할 작업의 수를 입력해주세요: '))
            if info == 1:
                makeServicesTable(connection)
            elif info == 3:
                showTables(connection)
            elif info == 4:
                table_name = input('테이블 이름을 입력하세요: ')
                showTableContent(connection, table_name)

        connection.close()



if __name__ == "__main__":
    main()

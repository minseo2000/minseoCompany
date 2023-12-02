const {ConnectionPool} = require('mssql');
const axios = require('axios');
const api = 'RGAPI-a2ff4e36-6ec1-44ca-9e58-ca5b549a121f';
const config = {
    user: 'sa',
    password: '1234',
    database: 'Node',
    server: 'localhost',
     // SQL Server가 사용하는 포트
    options: {
        encrypt: true, // 데이터 암호화를 위해 true로 설정
        trustServerCertificate: true // 자체 서명된 인증서 신뢰
    }
};


const dbConnection = new ConnectionPool(config)
    .connect()
    .then((pool) => {
        console.log('connection complete');
        return pool;
    })
    .catch((err) => {
        console.log(err);
    })

async function queryDatabase(query, parameters){
    const pool = await dbConnection;
    try{
        const result = await pool.request()
            .input('id', parameters.id)
            .input('password', parameters.password)
            .input('username', parameters.username)
            .input('chat', parameters.chat)
            
            .query(query);
        return result.recordset;
       
    }
    catch(err){
        console.log(err);

    }
} 




module.exports = {
    config,
    dbConnection,
    queryDatabase,

};


// server.js
const express = require('express');
const app = express();
const path = require('path');
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended:true}));
app.use(express.json());
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
const { dbConnection } = require('./routes/db');
app.use(bodyParser.json());
const login = require('./routes/login');
const sha = require('sha256');
const signup = require('./routes/signup');
const {queryDatabase} = require('./routes/db');
const session = require('express-session'); 
const pgSession = require('connect-pg-simple')(session);
const port = 50020;
const server = require('http').Server(app);
const io = require('socket.io')(server);


app.use(express.static(path.join(__dirname, 'views')));

app.use(session({
    secret : 'keyboard cat',
    resave : false,
    saveUninitiaziled: true,
}))

app.get('/', login);
app.post('/login', login);


//채팅 실험
/*
app.route('/register')
    .get((req, res) => {
    res.render('register.ejs');
    })
    .post((req, res) => {
    res.redirect('register');
    });

app.route('/signup')
    .post(signup)

*/

app.get('/chat', (req, res) => {
    if(req.session && req.session.userId){
        const userId = req.session.userId;

        res.render('chat',{
            userId,
        });
    }else{
        res.render('login');
    }
})











io.on('connection', async function(socket){
    console.log('클라이언트 연결');
    
        const userId = socket.request.session?.userId;
        // 클라이언트에게 로그인 정보 전송
        if(userId !=undefined ){
            io.emit('login', {
                userid: userId,});
        }
      
        
    
    socket.on('login',async function(data) {
        console.log('Client chat: ', data.userId);
        try{
            const query = 'select * from chatinfo order by writeTime'
            const result = await queryDatabase(query, {});
            console.log(result);
            
            for(let i=0; i<result.length; i++){
                var recentChats = {
                    from: {
                        LOLname : result[i].username
                    },
                    msg : result[i].chat
                }
                socket.emit('login',recentChats);
            }
            socket.LOLname = data.userId;
            var data =   `${socket.LOLname}님이 접속하였습니다.`;
            io.emit('login', data);
        }
        catch{
            socket.LOLname = data.userId;
            var data =   `${socket.LOLname}님이 접속하였습니다.`;
            io.emit('login', data);
        }

    });

    socket.on('chat', async function(data) {
        const username = socket.LOLname;
        const chat = data.msg;
        const query = 'insert into chatinfo (username, chat,writeTime) VALUES (@username, @chat, getdate())'
        var msg = {
            from: {
                LOLname: socket.LOLname,
            },
            msg: data.msg
        };

        io.emit('chat', msg);
        const result = await queryDatabase(query, {
            username : username, 
            chat : chat
        });
    });


    socket.on('forceDisconnect', function () {
        socket.disconnect();
    });
    socket.on('logout', function() {
       
        io.emit('logout');
    });

    socket.on('disconnect', function () {
        console.log('user disconnected: ' + socket.LOLname);
    });
});

server.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});


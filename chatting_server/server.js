const express = require('express');
const app = express();
const server = app.listen(50020);
const io = require('socket.io')(server);
const path = require('path');
const {queryDatabase} = require('./routes/db')
const login = require('./routes/login');
const chat = require('./routes/chat');
const bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');



app.get('/',login);
app.post('/login', login);

app.get('/chat', chat)
io.on('connection', (socket) => {
    console.log('클라이언트 연결');

    socket.on('login', async function(data){
        console.log('Client chat: ', data.name, 'userid: ', data.userid);
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
        socket.userid = data.userid;
        io.emit('loin', `${socket.name}님이 접속하였습니다.`);

    });

    socket.on('chat', async function(data){
        console.log('Message from %s : %s', socket.userid, data.msg);
        const query = 'insert into chatinfo (username, chat,writeTime) VALUES (@username, @chat, getdate())'
        var msg = {
            from: {
                userid: socket.userid
            },
            msg : data.msg
        };
        const username = socket.userid;
        const chat = data.msg;
        const result = await queryDatabase(query, {
            username : username, 
            chat : chat
        });
        io.emit('chat', msg);
    });

    socket.on('forceDisconnect', function() {
        socket.disconnect();
      })
    
    socket.on('disconnect', function() {
        console.log('user disconnected: ' + socket.name);
      });

})
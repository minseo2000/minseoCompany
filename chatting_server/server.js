const express = require('express');
const app = express();
const server = require('http').createServer(app);
const io = require('socket.io')(server);
const path = require('path');

app.use(express.static(path.join(__dirname,'views')));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index'));
})

io.on('connection', (socket) => {
    console.log('클라이언트 연결');

    socket.on('login', function(data){
        console.log('Client chat: ', data.name, 'userid: ', data.userid);

        socket.name = data.name;
        socket.userid = data.userid;
        io.emit('loin', `${socket.name}님이 접속하였습니다.`);

    });

    socket.on('chat', function(data){
        console.log('Message from %s : %s', socket.name, data.msg);

        var msg = {
            from: {
                name : socket.name,
                userid: socket.userid
            },
            msg : data.msg
        };

        io.emit('chat', msg);
    });

    socket.on('forceDisconnect', function() {
        socket.disconnect();
      })
    
    socket.on('disconnect', function() {
        console.log('user disconnected: ' + socket.name);
      });

})

server.listen(8080, function(){
    console.log(' 8000포트에서 실행중');
})
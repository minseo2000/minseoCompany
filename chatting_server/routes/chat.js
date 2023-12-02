const express = require('express');
const app = express();
const router = express.Router();
const {dbConnection} = require('./db');
const sha = require('sha256');
const {queryDatabase} = require('./db');
const express_session = require('express-session')
const MemoryStore = express_session.MemoryStore;
const sessionStore = new MemoryStore();



router.get('/chat', (req, res)=>{
    res.render('chat');
});

module.exports = router;
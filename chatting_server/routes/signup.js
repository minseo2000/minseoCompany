const express = require('express');
const app = express();
const router = express.Router();
const {dbConnection} = require('./db');
const sha = require('sha256');
const {queryDatabase} = require('./db');
const { generatePrimeSync } = require('crypto');

router.post('/signup', async(req, res) => {
    
    const id = req.body.id;
    const password = sha(req.body.password);


    try {
                const query = 'INSERT INTO userstate (id, password) VALUES (@id, @password)'
                const result = await queryDatabase(query, {
                    id : id,
                    password : password,
                    
                })

                
                
                res.status(200).json({message:'성공!'});
            }

    
    catch (error) {
        console.error(error);
        res.status(500).json();
    }
});


module.exports = router;
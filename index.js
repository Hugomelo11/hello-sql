// import mysql2 library
const mysql = require('mysql2');

// connect to our database
const db = mysql.createConnection({
    host: '34.170.135.140',
    user: 'root',
    password: 'BuildingSoFLo',
    database: 'swecc-summer-2022'
});

// run a simple query
db.query('SELECT * FROM Books_hs', (err, results) => {
    if(err) {
        console.log(err);
    }
    // output the results
    console.log(results);
    db.end();
})



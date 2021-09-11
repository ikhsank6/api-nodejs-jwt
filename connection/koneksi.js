require('dotenv/config');
var mysql = require('mysql');

const {
  DB_HOST,
  DB_USERNAME,
  DB_PASSWORD,
  DB_DATABASE
} = process.env;

var conn = mysql.createConnection({
    host: DB_HOST,
    user: DB_USERNAME,
    password: DB_PASSWORD,
    database: DB_DATABASE
  });
  
conn.connect((err)=>{
    if(err) throw err;
    //console.log('Mysql terkoneksi');
});
  
module.exports = conn;
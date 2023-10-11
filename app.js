const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const bodyParser = require('body-parser');
const app = express(); //app을 express로 실행

require('dotenv').config();
app.use(cors());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json()); //req.body가 객체로 인식

const { DB_HOST, DB_USER, DB_PASSWORD } = process.env;

const connection = mysql.createConnection({
  host: DB_HOST,
  user: DB_USER,
  password: DB_PASSWORD,
});//확인2

connection.connect(function (err) {
  if (err) {
    console.error('DB connection fail:' + err.stack);
    return;
  }
  console.log('Mysql connected');
});

app.listen(process.env.PORT || 5000, () => {
  console.log('server on');
});

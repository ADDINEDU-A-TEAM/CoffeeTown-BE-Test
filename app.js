const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const app = express(); //app을 express로 실행

require('dotenv').config();
app.use(cors());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json()); //req.body가 객체로 인식

app.listen(process.env.PORT || 5000, () => {
  console.log('server on');
});

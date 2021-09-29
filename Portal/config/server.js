var express = require('express');
var consign = require('consign');
var expressValidator = require('express-validator');

var app = express();
app.set('view engine', 'ejs');
app.set('views', './app/views');

app.use(express.urlencoded({ extended: true })); //get data to forms
app.use(expressValidator());

consign()
    .include('app/routes') //include routes automatic
    .then('config/dbConnection.js')
    .then('app/models')//include all models
    .into(app);

module.exports = app;
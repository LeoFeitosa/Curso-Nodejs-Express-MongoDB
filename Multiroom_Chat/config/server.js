var express = require('express');
var consign = require('consign');
var expressValidator = require('express-validator');

/*inicia o express*/
var app = express();

/*seta as variaveis view engine e views do express*/
app.set('view engine', 'ejs');
app.set('views', './app/views');

app.use(express.static('./app/public'));
app.use(express.urlencoded({ extended: true })); //get data to forms

/*middleware express validator*/
app.use(expressValidator());

/*autoloads*/
consign()
    .include('app/routes') //include routes automatic
    .then('app/models')//include all models
    .then('app/controllers')//include all controllers
    .into(app);

module.exports = app;
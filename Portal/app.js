var express = require('express');
var app = express();
app.set('view engine', 'ejs');

app.get('/', function (req, res) {
    res.send("<html><body>Portal</body></html>");
});

app.get('/tecnology', function (req, res) {
    res.render("section/tecnology");
}); 

app.get('/games', function (req, res) {
    res.send("<html><body>Portal de games</body></html>");
});

app.get('/news', function (req, res) {
    res.send("<html><body>Portal de noticias</body></html>");
});

app.listen(3000, function () {
    console.log("express ok");
});
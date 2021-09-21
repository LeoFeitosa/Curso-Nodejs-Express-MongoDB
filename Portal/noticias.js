var http = require('http');

var server = http.createServer(
    function (req, res) {
        var category = req.url;
        if (category == "/tecnology") {
            res.end("<html><body>Portal de tecnologia</body></html>");
        }
        else if (category == "/games") {

            res.end("<html><body>Portal de games</body></html>");
        }
        else if (category == "/news") {
            res.end("<html><body>Portal de notícias</body></html>");
        }
        else {
            res.end("<html><body>Portal</body></html>");
        }
    });

server.listen(3000);
var http = require('http');
var app = http.createServer(function(req, res){
    var answer = "";
    answer += "Request URL: " + req.url + "\n";
    answer += "Request type: " + req.method + "\n";
    answer += "Request header: " + JSON.stringify(req.headers) + "\n";

    res.writeHead(200, {"Content-type": "text/plain"});
    res.end(answer);
})

app.listen(1337, "localhost");
console.log("Server running at http://localhost:1337");

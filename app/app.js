var express = require('express');
var http = require('http');
var app = express();

app.set("views", __dirname + "/views");
app.set("view engine", "jade");

app.all("*", function(req, res, next){
    // res.setHeader(404, {"Content-Type": "text/plain"});
    next();
})
app.get("/", function(req, res){
    res.render("index", {message: "I love movie."});
})
app.get("/about", function(req, res){
    res.end("Welcome to the about page.")
})
app.get("*", function(req, res){
    res.end("404!")
})

http.createServer(app).listen(3000);
console.log("Server running at http://localhost:3000")



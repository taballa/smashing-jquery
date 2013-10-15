// Generated by CoffeeScript 1.6.3
(function() {
  var app, express, http;

  express = require('express');

  http = require('http');

  app = express();

  app.set('views', __dirname + '/views');

  app.set('views engine', 'jade');

  app.all('*', function(req, res, next) {
    return next();
  });

  app.get('/', function(req, res) {
    return res.render('index', {
      message: 'I love movie.'
    });
  });

  app.get('/about', function(req, res) {
    return res.end('Welcome to the about page.');
  });

  app.get('*', function(req, res) {
    return res.end('404!');
  });

  http.createServer(app).listen(3000);

  console.log('Server running at http://localhost:3000');

}).call(this);
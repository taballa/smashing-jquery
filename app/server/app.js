(function() {
  var app, express, http, swig;

  express = require('express');

  app = express();

  http = require('http');

  swig = require('swig');

  app.engine('html', swig.renderFile);

  app.set('views', __dirname + '/views');

  app.set('view engine', 'html');

  app.set('view cache', false);

  app.all('*', function(req, res, next) {
    return next();
  });

  app.get('/', function(req, res) {
    return res.render('index', {
      message: 'I love dog.'
    });
  });

  app.get('/about', function(req, res) {
    return res.end('Welcome to the about page.');
  });

  app.get('/server', function(req, res) {
    return res.render('server');
  });

  app.get('*', function(req, res) {
    return res.end('404!');
  });

  http.createServer(app).listen(3000);

  console.log('Server running at http://localhost:3000');

}).call(this);

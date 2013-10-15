express = require 'express'
http = require 'http'
app = express()

app.set('views', __dirname + '/views')
app.set('views engine', 'jade')

app.all '*', (req, res, next)->
    # res.setHeader(404, {'Content-Type': 'text/plain'})
    next()

app.get('/', (req, res)->
    res.render('index', {message: 'I love movie.'})
    )
app.get('/about', (req, res)->
    res.end 'Welcome to the about page.'
    )
app.get '*', (req, res)->
    res.end '404!'

http.createServer(app).listen 3000
console.log 'Server running at http://localhost:3000'

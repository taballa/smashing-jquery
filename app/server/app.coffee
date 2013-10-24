express = require 'express'
app = express()
http = require 'http'
swig = require 'swig'


app.engine('html', swig.renderFile)
app.set('views', __dirname + '/views')
# app.set('view engine', 'jade')
app.set('view engine', 'html')
app.set('view cache', false)


app.all '*', (req, res, next)->
    # res.setHeader(404, {'Content-Type': 'text/plain'})
    next()

app.get('/', (req, res)->
    res.render('index', {message: 'I love dog.'})
    )
app.get('/about', (req, res)->
    res.end 'Welcome to the about page.'
    )
app.get('/server', (req, res)->
    res.render('server')
    )
app.get '*', (req, res)->
    res.end '404!'

http.createServer(app).listen 3000
console.log 'Server running at http://localhost:3000'

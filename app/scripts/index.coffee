define (require)->
    $ = require('jquery')
    numShows = 10
    numTickets = 100
    i = 0
    while i < numTickets
        numTotal = i + 1
        $('.container').append "<p>There are " + numTotal + " tickets available</p>"
        i++

# test the alias
    wow = require('jquery')
    wow('.container').before('<h3>wow</h3>')
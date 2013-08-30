define (require)->
    $ = require('jquery')
    numShows = 10
    numTickets = 100
    i = 0
    while i < numTickets
        numTotal = i + 1
        $('.container').append "<p>There are " + numTotal + " tickets available</p>"
        i++

# test the alias to jquery
    wow = require('jquery')
    wow('.container').before('<h3>wow of before</h3>').prepend('<h3>wow of prepend</h3>').css('border': '1px solid #F81F60', 'width': '680px', 'margin': '0 auto')

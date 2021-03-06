define (require)->
    $ = require 'jquery'

    $().ready $('#content').load 'ajax-content.html'

    # error load 404 response
    $().ready $('#error').load 'ajax-error.html', (responseText, textStatus, XMLHttpRequest)->
        if XMLHttpRequest.status is 404 or XMLHttpRequest is 500
            $("#error").html('There has been an error, please try again later.')
        else
            # nothing

    # TODO : test $.ajax
    $ ->
        $.ajax(
            type: 'POST'
            url: 'ajax-content.html'
            ).fail $('#error').html('#error-2 has been an error, please try again later.')
            # Old Way
            # sueccess: ''
            # error: $('#error').html('#error-2 has been an error, please try again later.')

    # loading image
    $('#loading').html('<img src="images/loading.gif" alt="loading...">')


require.config
    paths:
        'jquery': 'vendor/jquery/jquery'
        'qTip': 'vendor/qtip2/dist/jquery.qtip'
    shim:
        'qTip': ['jquery']

# copy selected value to #show
require ['jquery'], ($)->
    $('select').on 'change', ->
        $('#show').text $(this).val()

# valuable email address
require ['jquery'], ($)->
    $("#email-form").prepend('<div class="email-error"></div>')
    $('#email-submit').on 'click', ->
        emailReg = /^(\w)+(\.\w+)*@(\w)+((\.\w{2,3}){1,3})$/
        email = $("#email").val()
        if email is ''
            $(".email-error").text('You forgot to enter an email address.')
        else if !emailReg.test(email)
            $(".email-error").text('Your email: "' + email + '" is wrong! Please enter a valid email addreess.')
        else 
            $('#email-form').html('<div class="sucess">Thank you, you have been subscribed.</div>')
        return false


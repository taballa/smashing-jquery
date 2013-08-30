define ['jquery'], ($)->
    $('#navigation li').hover (->
        $(this).find('.subnav').slideDown()
        $(this).find('a').addClass('active')
    ), ->
        $(this).find('.subnav').slideUp()
        $(this).find('a').removeClass('active')


define ['jquery'], ($) ->
    $ ->
        $('.accordion-content').not(':first').hide()
        $('.accordion-content:first').show()
        $('.accordion-header:first').addClass('header-active').find('span').addClass('icon-active')
        $('.accordion-header').on 'click', ->
            $('.accordion-content:visible').slideUp('slow').prev().removeClass('header-active')
            $('.icon-active:visible').removeClass('icon-active')
            $(@).addClass('header-active').next().slideDown('slow')
            $(@).find('span').addClass('icon-active')

define ['jquery'], ($) ->
    $('.content:first').show()
    $('#tabs li a:first').addClass('tab-active')
    $('#tabs li a').hover ->
        $(this).animate({left: 20}, 300, ->
            $(this).animate({left: 0}, 50)
        )
    $('#tabs li a').on('click', ->
        linkIndex = $('#tabs li a').index(this)
        $('ul#tabs li a').removeClass 'tab-active'
        $('.content:visible').hide()
        $('.content:eq('+linkIndex+')').show()
        $(this).addClass 'tab-active'
        return false)

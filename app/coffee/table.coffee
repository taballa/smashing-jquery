define ['jquery','qTip', 'tablesorter'], ($)->
    $('table#product tbody tr:even').addClass 'even'

    $('table#product tbody tr').hover ->
        $(this).css('background', 'pink')
    , ->
       $(this).css('background', '')

    # Edit Me
    # $('table#product tbody td').hover ->
    #     $(this).append('<div class="editme"><a href="">Edit Me</a></div>')
    # , ->
    #     $('.editme').remove()
    # qTip 显示提示
    $('table#product tbody tr').qtip
        content:
            '<a href="#">Edit Me</a>'
        show:
            when:
                event: 'mouseenter'
        hide:
            fixed: true
            when:
                event: 'mouseleave'
        position:
            corner:
                target: 'rightMiddle'
                tooltip: 'leftMiddle'
        style:
            tip: true
            name: 'cream'

    # advertisement
    # TODO: 10s 后隐藏广告，广告显示动画效果， 利用 cookie 为第一次访问用户显示
    $('table#product thead tr:first').after('
        <tr>
            <td class="special" colspan="4">Special Offer Today</td>
        </tr>
    ')

    # Table Page Number
    $('table#product').after('<div id="table_nav"></div>')
    rowTotal = $('table#product tbody tr').length
    rowsShown = 2
    numPages = Math.ceil(rowTotal/rowsShown)
    i = 0
    while i < numPages
        pageNum = i+1
        $('#table_nav').append '<a href="#" rel="'+i+'">'+pageNum+'</a>'
        i++
    $('table#product tbody tr').hide()
    $('table#product tbody tr:first').show()
    $('table#product tbody tr').slice(0, rowsShown).show()
    $('#table_nav a:first').addClass('active')
    $('#table_nav a').on('click', ->
        $('#table_nav a').removeClass('active')
        $(this).addClass('active')
        currPage = $(this).attr('rel')
        startItem = currPage * rowsShown
        endItem = startItem + rowsShown
        # $('table#product tbody tr').css('opacity', '0.0').hide().slice(startItem, endItem).css('display', 'table-row').animate({opacity: 1}, 300)
        $('table#product tbody tr').hide().slice(startItem, endItem).show()
    )

    $('table#product').tablesorter
        sortList: [
            [1,0]
        ]

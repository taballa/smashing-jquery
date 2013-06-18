# ie8 与 chrome firefox 都是焦点离开后触发事件
$('#dog-name').on 'change', (event)->
    $('#dog-description').text($(this).val())
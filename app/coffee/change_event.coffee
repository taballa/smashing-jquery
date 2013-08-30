# ie8 与 chrome firefox 都是焦点离开后触发事件
# TODO: 实时复制改变到 textarea.
$('#dog-name').on 'change', (event)->
    $('#dog-description').text($(this).val())
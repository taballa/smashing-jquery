$('#check_all').on 'click', ->
    if this.checked
        $('.check').prop('checked', true)
    else 
        $('.check').prop('checked', false)

$('#name-input').attr('disabled', true).addClass('disable')

var defaultText = 'Search'

$('input').on('focus', function(){
    $(this).addClass('highlight')
    if ($(this).val() == defaultText) {
        $(this).val('').removeClass('default');
    };
}).on('blur', function(){
    $(this).removeClass('highlight')
    if ($(this).val() == '') {
        $(this).val(defaultText).addClass('default');
    }
})

$('input:first').focus();

$('#status').on('keydown', function(event){
    var maxNum = 140;
    var inputText = $(this).val();
    var numChar = inputText.length;
    var charRemain = maxNum - numChar;
    if (numChar <= maxNum){
        $('#counter span').text(charRemain);
    } else if(numChar > maxNum){
        event.preventDefault();
    }
})

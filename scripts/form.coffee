# Form script

$("#name-input").attr("disabled", true).addClass "disable"
defaultText = "Search"
$("input").on("focus", ->
    $(this).addClass "highlight"
    $(this).val("").removeClass "default"  if $(this).val() is defaultText
).on "blur", ->
    $(this).removeClass "highlight"
    $(this).val(defaultText).addClass "default"  if $(this).val() is ""

$("input:first").focus()

maxNum = 140
$("#status").on( "keydown", (event) ->
    inputText = $(this).val()
    numChar = inputText.length
    charRemain = maxNum - numChar
    if numChar <= maxNum
        $("#counter span").text charRemain
    else event.preventDefault()  if numChar > maxNum
).on "keyup", (event) ->
    inputText = $(this).val()
    numChar = inputText.length
    charRemain = maxNum - numChar
    if numChar <= maxNum
        $("#counter span").text charRemain
    else event.preventDefault()  if numChar > maxNum

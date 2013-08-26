# NOTE: 完全不理解，为什么要这样定义？ 官网还有专门的解释：http://requirejs.org/docs/errors.html#notloaded
define (require) ->
    $ = require 'jquery' # 之前写错了 require ['jquery'] 报错：Error: Module name "tr" has not been loaded yet for context: _
    color = ''
    $('tbody tr').on('mouseover', ->
        color = $(this).css('background-color')
        $(this).css('background': '#ECFBD4')
    ).on 'mouseout', ->
        $(this).css('background': color)


# NOTE: jQuery plugin 另一种定义方法
# require ['jquery'], ($) ->
#     $('tr:even').css('background-color', '#dedede')


# NOTE: Use the class and css contorl the table color
    $('tbody tr:even').addClass('even')
    $('tbody tr:odd').addClass('odd')

# TODO: 数字标题栏浮动

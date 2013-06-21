# NOTE: 完全不理解，为什么要这样定义？ 官网还有专门的解释：http://requirejs.org/docs/errors.html#notloaded
define (require) ->
    $ = require 'jquery' # 之前写错了 require ['jquery'] 报错：Error: Module name "tr" has not been loaded yet for context: _
    $('tr:even').css('background-color', '#dedede')

# define ['jquery'], ($)->
#     $('tr:even').css('background-color', '#dedede')

# require ['jquery'], ($) ->
#     $('tr:even').css('background-color', '#dedede')

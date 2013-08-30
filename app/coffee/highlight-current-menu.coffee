define ['jquery', 'prettify', 'css!vendor/google-code-prettify/styles/sunburst'], ($)->
    prettyPrint()
    path = location.pathname
    pathArray = path.split('/')
    i = 0
    while i < pathArray.length
       $('#menu a[href*="'+pathArray[i]+'"]').addClass('selected')
       i++

# qTip example
require ['jquery', 'qTip'], ($) ->
    $('#email-input').qtip 
        show:
            when: 
                event: 'focus'
        hide:
            when:
                event: 'blur'
        position:
            corner:
                target: 'bottomRight'
        style:
            color: 'black'
            tip: true
            name: 'blue'
            border: 
                radius: 5
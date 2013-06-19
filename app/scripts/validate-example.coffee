require ['jquery', 'validate'], ($) ->
    $('#form-example').validate()
    $('#form-example-2').validate
        rules:
            name: "required"
            phone:
                required: true
                digits: true
            email:
                required: true
                email: true
            message:
                required: true
        messages:
            name: "内容不能为空！"
            email:
                required: "内容不能为空！"
                email: "地址无效，请检查"
            phone: "只能使用数字"
            message: "内容不能为空！"

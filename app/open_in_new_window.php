<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>Open in new window</title>
    <link rel="stylesheet" href="stylesheets/screen.css">
</head>
<body>
    <h3>Open in new window</h3>
    <a href="index.html">index.html</a>
    <a href="http://yahoo.com">Yahoo</a>
    <a href="http://google.com">Google</a>
    <a href="http://bing.com">Bing</a>

    <script src="scripts/vendor/requirejs/require.js"></script>
    <script>
        require(['scripts/common'], function(){
            require(['jquery'], function($){
                $('a').attr('target', '_blank');
            })
        })
    </script>
</body>
</html>
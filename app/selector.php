<?php 
$example_code = '
<code>
    <div class="content">
        <p>This is my content</p>
    </div>
    <div class="alternate">
        <em>This is alternate content</em>
    </div>
</code>';

$example_special_chars = htmlspecialchars($example_code);
$action = "$('.content:has(p)').css('color', '#E6404D');"
?>

<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>jQuery Selector</title>
    <link rel="stylesheet" href="stylesheets/screen.css">
    <link rel="stylesheet" href="scripts/vendor/google-code-prettify/src/prettify.css">
    <script src="scripts/vendor/google-code-prettify/src/prettify.js"></script>
</head>
<body>
    <div>
        <h3>选择包含特定TAG的元素</h3>
        <div class="example_code">
            <h4>CODE:</h4>
            <pre><?php echo "$example_special_chars"; ?></pre>
            <h4>EXAMPLE:</h4>
            <?php echo "$example_code"; ?>
            <h4>ACTION:</h4>
            <p>选择包含p标签的.content元素</p>
            <p class='action'><?php echo "$action"; ?></p>
        </div>
    </div>


    <script src="./scripts/vendor/jquery/jquery.js"></script>
    <script>
        $(prettyPrint());
        <?php echo "$action"; ?>
    </script>
</body>
</html>
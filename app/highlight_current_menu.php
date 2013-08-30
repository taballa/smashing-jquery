<?php
$script = "
prettyPrint();
var path = location.pathname;
pathArray = path.split('/');
for (var i = 0; i < pathArray.length; i++) {
    $(\"#menu a[href*='\"+pathArray[i]+\"']\").addClass('selected');
};
";

 ?>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>Highlight current menu</title>
    <?php require "header.php" ?>
    <style>
        .selected {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <h3>Highlight current menu</h3>
    <ul id="menu">
        <li><a href="menu/01.html">menu01</a></li>
        <li><a href="menu/02.html">menu02</a></li>
        <li><a href="menu/03.html">menu03</a></li>
        <li><a href="highlight_current_menu.php">highlight current menu</a></li>
        <li><a href="menu/05.html">menu05</a></li>
        <li><a href="menu/06.html">menu06</a></li>
        <li><a href="menu/07.html">menu07</a></li>
        <li><a href="menu/08.html">menu08</a></li>
    </ul>
    <ul id="nav">
        <li><a href="menu/01.html">menu01</a></li>
        <li><a href="menu/02.html">menu02</a></li>
        <li><a href="menu/03.html">menu03</a></li>
        <li><a href="highlight_current_menu.php">highlight current menu</a></li>
        <li><a href="menu/05.html">menu05</a></li>
        <li><a href="menu/06.html">menu06</a></li>
        <li><a href="menu/07.html">menu07</a></li>
        <li><a href="menu/08.html">menu08</a></li>
    </ul>
    <h4>CODE:</h4>
    <pre class="prettyprint lang-js"><?php echo "$script"; ?></pre>

    <?php require "footer.php" ?>
</body>
</html>

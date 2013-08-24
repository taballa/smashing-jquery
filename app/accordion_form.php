<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>Accordion Form</title>
    <link rel="stylesheet" href="stylesheets/screen.css">
</head>
<body>
    <h1>Accordion Form</h1>
    <div id="accordion">
        <div class="accordion-header">
            <h3>Books</h3>
            <span></span>
        </div>
        <ul class="accordion-content">
            <li>
                <a href="#">Business</a>
                <a href="#">Education</a>
                <a href="#">Tech</a>
                <a href="#">Romance</a>
            </li>
        </ul>
        <div class="accordion-header">
            <h3>Electronics</h3>
            <span></span>
        </div>
        <ul class="accordion-content">
            <li href="#">Audio</li>
            <li href="#">Video</li>
            <li href="#">Automobile</li>
            <li href="#">Appliances</li>
        </ul>
        <div class="accordion-header">
            <h3>Sporting Goods</h3>
            <span></span>
        </div>
        <ul class="accordion-content">
            <li href="#">Baseball</li>
            <li href="#">Basketball</li>
            <li href="#">Football</li>
            <li href="#">Tennis</li>
        </ul>
    </div>
    <?php require 'footer.php' ?>
</body>
</html>

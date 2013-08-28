<!doctype html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <title>Table Page</title>
    <?php require "header.php" ?>
</head>

<body>
    <h1>Table Page</h1>
    <table id="product" class="blue-theme">
        <thead>
            <tr>
                <th>Category</th>
                <th>Product</th>
                <th>Price</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Clothing</td>
                <td>North Face Jacket</td>
                <td>$189.99</td>
                <td>In-stock</td>
            </tr>
            <tr>
                <td>Shoes</td>
                <td>Nike</td>
                <td>$59.99</td>
                <td>In-stock</td>
            </tr>
            <tr>
                <td>Electronics</td>
                <td>LED TV</td>
                <td>$589.99</td>
                <td>Out of stock</td>
            </tr>
            <tr>
                <td>Sporting Goods</td>
                <td>Ping Golf Clubs</td>
                <td>$159.99</td>
                <td>In-stock</td>
            </tr>
            <tr>
                <td>Clothing</td>
                <td>Sweater</td>
                <td>$19.99</td>
                <td>In-stock</td>
            </tr>
        </tbody>
    </table>
    <?php require "footer.php" ?>
</body>

</html>

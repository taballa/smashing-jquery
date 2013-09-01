<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>jQuery filter</title>
    <?php require "header.php" ?>
</head>
<body>
    <div id="container">
        <table  class="overview blue-theme" id="company-x">
            <caption>Company X webhosting products overview</caption>
            <thead>
                <tr>
                    <td></td>
                    <th>table head</th>
                    <th>table head</th>
                    <th>table head</th>
                    <th>table head</th>
                    <th>table head</th>
                    <th>table head</th>
                    <th>table head</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td></td>
                    <th>table foot</th>
                    <th>table foot</th>
                    <th>table foot</th>
                    <th>table foot</th>
                    <th>table foot</th>
                    <th>table foot</th>
                    <th>table foot</th>
                </tr>
            </tfoot>
            <tbody>
                <!-- TODO: Use the PHP output cell again and again -->
                <?php
                for ($i=0; $i<15; $i++)
                {
                    echo "
                        <tr>
                            <th>table body head</th>
                            <td>$i</td>
                            <td>$i</td>
                            <td>$i</td>
                            <td>$i</td>
                            <td>$i</td>
                            <td>$i</td>
                            <td>$i</td>
                        </tr>
                    ";
                }
                ?>
            </tbody>
        </table>
    </div>
    <?php require "footer.php" ?>
</body>
</html>

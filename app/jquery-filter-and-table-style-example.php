<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>jQuery filter</title>
    <link rel="stylesheet" href="stylesheets/screen.css">
    <!--[if IE]>
        <link href="/stylesheets/ie.css" media="screen, projection" rel="stylesheet" type="text/css" />
    <![endif]-->
    <link href="/stylesheets/print.css" media="print" rel="stylesheet" type="text/css" />
</head>
<body>
    <h3>livereload test 219</h3>
    <div id="container">
        <table  class="overview">
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
    <script src="scripts/vendor/requirejs/require.js"></script>
    <script>
    require(['scripts/common'], function(){
        require(['filter'])
    })
    </script>
</body>
</html>
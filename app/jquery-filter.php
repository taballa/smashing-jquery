<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>jQuery filter</title>
    <link rel="stylesheet" href="stylesheets/screen.css">
</head>
<body>
    <h3>test livereload 207</h3>
    <div id="container">
        <table  class="overview scheme-2">
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
                <tr>
                    <th>table body</th>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                </tr>
                <tr>
                    <th>table body</th>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                </tr>
                <tr>
                    <th>table body</th>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                    <td>1234</td>
                </tr>
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

require.config
    baseUrl: 'scripts'
    paths:
      'jquery': 'vendor/jquery/jquery'
      'qTip': 'vendor/qTip/jquery.qtip'
      'qTip2': 'vendor/qtip2/dist/jquery.qtip'
      'jquery-migrate': 'vendor/jquery-migrate/jquery-migrate'
      'validate': 'vendor/jquery-validation/jquery.validate'
      'prettify': 'vendor/google-code-prettify/src/prettify'
      'modernizr': 'vendor/modernizr/modernizr'
      'tablesorter': 'vendor/jquery.tablesorter/js/jquery.tablesorter'
    shim:
      'qTip': ['jquery', 'jquery-migrate']
      'qTip2': ['jquery', 'jquery-migrate']
      'validate': ['jquery']
      'prettify': ['css!vendor/google-code-prettify/styles/sunburst']
      'tablesorter': ['jquery']
    map:
      '*': {
        'css': 'vendor/require-css/css'
      }

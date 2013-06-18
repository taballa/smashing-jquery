require.config 
    baseUrl: 'scripts'
    paths:
        'jquery': 'vendor/jquery/jquery'
        'qTip': 'vendor/qTip/jquery.qtip'
        'qTip2': 'vendor/qtip2/dist/jquery.qtip'
        'jquery-migrate': 'vendor/jquery-migrate/jquery-migrate'
    shim:
      'qTip': ['jquery', 'jquery-migrate']
      'qTip2': ['jquery', 'jquery-migrate']

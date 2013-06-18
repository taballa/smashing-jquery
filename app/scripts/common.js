require.config({
    baseUrl: 'scripts',
    paths: {
      'jquery': 'vendor/jquery/jquery',
      'qTip': 'vendor/qtip2/dist/jquery.qtip'
    },
    shim: {
      'qTip': ['jquery']
    }
})
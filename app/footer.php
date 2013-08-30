<!-- build:js scripts/require.js -->
<script src="scripts/vendor/requirejs/require.js"></script>
<!-- endbuild -->

<!-- build:js scripts/app.js -->
<script>
    require(['scripts/config'], function(){
        require(['app']);
    })
</script>
<!-- endbuild -->

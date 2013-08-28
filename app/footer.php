<!-- build:js scripts/require.js -->
<script src="scripts/vendor/requirejs/require.js"></script>
<!-- endbuild -->

<!-- build:js scripts/optimized.js -->
<script>
    require(['scripts/common'], function(){
        require(['app']);
    })
</script>
<!-- endbuild -->

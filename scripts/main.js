require.config({
    paths:{
        "jquery": "../components/jquery/jquery"
    }
});

require(['jquery'], function($){
    $('select').on('change', function(){
        $('#show').text($(this).val());
    })
})

// Generated by CoffeeScript 1.6.2
(function() {
  $('#check_all').on('click', function() {
    if (this.checked) {
      return $('.check').prop('checked', true);
    } else {
      return $('.check').prop('checked', false);
    }
  });

}).call(this);
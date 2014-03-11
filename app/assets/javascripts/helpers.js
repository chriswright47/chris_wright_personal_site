var refreshQuote = function() {
  // makes an ajax request to server for a new quote partial
  $.get('/quotes/rand_quote', function(data) {
      $('.quote').fadeOut(500, function() {
        $(this).html(data).fadeIn(500)
      });
    });
}

var buttonFor = function(content) {
  // genereates html button with given content
  return '<a class="btn btn-small href="#" role="button">' + content + '</a>';
}
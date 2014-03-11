// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$(function() {
  refreshQuote();

  setInterval(function() {
    refreshQuote();
  },
  7000);

  $('.details_button').on('click', function(event) {
    event.preventDefault();
    var categoryContent = $(this).next('.hidden_content');
    categoryContent.toggle();
    if (/more/.test($(this).text())) {
      $(this).html(buttonFor('less &laquo;'));
    }
    else {
      $(this).html(buttonFor('more &raquo;'));
    }
  });
});

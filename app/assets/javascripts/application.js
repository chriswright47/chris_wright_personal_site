// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$(function() {
  $('.hidden_content').hide();

  setInterval(function() {
    $.get('/quotes/rand_quote', function(data) {
      $('.quote').html(data)
    });
    console.log('reloaded quote');
  }, 2000);

  $('.details_button').on('click', function(event) {
    event.preventDefault();
    var categoryContent = $(this).next('.hidden_content');
    categoryContent.toggle();
    if ($(this).text()[0] === 'm'){
      $(this).html('<a class="btn btn-small href="#" role="button">less &laquo;</a>');}
    else {$(this).html('<a class="btn btn-small" href="#" role="button">more &raquo;</a>');}
  });
});
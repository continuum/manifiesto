$(document).ready(function() {

  var grid = new hashgrid({
    numberOfGrids: 1
  });


  $('#open_nav').click(function() {
    $('body').toggleClass('open');
  });


});
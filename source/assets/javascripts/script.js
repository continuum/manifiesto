$(document).ready(function() {

  var grid = new hashgrid({
    numberOfGrids: 1
  });


  $('#open_nav').click(function() {
    $('body').toggleClass('open');
  });

  $('#share').
    attr('href',
         'https://twitter.com/share?url=' + encodeURIComponent(location.href) +
         '&text=Únete al ' + encodeURIComponent(document.title) + ' en: ').
    attr('target', '_blank').
    click(function() {
      ga('send', 'share', 'button', 'click', 'twitter', 1);
    });
});

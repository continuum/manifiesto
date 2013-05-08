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
      ga('send', 'event', 'share', 'button', 'click', 'twitter', 1);
    });


    $('#gridview a').click(function() {
      var company_name = $(this).find('span').text(),
          event_name   = (company_name != 'Únete') ? "company": "join";

      ga('send', 'event', event_name, 'click', company_name, 1);
    });

});

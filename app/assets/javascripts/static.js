$(document).on('turbolinks:load', function() {

    $('#lang-arrow').click(function() {
        $('.fr').toggleClass('fr-dis');
        $('#eng').html('fr')
      });

    });
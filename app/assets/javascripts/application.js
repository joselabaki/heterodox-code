// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require_self
//= require_tree .

$( document ).on('turbolinks:load', function() {
    window.onload = $(function(){
        var current = window.location.pathname + window.location.search + window.location.hash;
        $('.nav-items a').each(function(){
            var $this = $(this);
            // if the current path is like this link, make it active
            if($this.attr('href').indexOf(current) !== -1){
                $this.addClass('active');
            }


  if (location.pathname == "/en" || location.pathname == "/fr" || location.pathname == "/"  ){
    $('.nav-items a').each(function(){
        var $this = $(this);
        $this.removeClass('active');
})
  };


  var currentURL = (document.URL);
  var part = currentURL.split("/")[5];

  if (part){$(".projects a").addClass('active');}
})
    })

  $('.hamburger').click(function(){
  $(this).addClass("hidden")
  $(".closing").removeClass("hidden")
  $(".nav-items").slideDown("slow")
  });

  $('.closing').click(function(){
  $(this).addClass("hidden")
  $(".hamburger").removeClass("hidden")
  $(".nav-items").slideUp("slow")

  });



  if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
    $('#big-left').removeClass("active")
    $('.bigger').removeClass("active")
  }




  });

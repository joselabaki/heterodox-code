document.addEventListener("turbolinks:load", function() {
$("#heterodox-logo").mouseenter(function(){
$(".subtitle").removeClass("hidden")
});

$("#heterodox-logo").mouseleave(function(){
    $(".subtitle").addClass("hidden")
    });

$(".center").mouseenter(function(){
$(".centre-texte").removeClass("hidden")
});

$(".center").mouseleave(function(){
    $(".centre-texte").addClass("hidden")
    });





});

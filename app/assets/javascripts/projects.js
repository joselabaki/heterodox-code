document.addEventListener("turbolinks:load", function() {
$("#heterodox-logo").mouseenter(function(){
$(".subtitle").removeClass("hidden")
});
    
$("#heterodox-logo").mouseleave(function(){
    $(".subtitle").addClass("hidden")
    });
            
$(".centre").mouseenter(function(){
$(".centre-texte").css("display", "block")
});

$(".centre").mouseleave(function(){
    $(".centre-texte").css("display", "none")
    });







});
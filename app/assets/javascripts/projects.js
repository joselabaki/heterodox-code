document.addEventListener("turbolinks:load", function() {
$("#heterodox-logo").mouseenter(function(){
$(".subtitle").removeClass("hidden")
});
    
$("#heterodox-logo").mouseleave(function(){
    $(".subtitle").addClass("hidden")
    });
            









});
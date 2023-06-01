$(document).ready(function(){

    $(".header_icon-bar").click(function(e){

        $(".header_menu").toggleClass('is-open');
        e.preventDefault();

    });
});
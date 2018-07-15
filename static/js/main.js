$(document).ready(function() {
    $(".newSlider2").owlCarousel({
        items:1,
        dots:false,
        nav:true,
        autoplay:true,
        autoplayspeed:1000,
        loop:true,
        autoplaytimeout: 1000,
        autoplayHoverPause: false
         });

    $(".newSlider").owlCarousel({
        items:4,
        dots:false,
        nav: true,
        autoplay:false,
        autoplayspeed:1000,
        loop:true,
        autoplaytimeout: 5000,
        autoplayHoverPause: false,
        responsive : {
        // breakpoint from 0 up
        0 : {
                items:1,
        },
        // breakpoint from 480 up
        480 : {
            items:1,
        },
        // breakpoint from 768 up
        768 : {
            items:2,
            autoplay:true, 
            
        },
            976 : {
            items:4,
            }
    }
});

    $('.xzoom, .xzoom-gallery').xzoom({zoomWidth: 400, title: true, tint: '#333', Xoffset: 15});


$('.mobileMenu').click(function(){
     var  mobilMenu = $('.topMenu').toggleClass('is-active');
});


$('.closeMenu').click(function(){
    $('.topMenu').removeClass('is-active');

});
// $('.lang').click(function(){
//     var $lang = $('.lang li').toggleClass('active');

// });

$('.lang li').click(function(){

    $('.lang li').toggleClass('active');
    $(this).addClass('active');
});

});
(function ($) {
	"use strict";
    jQuery(document).ready(function($){
        
    // for pricing switch
    var switch_click = $('.switch-label');
    switch_click.on('click', function () {
    	$('.pricig-area').toggleClass('active_t');
    });

    /*====  responsive menu active =====*/
        if ($.fn.slicknav) {
            $('.mainmenu-area ul, .home2_menu_right ul').slicknav({
                prependTo: ".responsive_menu",
                label: ""
            })
        }

        /*====  testimonial slide =====*/
        if ($.fn.owlCarousel) {
            $('.testimonial_slide').owlCarousel({
                items: 3,
                loop: true,
                nav: false,
                autoplay: false,
                dots: true,
                margin: 45,
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    480: {
                        items: 2,
                        margin: 20
                    },
                    768: {
                        items: 2,
                    },
                    992: {
                        items: 3
                    }
                }
            });
        }

        /*====  magnific popup js active =====*/
        if ($.fn.magnificPopup) {
            $('.blog_img').magnificPopup({
                type: 'image',
                mainClass: 'mfp-with-zoom',
                zoom: {
                    enabled: true,
                    duration: 300,
                    easing: 'ease-in-out'
                },
                gallery: {
                    enabled: true
                }
            });
        }
      });
  
    /*====  Window Load Function =====*/
    jQuery(window).on('load', function(){
    /*====  animation js =====*/
        new WOW().init();
        /*====  preloader js =====*/
    $('#loader-wrapper').delay(500).fadeOut('slow', function() { $(this).remove(); });

    });
    
}(jQuery));	
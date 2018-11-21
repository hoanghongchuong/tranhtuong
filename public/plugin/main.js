/*-----------------------------------------------------------------------------------
 Theme Name: LEE
 Author: LEE
 Author URI: http://
 Version: 1.0.0
 Description: A Beautiful, Professional and Multipurpose Theme Made by LEE
 -----------------------------------------------------------------------------------*/

/* ----------------------------------------------------------------
 [Table of contents]
        - MobileMenu
        - PreLoader
        - AnimationScrollPage
        - CountTo
        - ParallaxBackground
        - Slider
        - InputFile
        - MegaMenu
        - ScrollToTop
        - LightBox
        - CustomTheme
        - PriceRange
        - CalcQuantity
        - Ads
        - ImageZoom

 ------------------------------------------------------------------*/

'use strict';


//action
$(window).on('load', function () {
    // MasonryItem.init();
});

$(document).ready(function () {



    MobileMenu.init();
    // PreLoader.init();
    // AnimationScrollPage.init();
    // CountTo.init();
    // ParallaxBackground.init();
    Slider.init();
    // InputFile.init();
    ScrollToTop.init();
    CustomTheme.init();
    PriceRange.init();
    CalcQuantity.init();
    // ImageZoom.init();
    // Cart.init();
    StickyScroll.init();
    // ToolTip.init();

    // LightBox.init();
    // TruncateLine.init();


});


// sticky scroll
var TruncateLine = function () {
    var _initInstances = function () {
        var el = $('[data-truncate-lines]');
        el.each(function () {
            var lines = $(this).data('truncate-lines');
            $(this).truncate({
                lines: lines
            });
        })

    };

    return {
        init: function () {
            _initInstances();
        },
        responsive: function(){
            _initInstances();
        }


    };
}();

// sticky scroll
var LightBox = function () {
    var _initInstances = function () {

        lightbox.option({
            'resizeDuration': 200,
            'wrapAround': true
        })

    };

    return {
        init: function () {
            _initInstances();
        }

    };
}();

// sticky scroll
var ToolTip = function () {

    var _initInstances = function () {

        $('[data-toggle="tooltip"]').tooltip({})

    };

    return {
        init: function () {
            _initInstances();
        }

    };
}();

// sticky scroll
var StickyScroll = function () {

    var _initInstances = function () {

        var obj = $('[data-layout="sticky"]');
        var shrinkHeader = 300;

        obj.stickOnScroll({
            topOffset: 0,
            bottomOffset: 5,
            footerElement: null,
            viewport: window,
            stickClass: 'stickOnScroll-on',
            setParentOnStick: false,
            setWidthOnStick: false,
            onStick: null,
            onUnStick: null
        });


        // obj.next().css({
        //     'position':'relative',
        //     'top': obj.outerHeight(true) + 'px',
        // });


        $(window).scroll(function () {
            var scroll = getCurrentScroll();
            if (scroll >= shrinkHeader) {
                obj.addClass('_shrink');
            }
            else {
                obj.removeClass('_shrink');
            }
        });

        var getCurrentScroll = function () {
            return window.pageYOffset || document.documentElement.scrollTop;
        }

    };

    return {
        init: function () {
            _initInstances();
        }

    };
}();

// Cart
var Cart = function () {
    var _initInstances = function () {
        var step1 = $('#step1');
        var step2 = $('#step2');
        var step3 = $('#step3');

        step2.addClass('unavailable');
        step3.addClass('unavailable');


        // $('#needs-validation ').find(':input').each(function () {
        step1.find(':input').each(function () {
            var attr = $(this).attr('required')

            if (typeof attr !== typeof undefined && attr !== false) {
                $(this).addClass('unvalidated');


            }
        });


        // $('#needs-validation :input').on('change keyup paste click', function (e) {
        step1.find(":input").on('change keyup paste click', function (e) {

            var attr = $(this).attr('required');
            var value = $(this).val();


            if (typeof attr === typeof undefined) {
                $(this).removeClass('unvalidated');
            }


            if (typeof attr !== typeof undefined && attr !== false) {

                $(this).addClass('was-validated');

                if (value !== '') {
                    $(this).removeClass('unvalidated');
                }
                else {
                    $(this).addClass('unvalidated');
                }

            }

            else {
                $(this).addClass('was-validated');
                $(this).removeClass('unvalidated');
            }


            if (checkValidated() === true) {
                step2.addClass('available');
                step2.removeClass('unavailable')
            }
            else {
                step2.addClass('unavailable');
                step2.removeClass('available')
            }


            //step3
            var validateStep2 = step2.hasClass('available');
            if (checkValidated() && validateStep2) {
                step3.addClass('available');
                step3.removeClass('unavailable')
            }
            else {
                step3.addClass('unavailable');
                step3.removeClass('available')
            }


        });

        var checkValidated = function () {
            var check = true;
            step1.find(':input[required]').each(function () {

                if ($(this).hasClass('unvalidated') === true) {
                    check = false;
                    return check;
                }
            });
            return check;

        };
    };

    return {
        init: function () {
            _initInstances();
        }
    };
}();


//Image Zoom
var ImageZoom = function () {
    var _initInstances = function () {
        var imageZoom = $('#zoom_03');
        imageZoom.elevateZoom({
            // gallery: 'gallery_03',
            // zoomWindowWidth: $("").width(),
            // zoomWindowHeight: $("").height(),
            // zoomWindowPosition: "zome3-container",
            borderSize: 1,
            cursor: 'pointer',
            // galleryActiveClass: 'active',
            // imageCrossfade: true,
            // loadingIcon: 'ajax-loader.gif',
            //
            zoomWindowFadeIn: 500,
            zoomWindowFadeOut: 500,
            lensFadeIn: 500,
            lensFadeOut: 500,
            easing: true,
            scrollZoom: true

            //Inner zoom
            //zoomType: "inner",
            //cursor: "crosshair"

            //Lens zom
            //zoomType: "lens",
            //lensShape: "round",
            //lensSize: 200
        });


        $("#zoom_03")
            .bind("click",
                function (e) {
                    var ez = $('#zoom_03').data('elevateZoom');
                    $.fancybox(ez.getGalleryList());
                    return false;
                });

        $('.slick')
            .slick({
                slidesToShow: 3,
                focusOnSelect: true,
                centerMode: true
            });

        // Click xzoom on slick change
        $('.slick')
            .on('afterChange',
                function (event, slick, currentSlide) {
                    if ($(".slick .slick-slide[data-slick-index=" + currentSlide + "]").attr("data-image") !==
                        $(".mainImage").attr("src"))
                        $(".slick .slick-slide[data-slick-index=" + currentSlide + "]").click();
                });

        setTimeout(function () {
                $(".slick .slick-current").click();
            },
            100);


    };

    return {
        init: function () {
            _initInstances();
        }
    };
}();

// preloader
var PreLoader = function () {
    var _initInstances = function () {
        $('.animsition').animsition({
            // loadingClass: 'loader',
            inDuration: 900,
            outDuration: 500,
            linkElement: 'a:not([target="_blank"]):not([href^="#"]):not([href^="javascript:void(0);"]):not([href^="callto:"]):not([href^="mailto:"])',
        });
    };

    return {
        init: function () {
            _initInstances();
        }
    };
}();

//Mmenu
var MobileMenu = function () {
    var _initInstances = function () {
        var mobileMenu = $("#menu");
        var closeButton = $("#hamburger");

        mobileMenu.mmenu({
            "extensions": [
                // "fx-panels-zoom",
                "pagedim-black",
                // "theme-dark"
            ],
            "offCanvas": {
                // "position": "right"
            },
            // "navbars": [
            //     {
            //         "position": "bottom",
            //         "content": [
            //             "<a class='fa fa-envelope' href='#/'></a>",
            //             "<a class='fa fa-twitter' href='#/'></a>",
            //             "<a class='fa fa-facebook' href='#/'></a>"
            //         ]
            //     }
            // ]
        });

        //close
        var API = mobileMenu.data("mmenu");
        closeButton.click(function () {
            API.close();
        });
    };


    return {
        init: function () {
            _initInstances();
        }
    };
}();

// animation scroll page
var AnimationScrollPage = function () {
    var _initInstances = function () {
        $('.animation').waypoint(function (direction) {
            $(this.element).addClass('animation-active');
        }, {
            offset: '90%',
            triggerOnce: true
        });
    };

    return {
        init: function () {
            _initInstances();
        }
    };
}();

// count to
var CountTo = function () {
    var _initInstances = function () {
        var itemCount = $('.vk-counter .number-count');
        $(itemCount).waypoint({
            handler: function (direction) {
                $(this.element).countTo({
                    from: 0,
                    speed: 2000,
                    refreshInterval: 50,
                    formatter: function (value, options) {
                        return numeral(value).format('0,0');
                    }
                });
            },
            offset: '100%',
            triggerOnce: true,
        });
    };

    return {
        init: function () {
            _initInstances();
        }
    };
}();

// parallax background
var ParallaxBackground = function () {
    var _initInstances = function () {
        $('.vk-parallax').attr('data-stellar-background-ratio', '0.3');
        $.stellar({
            verticalOffset: 0,
            horizontalScrolling: false,
        });
    };

    return {
        init: function () {
            _initInstances();
        }
    };
}();

// slider
var Slider = function () {
    var singleProjectSlider = function () {
        $('.slider-for').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            nextArrow: '<button  class="vk-btn vk-arrow next"><i class="fa fa-chevron-right"></i></button>',
            prevArrow: '<button  class="vk-btn vk-arrow prev"><i class="fa fa-chevron-left"></i></button>',
            fade: true,
            arrows:false,
            asNavFor: '.slider-nav',
            focusOnSelect: true,
        });

        $('.slider-nav').slick({
            slidesToShow: 5,
            slidesToScroll: 1,
            asNavFor: '.slider-for',
            focusOnSelect: true,
            nextArrow: '<button  class="vk-btn vk-arrow next"><i class="ti-angle-right"></i></button>',
            prevArrow: '<button  class="vk-btn vk-arrow prev"><i class="ti-angle-left"></i></button>',
            swipeToSlide:true,
            // arrows: false,
            responsive: [{

                breakpoint: 992,
                settings: {
                    slidesToShow: 5,
                }

            },
                {

                    breakpoint: 568,
                    settings: {
                        slidesToShow: 4,
                    }

                }]
        });
    };


    var homepageSlider = function () {

        $('[data-slider="home"]').slick({
            focusOnSelect: true,
            nextArrow: '<button  class="vk-btn vk-arrow next"><i class="ti-angle-right"></i></button>',
            prevArrow: '<button  class="vk-btn vk-arrow prev"><i class="ti-angle-left"></i></button>',
            // arrows: false,
            slidesToShow: 1,
            // dots: true,
            dotsClass: 'vk-arrow-dots vk-list vk-list-inline',
            autoplay: true,
            // fade: true,
            responsive: [{
                breakpoint: 768,
                settings: {
                    arrows:false,
                    dots: false
                }

            }]
        })
        $('[data-slider="home-shop"]').slick({
            nextArrow: '<button  class="vk-btn vk-arrow next"><i class="ti-angle-right"></i></button>',
            prevArrow: '<button  class="vk-btn vk-arrow prev"><i class="ti-angle-left"></i></button>',
            slidesToShow: 4,
            autoplay: true,
            swipeToSlide:true,

            responsive: [
                {
                    breakpoint: 992,
                    settings: {
                        slidesToShow: 3,
                        arrows: false
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 2,
                        arrows: false
                    }
                },
                {
                    breakpoint: 567,
                    settings: {
                        slidesToShow: 1,
                        arrows: false

                    }
                }
            ],
        })
    };

    var shopSlider = function () {

        $('[data-slider="relate"]').slick({
            nextArrow: '<button  class="vk-btn vk-arrow next"><i class="ti-angle-right"></i></button>',
            prevArrow: '<button  class="vk-btn vk-arrow prev"><i class="ti-angle-left"></i></button>',
            slidesToShow: 4,
            autoplay: true,
            swipeToSlide:true,

            responsive: [
                {
                    breakpoint: 992,
                    settings: {
                        slidesToShow: 3,
                        arrows: false
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 2,
                        arrows: false
                    }
                },
                {
                    breakpoint: 567,
                    settings: {
                        slidesToShow: 1,
                        arrows: false

                    }
                }
            ],
        })

    };

    var arrowsJustifyAround = function () {

        var obj = $('[data-arrows="justify-around"]');
        var arrowDots = obj.find('.vk-arrow-dots');

        var arrowPrev = obj.find('.vk-arrow.prev');
        var arrowNext = obj.find('.vk-arrow.next');

        var distanceOffset = 5;

        var dotsNavWidth = arrowDots.width();

        var distanceFromBetween = parseFloat(dotsNavWidth / 2) + distanceOffset;


        var currentWidth = $(window).width();

        if (currentWidth > 991) {
            arrowPrev.css('transform', 'translateX(calc(-100% - ' + distanceFromBetween + 'px))');
            arrowNext.css('transform', 'translateX(calc(100% + ' + distanceFromBetween + 'px))');
        }
        return false;

    }

    var _initInstances = function () {

        homepageSlider();
        singleProjectSlider();
        shopSlider();
        arrowsJustifyAround();


    };

    return {
        init: function () {
            _initInstances();
        }
    };
}();

// masonry item
var MasonryItem = function () {
    var masonry = '[data-layout="masonry"]';
    var masonryItem = '[data-layout="masonry-item"]'
    var masonryFix = '[data-layout="masonry-fix"]';

    var buttonFilterDefault = '[data-filter-button="default"]';
    var buttonFilterFix = '[data-filter-button="filter-fix"]';

    var filterFix = function () {

        var delayFilter = function () {
            $(masonryFix).isotope({
                filter: '.first',
            })
        }

        setTimeout(delayFilter, 100);
        $(buttonFilterFix)

            .on('click', 'li', function () {
                var filterValue = $(this).attr('data-filter');
                console.log(filterValue)
                $(masonryFix).isotope({
                    filter: filterValue,
                });

                return false;
            })
            .on('change', function () {

                // get filter value from option value
                var filterValue = this.value;
                $(masonryFix).isotope({
                    filter: filterValue,

                });

                return false;
            });

    }

    var masonryLayout = function () {
        $(masonry).isotope({
            // options...
            itemSelector: masonryItem,
            masonry: {
                columnWidth: masonryItem,
            }
        });

        //filter items on button click
        $(buttonFilterDefault)
            .on('click', 'li', function () {
                var filterValue = $(this).attr('data-filter');
                console.log(filterValue);
                $(masonry).isotope({
                    filter: filterValue,

                });

                return false;
            })
            .on('change', function () {
                // get filter value from option value
                var filterValue = this.value;
                // console.log(filterValue);
                $(masonry).isotope({
                    filter: filterValue,

                });

                return false;
            });
    };

    var _initInstances = function () {
        masonryLayout();
        filterFix();

    };

    return {
        init: function () {
            _initInstances();
        },

        responsive: function () {

        }
    };
}();


// google maps

if ($('[data-map="true"]').length) {
    var script = document.createElement('script');
    script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyC2Gs0Rw7L416l5ghD0zrUWf8FGibwT7Ds&callback=initMap";
    document.getElementsByTagName('head')[0].appendChild(script);

    var initMap = function () {
        var myLatLng = {lat: 38.5397102, lng: -93.6881803};
        // Create a map object and specify the DOM element for display.
        var map = new google.maps.Map(document.getElementById('map'), {
            center: myLatLng,
            scrollwheel: false,
            zoom: 4
        });
        // Create a marker and set its position.
        var marker = new google.maps.Marker({
            map: map,
            position: myLatLng,
            title: 'HELLO WORLD!'
        });
    };

}


// input file
var InputFile = function () {
    var _initInstances = function () {
        var inputs = document.querySelectorAll('.vk-input-file');
        Array.prototype.forEach.call(inputs, function (input) {
            var label = input.nextElementSibling,
                labelVal = label.innerHTML;

            input.addEventListener('change', function (e) {
                var fileName = '';
                if (this.files && this.files.length > 1)
                    fileName = (this.getAttribute('data-multiple-caption') || '').replace('{count}', this.files.length);
                else
                    fileName = e.target.value.split('\\').pop();

                if (fileName)
                    label.querySelector('span').innerHTML = fileName;
                else
                    label.innerHTML = labelVal;
            });

            // Firefox bug fix
            input.addEventListener('focus', function () {
                input.classList.add('has-focus');
            });
            input.addEventListener('blur', function () {
                input.classList.remove('has-focus');
            });
        });
    }
    return {
        init: function () {
            _initInstances();
        }
    };
}();

//scroll up
var ScrollToTop = function () {

    var _initInstances = function () {
        $.scrollUp({
            scrollText: '<i class="fa fa-angle-up"></i>',
            scrollSpeed: 500,
            zIndex: 1,

        });

        $('[data-scroll-to^="#"]').on('click', function (event) {

            var target = $(this.getAttribute('data-scroll-to'));
            if (target.length) {
                event.preventDefault();
                $('html, body').stop().animate({
                    scrollTop: target.offset().top

                }, 1000);


            }

        });

        // var obj = $('[data-scroll-to]');
        //
        // $(window).on('scroll', function () {
        //
        //     var scroll = $(window).scrollTop();
        //
        //     if (obj.length){
        //
        //         obj.each(function(){
        //
        //             var target = $(this).attr('href');
        //
        //             if (scroll > $(target).offset().top){
        //                 $(this).hide();
        //             }
        //             else {
        //                 $(this).css('opacity',1 - scroll / $(target).offset().top);
        //                 $(this).show();
        //             }
        //         });
        //     }
        //
        // });
    };

    return {
        init: function () {
            _initInstances();
        }
    };
}();

// price range
var set_from = $('.set_from').val();
var set_to = $('.set_to').val();
var PriceRange = function () {
    var _initInstances = function () {
        var slider_range = '#slider-range';
        var amount1 = '#amount1';
        var amount2 = '#amount2';

        var text_amount1 = '#text_amount1';
        var text_amount2 = '#text_amount2';

        $(slider_range).slider({
            range: true,
            min: 0,
            max: 100000000,
            values: [set_from, set_to],
            slide: function (event, ui) {
                $(amount1).val(ui.values[0]);
                $(amount2).val(ui.values[1]);
                //
                $(text_amount1).text(ui.values[0]);
                $(text_amount2).text(ui.values[1]);

            }
        });
        $(amount1).val($(slider_range).slider("values", 0));
        $(amount2).val($(slider_range).slider("values", 1));
        $(text_amount1).text($(slider_range).slider("values", 0));
        $(text_amount2).text($(slider_range).slider("values", 1));

    };
    return {
        init: function () {
            _initInstances();
        }
    };
}();
// calculator quantity
var CalcQuantity = function () {
    var _initInstances = function () {
        $("[data-calculator] .vk-btn").on("click", function () {
            var $button = $(this);
            var oldValue = $button.siblings("input").val();
            if ($button.attr('data-index') == "plus") {
                var newVal = parseFloat(oldValue) + 1;
            } else {
                // Don't allow decrementing below zero
                if (oldValue > 1) {
                    var newVal = parseFloat(oldValue) - 1;
                } else {
                    newVal = 1;
                }
            }
            $button.siblings("input").val(newVal);
            return false;
        });
    };
    return {
        init: function () {
            _initInstances();
        }
    };
}();

// custom theme
var CustomTheme = function () {

    var _initInstances = function () {

        // disable event click a tag
        $('a').on("click", function (e) {
            if ($(this).attr('href') === undefined) {
                e.preventDefault();
                return false;
            }
        });

        var searchFormShow = function(){
            var btn = $('#btnSearchFornShow');

            btn.on('click',function(e){
                var target = $(this).attr('href');
                    e.preventDefault();
                    $(target).toggleClass('active');
                    return false;

            })

        }();

    }

    return {
        init: function () {
            _initInstances();
        }
    };
}();










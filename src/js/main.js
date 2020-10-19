$(document).ready(function () {
    swiperInit();
    toggleSupport();
    sideNavigation();
    sideNavigation2();
});

// header
$('.header_btn').click(function () {
    $(this).toggleClass("click");
    $('.menu_mobile').toggleClass("show");
    $('.overlay').toggleClass("show");
});
$('.overlay').click(function () {
    $(this).toggleClass("click");
    $('.menu_mobile').toggleClass("show");
    $('.overlay').toggleClass("show");
});

// toggle support
function toggleSupport() {
    $(".toggle-item > .title").click(function (e) {
        e.preventDefault();
        if (!$(this)
            .parent()
            .hasClass("active")
        ) {
            $(".toggle-item .article").slideUp();
            $(this)
                .next()
                .slideToggle();
            $(".toggle-item").removeClass("active");
            $(this)
                .parent()
                .addClass("active");
        } else {
            $(this)
                .next()
                .slideToggle();
            $(".toggle-item").removeClass("active");
        }
    });
}

function tabActive() {
    $(".tab-navigation li a").on("click", function () {
        $(this).parents(".tab-navigation").find("li").removeClass("active");
        $(this).parents("li").addClass("active");

        var display = $(this).attr("data-type");
        $(".tab-item").removeClass("active");
        $("#" + display).addClass("active");
    });
}

function swiperInit() {
    var homerSwiper = new Swiper(".home-banner .swiper-container", {
        // Optional parameters
        speed: 1205,
        slidesPerView: 1,
        autoplay: {
            delay: 3000
        },
        pagination: {
            el: ".home-banner-pagination",
            type: "bullets",
            clickable: "true"
        }
    });
    var Homeproductswiper = new Swiper('.slide-product .swiper-container', {
        slidesPerView: 4,
        slidesPerColumn: 2,
        spaceBetween: 30,
        navigation: {
            nextEl: ".nav-arrow-next",
            prevEl: ".nav-arrow-prev",
        },
    });
    var brandSwiper = new Swiper(".block_news-event .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 30,
        autoplay: {
            delay: 2000,
        },
        navigation: {
            nextEl: ".block_news-event .nav-arrow-next",
            prevEl: ".block_news-event .nav-arrow-prev",
        },
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 3,
            },
            1440: {
                slidesPerView: 3,
            },
            1600: {
                slidesPerView: 3,
            },
        },
    });
    // Mega

    var coll = document.getElementsByClassName("collapsible");
    var i;

    for (i = 0; i < coll.length; i++) {
        coll[i].addEventListener("click", function () {
            this.classList.toggle("active");
            var content = this.nextElementSibling;
            if (content.style.maxHeight) {
                content.style.maxHeight = null;
            } else {
                content.style.maxHeight = "500px";
            }
        });
    }
    var coll = document.getElementsByClassName("menu-2");
    var i;

    for (i = 0; i < coll.length; i++) {
        coll[i].addEventListener("click", function () {
            this.classList.toggle("active");
            var content_2 = this.nextElementSibling;
            if (content_2.style.maxHeight) {
                content_2.style.maxHeight = null;
            } else {
                content_2.style.maxHeight = "500px";
            }
        });
    }
}

function sideNavigation() {
    let trigger = $('.side-navigation-wrapper .side-navigation .title em');
    let close = $('.side-navigation-wrapper .side-navigation  .nav-sub');
    let parent = $('.side-navigation-wrapper .side-navigation  li');
    trigger.on('click', function (e) {
        e.preventDefault();
        if (!$(this).parent().parent().hasClass("open")) {
            close.slideUp();
            $(this).parent().next().slideToggle();
            parent.removeClass('open')
            $(this).parents('li').addClass('open')
        } else {
            $(this).parent().next().slideToggle();
            parent.removeClass('open')
        }
    })

}

function sideNavigation2() {
    let trigger = $('.side-navigation-wrapper .side-navigation .title-2 em');
    let close = $('.side-navigation-wrapper .side-navigation  .nav-sub-2');
    let parent = $('.side-navigation-wrapper .side-navigation  li');
    trigger.on('click', function (e) {
        e.preventDefault();
        if (!$(this).parent().parent().hasClass("open")) {
            close.slideUp();
            $(this).parent().next().slideToggle();
            parent.removeClass('open')
            $(this).parents('li').addClass('open')
        } else {
            $(this).parent().next().slideToggle();
            parent.removeClass('open')
        }
    })
}
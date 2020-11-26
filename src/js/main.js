$(document).ready(function() {
    swiperInit();
    toggleSupportClient();
    sideNavigation();
    sideNavigation2();
    tabActive();
    tabActiveHome();
    tabActiveHome2();
    watchMoreDetail();
    showBackToTop();
    ZoomImg();
    DataBG();
    mappingMenu();
    mappingLogin();
    mappingSearch();
    quantityNumber();
    toggleShoppingCart();
    $(document).on("click", function(e) {
        if (
            $(".shopping-cart-toggle").has(e.target).length === 0 &&
            $(".shopping-cart-wrapper").has(e.target).length === 0
        ) {
            $(".shopping-cart-wrapper").removeClass("open");
        }
    });
});

function toggleShoppingCart() {
    $(".cart-header").on("click", function(e) {
        $(".shopping-cart-wrapper").toggleClass("open");
        e.stopPropagation();
    });
}
// header
$('.header_btn').click(function() {
    $(this).toggleClass("click");
    $('.menu_mobile').toggleClass("show");
    $('.overlay').toggleClass("show");
});
$('.overlay').click(function() {
    $(this).toggleClass("click");
    $('.menu_mobile').toggleClass("show");
    $('.overlay').toggleClass("show");
});

// Toggle
function toggleSupportClient() {
    var coll = document.getElementsByClassName("togglesupport");
    var i;

    for (i = 0; i < coll.length; i++) {
        coll[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var content = this.nextElementSibling;
            if (content.style.maxHeight) {
                content.style.maxHeight = null;
            } else {
                content.style.maxHeight = content.scrollHeight + "px";
            }
        });
    }

}

function showBackToTop() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 0) {
            $('#back-to-top').addClass('active');
        } else {
            $('#back-to-top').removeClass('active');
        }
    });

    $("#back-to-top").on("click", function(e) {
        e.preventDefault();
        $("html,body").animate({
            scrollTop: 0
        })
    })
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
    // Product Home 1
    $(".trinity-item-swiper .swiper-container").each(function(index, element) {
        var $this = $(this);
        $this.addClass("instance-" + index);
        $this
            .parent()
            .find(".nav-arrow-prev")
            .addClass("btn-prev-" + index);
        $this
            .parent()
            .find(".nav-arrow-next")
            .addClass("btn-next-" + index);

        var productHomeTabswiper = new Swiper(".instance-" + index, {
            slidesPerColumn: 2,
            speed: 750,
            observer: true,
            spaceBetween: 30,
            observeParents: true,
            breakpointsInverse: true,
            breakpoints: {
                200: {
                    slidesPerView: 1,
                },
                375: {
                    slidesPerView: 1,
                },
                576: {
                    slidesPerView: 1,
                },
                769: {
                    slidesPerView: 3,
                },
                1200: {
                    slidesPerView: 4,
                },
            },
            navigation: {
                nextEl: ".btn-next-" + index,
                prevEl: ".btn-prev-" + index,
            },
        });
    });
    // End Product Home
    var brandSwiper = new Swiper(".block_product-home-3 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 30,
        autoplay: {
            delay: 2000,
        },
        navigation: {
            nextEl: ".block_product-home-3 .nav-arrow-next",
            prevEl: ".block_product-home-3 .nav-arrow-prev",
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
    // Product Slide
    var brandSwiper = new Swiper(".block_product-detail-3 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 30,
        autoplay: {
            delay: 2000,
        },
        navigation: {
            nextEl: ".block_product-detail-3 .nav-arrow-next",
            prevEl: ".block_product-detail-3 .nav-arrow-prev",
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
                slidesPerView: 4,
            },
            1440: {
                slidesPerView: 4,
            },
            1600: {
                slidesPerView: 4,
            },
        },
    });
    // End Product Slide
    // Mega
    var coll = document.getElementsByClassName("collapsible");
    var i;

    for (i = 0; i < coll.length; i++) {
        coll[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var content = this.nextElementSibling;
            if (content.style.maxHeight) {
                content.style.maxHeight = null;
            } else {
                content.style.maxHeight = content.scrollHeight + "px";
            }
        });
    }
    var productThumbs = new Swiper(
        ".swiper-product-thumbs  .swiper-container", {
            spaceBetween: 10,
            freeMode: false,
            breakpointsInverse: true,
            breakpoints: {
                320: {
                    slidesPerView: 2,
                    direction: "horizontal",
                    spaceBetween: 10
                },
                576: {
                    slidesPerView: 3.5,
                    direction: "horizontal",
                    spaceBetween: 10
                },
                1025: {
                    slidesPerView: 4,
                    direction: "vertical"
                },
                1440: {
                    slidesPerView: 4,
                    direction: "vertical"
                }
            },
            centeredSlides: true,
            direction: "vertical",
            watchSlidesVisibility: true,
            watchSlidesProgress: true,
            navigation: {
                nextEl: ".product-thumb-next",
                prevEl: ".product-thumb-prev"
            }
        }
    );

    var productMain = new Swiper(".swiper-product-main .swiper-container", {
        slidesPerView: 1,
        centeredSlides: true,
        effect: "fade",
        fadeEffect: {
            crossFade: true
        },
        speed: 750,
        loop: false,
        thumbs: {
            swiper: productThumbs
        }
    });
}

function ZoomImg() {
    if ($(window).width() > 1024) {
        $(".swiper-slide-active .zoom-img").ezPlus({
            gallery: "gallery_01",
            cursor: "pointer",
            easing: 'true',
            galleryActiveClass: "active",
            imageCrossfade: true,
            loadingIcon: "http://www.elevateweb.co.uk/spinner.gif",
            zoomWindowWidth: "500",
            zoomWindowHeight: "500",
            borderSize: "1",
            borderColour: "#ff4900",
            zoomWindowFadeIn: 500,
            zoomWindowFadeOut: 500,
            lensFadeIn: 500,
            lensFadeOut: 500,
            lensSize: 200
        });
    }
}

function sideNavigation() {
    let trigger = $('.side-navigation-wrapper .side-navigation .title em');
    let close = $('.side-navigation-wrapper .side-navigation  .nav-sub');
    let parent = $('.side-navigation-wrapper .side-navigation  li');
    trigger.on('click', function(e) {
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
    trigger.on('click', function(e) {
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

function tabActive() {
    $(".tab-navigation li a").on("click", function() {
        $(this)
            .parents(".tab-navigation")
            .find("li")
            .removeClass("active");
        $(this)
            .parents("li")
            .addClass("active");

        var display = $(this).attr("data-type");
        $(".tab-item").removeClass("active");
        $("#" + display).addClass("active");

        let maxHeight = 400;
        let contentTab = $(".tab-wrapper .tab-item.active");
        // console.log(contentTab.height())
        if (contentTab.height() < maxHeight) {
            $(contentTab).find('.btn-view-more').hide()
        }
    });
}

function tabActiveHome() {
    $(".tab-navigation-fashion li a").on("click", function() {
        $(this)
            .parents(".tab-navigation-fashion")
            .find("li")
            .removeClass("active");
        $(this)
            .parents("li")
            .addClass("active");

        var display = $(this).attr("data-type");
        $(".tab-item-fashion").removeClass("active");
        $("#" + display).addClass("active");

        let maxHeight = 400;
        let contentTab = $(".tab-wrapper-fashion .tab-item-fashion.active");
        // console.log(contentTab.height())
        if (contentTab.height() < maxHeight) {
            $(contentTab).find('.btn-view-more').hide()
        }
    });
}

function tabActiveHome2() {
    $(".tab-navigation-news li a").on("click", function() {
        $(this)
            .parents(".tab-navigation-news")
            .find("li")
            .removeClass("active");
        $(this)
            .parents("li")
            .addClass("active");

        var display = $(this).attr("data-type");
        $(".tab-item-news").removeClass("active");
        $("#" + display).addClass("active");

        let maxHeight = 400;
        let contentTab = $(".tab-wrapper-news .tab-item-news.active");
        // console.log(contentTab.height())
        if (contentTab.height() < maxHeight) {
            $(contentTab).find('.btn-view-more').hide()
        }
    });
}

function watchMoreDetail() {
    let watchMore = $(".product-detail-wrapper .btn-view-more");
    let article = $(".product-detail-wrapper  article");
    let maxHeight = 400;
    let height = 0;
    let cotent = $(".product-detail-wrapper  article .fullcontent");
    let pArray = $(".product-detail-wrapper  article .fullcontent").children();
    watchMore.on("click", function() {
        // console.log()
        // console.log($(this).parents('article'))
        if ($(this).parents('article').hasClass('active')) {
            cotent.css({
                "max-height": 400 + "px"
            });
            article.removeClass("active");
            $(this).removeClass('open')
        } else {
            $.each(pArray, function(indexInArray, valueOfElement) {
                // height.push(element.height());

                height += $(valueOfElement).height();
            });
            cotent.not($(this).parents("article").find('.fullcontent')).css({
                "max-height": 400 + "px"
            });
            article.not($(this).parents("article")).removeClass("active");
            $(this).addClass('open')
            $(this).parents("article").find('.fullcontent').css({
                "max-height": "100%"
            });
            $(this).parents("article").addClass("active");
            $("html, body").animate({
                scrollTop: $(this).parents('.fullcontent').offset().top - 20
            });
        }
    });
}

function mappingMenu() {
    return new MappingListener({
        selector: ".nav-menu",
        mobileWrapper: ".mobile-wrapper",
        mobileMethod: "appendTo",
        desktopWrapper: ".header-navmenu-bottom",
        desktopMethod: "appendTo",
        breakpoint: 1280
    }).watch();
}

function mappingLogin() {
    return new MappingListener({
        selector: ".block_login",
        mobileWrapper: ".mobile-wrapper",
        mobileMethod: "appendTo",
        desktopWrapper: ".language-wrapper",
        desktopMethod: "insertBefore",
        breakpoint: 1280
    }).watch();
}

function mappingSearch() {
    return new MappingListener({
        selector: ".searchbox",
        mobileWrapper: ".mobile-wrapper",
        mobileMethod: "appendTo",
        desktopWrapper: ".header_left",
        desktopMethod: "appendTo",
        breakpoint: 1280
    }).watch();
}

window.onscroll = function() {
    scrollFunction()
};

function scrollFunction() {
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        document.querySelector("header").style.top = "-65px";
    } else {
        document.querySelector("header").style.top = "0";
    }
}



function quantityNumber() {
    $(".qty-minus").click(function() {
        let minus = $(this).parents('.input-group').find('input').val();
        console.log('top')
        console.log(minus)
        if (minus > 0) {
            $(this).parents('.input-group').find('input').val(minus - 1);
        } else {
            $(this).parents('.input-group').find('input').val(0);
        }
        AjaxCart.updatecart()
    });
    $(".qty-plus").on("click", function() {
        let plus = Number($(this).parents('.input-group').find('input').val());
        console.log('bottom')
        console.log(plus)
        $(this).parents('.input-group').find('input').val(plus + 1);
        AjaxCart.updatecart()
    });
}

function setBackground() {
    $("[setBackground]").each(function() {
        var background = $(this).attr("setBackground");
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-size": "cover",
            "background-position": "center center",
        });
    });
    $("[setBackgroundRepeat]").each(function() {
        var background = $(this).attr("setBackgroundRepeat");
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-repeat": "repeat",
        });
    });
}
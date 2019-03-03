/// <reference path="jquery-1.9.1.intellisense.js" />
/// <reference path="jquery-1.9.1.js" />
/// <reference path="jquery-1.9.1.intellisense.min.js" />

$(document).ready(function () {
    
    $('[data-toggle="popover"]').popover();
    $('#HomeBannersSlider').flexslider({
        animation: "slide"
    });
    $('#NewArrivalSlider').flexslider({
        animation: "slide",
        itemWidth: 220,
        itemMargin: 20,
        controlNav: false
    });

    $('.innerBlogSlider').flexslider({
        animation: "slide",
        controlNav: false,
        slideShow: false
    });

    $('#blog__slider').flexslider({
        animation: "slide",
        itemWidth: 400,
        controlNav: false
    });

    $('.innerblog-other').flexslider({
        animation: "slide",
        itemWidth: 300,
        controlNav: false
    });
    
});

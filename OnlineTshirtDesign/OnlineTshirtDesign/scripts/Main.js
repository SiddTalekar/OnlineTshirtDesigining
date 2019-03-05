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


    // This function will show your client chat up and down on basis of user action 
    $("#userClientChat, #userClientChatMin").click(function (event) {
        event.preventDefault();
        if ($(".compare-product-main").hasClass("compareProductMenuOut")) {
            $(".compare-product-main").removeClass("compareProductMenuOut");
            $(".compare-product-main").addClass("compareProductMenuIn");
        }
        else if ($(".compare-product-main").hasClass("compareProductMenuIn")) {
            $(".compare-product-main").removeClass("compareProductMenuIn");
            $(".compare-product-main").addClass("compareProductMenuOut");
        }
    });

    
});


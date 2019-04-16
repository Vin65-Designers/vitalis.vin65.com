﻿var v65 = {
	global : {
		init : function(){
			v65.global.addToCartListener();
			v65.global.continueShopping();
			v65.global.navHover();
			v65.global.responsiveCleanUp();
		},
		addToCartListener : function(){
			$("[v65js=addToCart]").on("submit",function(){
				v65.cookies.createCookie("continueShoppingURL", window.location.href);
			});
		},
		continueShopping : function(){
			$(".v65-cartCheckOutButtons a.linkAltBtn, #v65-checkCartSummaryMoreOptions a:contains('Continue shopping')").attr("href", v65.cookies.readCookie("continueShoppingURL"));
		},
		navHover : function(){
			$("nav ul li ul li a").hover(function(){
				$(this).parent().parent().parent().children("a").toggleClass("hover");
			});
		},
		equalize5Up : function(){
			$(".v65-product5Up").equalize(10);
		},
		responsiveCleanUp: function(){
			var submenuItems = $('.subMenu ul li').length;
			if( submenuItems < 1) {
				$('.footerMenuLink').remove();
			}

			$(window).scroll(function() {
				var browserSize = $(window).width();

				if($(document).scrollTop() > 150 && browserSize < 580) {
					$('.backtotop').css('display','block');
					$('.v65-productAddToCart-drilldown').addClass('v65-productAddToCart-drilldownActivate');
				} else {
					$('.backtotop').css('display','none');
					$('.v65-productAddToCart-drilldown').removeClass('v65-productAddToCart-drilldownActivate');
				}
			});

			$('.backtotop a').click(function() {
				$("html, body").animate({ scrollTop: 0 }, 400);
				return false;
			});

			$('a[href="#footerNav"]').click(function() {
				$("html, body").animate({ scrollTop: $('a[name="footerNav"]').position().top }, 400);
				return false;
			});
		}
	},

	cookies : {
		createCookie : function(name,value,days) {
			var expires = "";

			if (days) {
				var date = new Date();
				date.setTime(date.getTime()+(days*24*60*60*1000));
				expires = "; expires="+date.toGMTString();
			}

			document.cookie = name+"="+value+expires+"; path=/";
		},
		readCookie : function(name) {
			var nameEQ = name + "=";
			var ca = document.cookie.split(';');
			for(var i=0;i < ca.length;i++) {
				var c = ca[i];
				while (c.charAt(0)==' ') c = c.substring(1,c.length);
				if (c.indexOf(nameEQ) === 0) return c.substring(nameEQ.length,c.length);
			}
			return null;
		},
		eraseCookie : function(name) {
			createCookie(name,"",-1);
		}
	},

	page : {
		initPhotoGallery : function(){
			if($("#pagePhotoGallery").length){
				$("#pagePhotoGallery").v65PhotoGallery({
					galleryHeight : null, // This value is translated to the set height of the gallery and will change the photogallery height
					galleryWidth : null, // This value is translated to the set width of the gallery and will change the photogallery width
					/*
						Uncomment the code below if you want to change how the photo gallery is displayed.
						arrows: true, //Show the arrow navigation
						autoplay: false, //Does the carousel autoplay or not
						autoplaySpeed: 3000,, // Adjust the transition speed between images. Value is in milliseconds
						centerMode: false, //Enables centered view with partial prev/next slides. Use with odd numbered slidesToShow counts.
            centerPadding: '50px', //Side padding when in center mode (px or %)
						dots: true, //Show the dot navigation for each image
						fade: false, //Add a fade effect between image transitions
            slidesToShow: 1, //How may slides to show at once
						slidesToScroll: 1 //How many slides to scroll at once
					*/
				});
			}
		}
	}
};

//Photogallery Plugin and Equalize Plugin
;(function($,undefined){
	$.fn.v65PhotoGallery = function(options){
		var defaults = {
			galleryId : $("#pagePhotoGallery").attr("v65jsphotogalleryid"),
			galleryHeight : null,
			galleryWidth : null,
			timestamp : "&timestamp="+ new Date().getTime()
		},
		gallery = $(this),
		settings = $.extend(defaults, options);
		gallery.html("").css({
			"height":settings.galleryHeight,
			"width":settings.galleryWidth,
			"overflow":"hidden"
		});
		$.ajax({
	    		type: "GET",
			url: "/index.cfm?method=pages.showPhotoGalleryXML&photogalleryid="+settings.galleryId+defaults.timestamp,
			dataType: "xml",
			success: function(xml) {
				var slides = "";
				$(xml).find('img').each(function() {
					var location = '/assets/images/photogallery/images/large/',
						photo = $(this).attr('src'),
						caption = $(this).attr('caption'),
						title = $(this).attr('title'),
						url = $(this).attr('link');
						if (url === undefined) {
						var	image = '<img alt="'+title+'" src="'+location+photo+'" title="'+caption+'"/>';
						} else{
						var	image = '<a href="'+url+'"><img alt="'+title+'" src="'+location+photo+'" title="'+caption+'"/></a>';
						}
						slides += image;
				});
				gallery.append(slides);
			},
			complete: function(){
	   			gallery.slick({
						arrows: settings.arrows, //Show the arrow navigation
						autoplay: settings.autoplay, //Does the carousel autoplay or not
						autoplaySpeed: settings.autoplaySpeed, // Adjust the transition speed between images. Value is in milliseconds
						centerMode: settings.centerMode, //Enables centered view with partial prev/next slides. Use with odd numbered slidesToShow counts.
            centerPadding: settings.centerPadding, //Side padding when in center mode (px or %)
						dots: settings.dots, //Show the dot navigation for each image
						fade: settings.fade, //Add a fade effect between image transitions
            slidesToShow: settings.slidesToShow, //How may slides to show at once
						slidesToScroll: settings.slidesToScroll //How many slides to scroll at once
				});
				$('#pagePhotoGallery .slick-slide img').each(function(){ 
					if ($(this).attr('title')){
						var slideCaption = $(this).attr('title');
						$(this).parent('div').addClass('has-caption').append('<div class="slidecaption">' + slideCaption + '</div>');
					}
				});
	   		}
	   	});
	}
})(jQuery);
v65.global.init();
v65.page.initPhotoGallery();

$(window).load(function () {
  var browserSize = $(window).width();

  if (browserSize > 579) {
	v65.global.equalize5Up();
  }
});

//must
$(function(){
	$('.must > li > a').on('mouseenter focus', function(){
		var mustindex = $('.must > li > a').index($(this));
		$('.must .inner').removeClass('on');
		$('.must .inner:eq('+ mustindex +')').addClass('on');
	});
	$('header').on('mouseleave', function(){
		$('.must .inner').removeClass('on');
	});
});

//fixheader

var scrollFix = 0;
scrollFix = $(document).scrollTop();
fixHeader();

//윈도우창 조절
$(window).on('scroll resize', function(){
	scrollFix = $(document).scrollTop();
	fixHeader();
});

//고정헤더
function fixHeader() {
	if(scrollFix > 150){
		$('header').addClass('on');
	}else{
		$('header').removeClass('on');
	}
}

//splitting
$(function(){
	splitting();
});

// top image slide 

$(function(){
	$('.visual .slide').slick({
		arrows:true,
		dots:true,
		autoplay:true,
		fade:true,
		autoplaySpeed:7000,
		pauseOnHover:false,
		pauseOnFocus:false
	});
	$('.slick-prev').text("prev");


	// 두번째 슬라이드
	$('.slide2').slick({
		arrows:false,
		dots:true,
		autoplay:true,
		infinite:true,
		slidesToShow:2,
		slidesToScroll:1,
		autoplaySpeed:6000,
		pauseOnHover:true,
		pauseOnFocus:true
	});
	$(".slide2 #slick-slide-control10").text("오늘 와인 한잔");
	$(".slide2 #slick-slide-control11").text("인근주민");
	$(".slide2 #slick-slide-control12").text("청년다방");
	$(".slide2 #slick-slide-control13").text("라븐");
});

//scrolla.js

$(function() {
	$('.animate').scrolla({
		mobile: true, 
		once: false 
	});    
}); 

//스크롤 다운 
$(function(){
	$('.scroll').on('click', function(){
		var scrollBtn = $('#scroll').offset().top;
		$('html, body').animate({scrollTop: (scrollBtn)}, 400);
	});
});

//비디오부분
$(function(){
    $('.videoBox .mask').on('click', function(){
        $(this).css({'display':'none'});
        $('.videoBox iframe').css({'display':'block'});
    });
});

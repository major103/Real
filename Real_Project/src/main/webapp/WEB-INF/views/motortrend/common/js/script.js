
$(document).ready(function(){
	var mobileMode = false;
	var mobile_keys = new Array('iPhone','iPod','iPad','Android','BlackBerry','Windows Phone','Windows CE','LG','MOT','SAMSUNG','SonyEricsson','Nokia');
	for(i in mobile_keys){
		if(navigator.userAgent.match(mobile_keys[i]) != null){
			mobileMode = true
			break;
		}
	}
	if(mobileMode){
		if($(".pop_ad").hasClass("on")){
			if(getPopupCookie("adPopup")){
				//$(".pop_ad").css("display","none");
			}else{
				$(".pop_ad").css("display","block");
				$(".wrapper").height($(window).height());
				$(".pop_ad").height($(window).height());
				$(".pop_ad .btn_close").bind("click",function(){
					$(".pop_ad").animate({opacity:"0"},{duration:500,easing:"easeInOutCirc"})
					setTimeout(function(){
						$(".pop_ad").css("display","none")
						$(".wrapper").css("height","auto");
					},500)
					setPopupCookie("adPopup","true");
				})
				setTimeout(function(){
					if($(".pop_ad").css("display") == "block"){
						$(".pop_ad").animate({opacity:"0"},{duration:500,easing:"easeInOutCirc"})
						setTimeout(function(){
							$(".pop_ad").css("display","none")
							$(".wrapper").css("height","auto");
						},500)
					}
				},5000)
			}
		}
	}else{
		//$(".pop_ad").css("display","none");
	}
	// header:s
	$(".gnb .menu .on").click(function(){
		$(".gnb .menu .wrap").stop().animate({margin:"0 0 0 -30px"},{duration:500,easing:"easeInOutCirc"})
		$(".gnb > ul").stop().animate({right:"0",left:"0",opacity:"1"},{duration:500,easing:"easeInOutCirc"})
		//$("header").css("position","relative")
		//console.log($(".wrapper").height())
		$("header .gnb ul").height("auto")
		$("header .gnb ul").css("display","block")
		setTimeout(function(){
			if($(window).scrollTop()>$(".wrapper").find(".header_gg").height()){
				$("html, body").animate({ scrollTop: $(".wrapper").find(".header_gg").height() },0);
			}
			$(window).unbind("scroll",scrollCheckTopmenu);
			scrollCheckTopmenu()
			
			$(".wrapper").height($("header .gnb ul").height())
		},400);
		$(".gnb .menu .off").click(function(){
			$(".gnb .menu .wrap").stop().animate({margin:"0"},{duration:500,easing:"easeInOutCirc"})
			$(".gnb > ul").stop().animate({right:"-100%",left:"100%",opacity:"0"},{duration:500,easing:"easeInOutCirc"})
			//$("header").css("position","fixed")
			$(window).bind("scroll",scrollCheckTopmenu);
			$(".wrapper").height("auto")
			setTimeout(function(){
				$("header .gnb ul").css("display","none")
				$("header .gnb ul").height(0)
			},400);
			
		})
	})

	$("header .top .search").mouseenter(function(){
		$(".left",this).stop().animate({width:"230px"},{duration:500,easing:"easeInOutCirc"})
		$("header .top .search").mouseleave(function(){
			$(".left",this).stop().animate({width:"0"},{duration:500,easing:"easeInOutCirc"})
		})
	})
	$("header .bottom .gnb .search > img").click(function(){
		$("header .bottom .gnb .search").stop().animate({width:"160px"},{duration:500,easing:"easeInOutCirc"})
		$("header .bottom .gnb .search > img").stop().animate({margin:"10px",width:"10px"},{duration:1000,easing:"easeInOutCirc"})
		$("header .bottom .gnb .search .right").stop().animate({left:"10px"},{duration:1500,easing:"easeInOutCirc"})
		$("header .bottom .gnb .search .right .close").click(function(){
			$("header .bottom .gnb .search").stop().animate({width:"30px"},{duration:500,easing:"easeInOutCirc"})
			$("header .bottom .gnb .search > img").stop().animate({margin:"5px",width:"20px"},{duration:1000,easing:"easeInOutCirc"})
			$("header .bottom .gnb .search .right").stop().animate({left:"30px"},{duration:500,easing:"easeInOutCirc"})
		})
	})
	// header:e


	// visual:s
	$(".visual").slick({
	  infinite: true,
	  arrows: false,
	  dots: true,
	  slidesToShow: 1,
	  slidesToScroll: 1,
	  autoplay: true,
	  autoplaySpeed: 5000,
	  speed: 500,
	})
	// visual:e

	// news:s
	$(".news_view .list .wrap .box").slick({
	  infinite: true,
	  arrows: true,
	  dots: false,
	  slidesToShow: 4,
	  slidesToScroll: 1,
	  autoplay: false,
	  autoplaySpeed: 3000,
	  speed: 500,
	  responsive: [
		{
		  breakpoint: 767,
		  settings: {
			arrows: false,
			centerMode: true,
			centerPadding: '20%',
			slidesToShow: 1
		  }
		}
	  ]
	})
	// news;e

	// inside k:s
	$(".inside_k_view .list .wrap .box").slick({
	  infinite: true,
	  arrows: true,
	  dots: false,
	  slidesToShow: 4,
	  slidesToScroll: 1,
	  autoplay: false,
	  autoplaySpeed: 3000,
	  speed: 500,
	  responsive: [
		{
		  breakpoint: 767,
		  settings: {
			arrows: false,
			centerMode: true,
			centerPadding: '20%',
			slidesToShow: 1
		  }
		}
	  ]
	})
	// inside k:e

	// main_news_issue:s
	$(".main_news_issue .wrap .box").slick({
	  infinite: true,
	  arrows: false,
	  dots: false,
	  slidesToShow: 4,
	  slidesToScroll: 1,
	  autoplay: false,
	  autoplaySpeed: 3000,
	  speed: 500,
	  responsive: [
		{
		  breakpoint: 767,
		  settings: {
			centerMode: true,
			centerPadding: '20%',
			slidesToShow: 1
		  }
		}
	  ]
	})
	//main_news_issue:e

	startSlick();
	//stopSlick();
	//$(".sfs .wrap .box").slickPlay();
	$(".sfs_view .list .wrap .box").slick({
	  infinite: true,
	  arrows: true,
	  dots: false,
	  slidesToShow: 4,
	  slidesToScroll: 1,
	  autoplay: false,
	  autoplaySpeed: 3000,
	  speed: 500,
	  responsive: [
		{
		  breakpoint: 767,
		  settings: {
			centerMode: true,
			centerPadding: '20%',
			slidesToShow: 1
		  }
		}
	  ]
	})
	// sfs:e


	// s5z:s
	$(function() {
		var $container = $('#masonry');
		$container.imagesLoaded(function() {
			$container.masonry({
					itemSelector: '.item',
					gutter: 0,
					isAnimated: true,
				});
		 });
	});

	$("#masonry ul li").click(function(){
		$(".s5z_click").stop().fadeIn(500)
		//$("html").css({overflow:"hidden"})
		$(".s5z_click .menu .close").click(function(){
			$(".s5z_click").stop().fadeOut(500)
			//$("html").css({overflow:"auto"})
		})
	})
	// s5z:e


	// ebook:s
	$(".ebook .wrap .box").slick({
	  infinite: true,
	  arrows: true,
	  //dots: true,
	  slidesToShow: 5,
	  slidesToScroll: 1,
	  //autoplay: true,
	  autoplaySpeed: 2000,
	  speed: 500,
	  responsive: [
		{
		  breakpoint: 767,
		  settings: {
			centerMode: true,
			centerPadding: '20%',
			slidesToShow: 1
		  }
		}
	  ]
	})
	// ebook:e


	// footer:s
	$(".footer > .top .top").click(function(){
		$("html, body").animate({scrollTop:0},1000)
		return false;
	})
	// footer:e





	// news list:s
	$(".news_list .top .menu .center > ul li").click(function(){
		$(".news_list .top .menu .center > ul li").removeClass("on")
		$(this).addClass("on")
	})
	// news list:e

	// s5z list:s
	$(".s5z_list_menu .menu .center > ul li").click(function(){
		$(".s5z_list_menu .menu .center > ul li").removeClass("on")
		$(this).addClass("on")
	})
	// s5z list:e







	// hover:s
		
	if($(window).width() > 1024 ){
		// news:s
		$(".latest_news .wrap ul li").mouseenter(function(){
			$("> a .on",this).stop().fadeIn(500)
			$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
			$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
			$("> div .title",this).stop().animate({color:"#c9242a"},500)
			$(this).mouseleave(function(){
				$("> a .on",this).stop().fadeOut(500)
				$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#f5f5f5"},500)
				$("> div .title",this).stop().animate({color:"#424242"},500)
			})
		})
		
		$(".news_main .top .wrap .center").mouseenter(function(){
			$("> a .on",this).stop().fadeIn(500)
			$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
			$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
			$("> div .title",this).stop().animate({color:"#c9242a"},500)
			$(this).mouseleave(function(){
				$("> a .on",this).stop().fadeOut(500)
				$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#FFF"},500)
				$("> div .title",this).stop().animate({color:"#424242"},500)
			})
		})
		
		$(".news_main .list .wrap ul li").mouseenter(function(){
			$("> a .on",this).stop().fadeIn(500)
			$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
			$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
			$("> div .title",this).stop().animate({color:"#c9242a"},500)
			$(this).mouseleave(function(){
				$("> a .on",this).stop().fadeOut(500)
				$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#f5f5f5"},500)
				$("> div .title",this).stop().animate({color:"#707070"},500)
			})
		})
		
		$(".news_list .list .wrap ul li").mouseenter(function(){
			$("> a .on",this).stop().fadeIn(500)
			$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
			$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
			$("> div .title",this).stop().animate({color:"#c9242a"},500)
			$(this).mouseleave(function(){
				$("> a .on",this).stop().fadeOut(500)
				$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#FFF"},500)
				$("> div .title",this).stop().animate({color:"#707070"},500)
			})
		})
		
		$(".news_view .list .wrap .box .slide").mouseenter(function(){
			$("> a .on",this).stop().fadeIn(500)
			$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
			$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
			$("> div .title",this).stop().animate({color:"#c9242a"},500)
			$(this).mouseleave(function(){
				$("> a .on",this).stop().fadeOut(500)
				$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#FFF"},500)
				$("> div .title",this).stop().animate({color:"#707070"},500)
			})
		})
		// news:e
		
		
		// inside k:s
		
		$(".inside_k .wrap ul li").mouseenter(function(){
			$("> a .on",this).stop().fadeIn(500)
			$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
			$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
			$("> div .title",this).stop().animate({color:"#c9242a"},500)
			$(this).mouseleave(function(){
				$("> a .on",this).stop().fadeOut(500)
				$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#f5f5f5"},500)
				$("> div .title",this).stop().animate({color:"#424242"},500)
			})
		})
		
		$(".inside_k_main .top .wrap .center").mouseenter(function(){

			$("> a .on",this).stop().fadeIn(500)
			$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
			$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
			$("> div .title",this).stop().animate({color:"#c9242a"},500)
			$(this).mouseleave(function(){
				$("> a .on",this).stop().fadeOut(500)
				$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#FFF"},500)
				$("> div .title",this).stop().animate({color:"#424242"},500)
			})
		})
		
		$(".inside_k_main .list .wrap ul li").mouseenter(function(){
			$("> a .on",this).stop().fadeIn(500)
			$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
			$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
			$("> div .title",this).stop().animate({color:"#c9242a"},500)
			$(this).mouseleave(function(){
				$("> a .on",this).stop().fadeOut(500)
				$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#f5f5f5"},500)
				$("> div .title",this).stop().animate({color:"#8b8b8b"},500)
			})
		})
		
		$(".inside_k_list .list .wrap ul li").mouseenter(function(){
			$("> a .on",this).stop().fadeIn(500)
			$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
			$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
			$("> div .title",this).stop().animate({color:"#c9242a"},500)
			$(this).mouseleave(function(){
				$("> a .on",this).stop().fadeOut(500)
				$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#FFF"},500)
				$("> div .title",this).stop().animate({color:"#8b8b8b"},500)
			})
		})
		
		$(".inside_k_view .list .wrap .box .slide").mouseenter(function(){
			$("> a .on",this).stop().fadeIn(500)
			$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
			$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
			$("> div .title",this).stop().animate({color:"#c9242a"},500)
			$(this).mouseleave(function(){
				$("> a .on",this).stop().fadeOut(500)
				$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#FFF"},500)
				$("> div .title",this).stop().animate({color:"#8b8b8b"},500)
			})
		})
		// inside k:e
		
		
		// sfs:s
		$(".sfs .wrap .box .slide").mouseenter(function(){
			$("> a .on",this).stop().fadeIn(500)
			$("> a .on .icon",this).stop().animate({bottom:"170"},{duration:500,easing:"easeInOutCirc"})
			$(this).mouseleave(function(){
				$("> a .on",this).stop().fadeOut(500)
				$("> a .on .icon",this).stop().animate({bottom:"70px"},{duration:500,easing:"easeInOutCirc"})
			})
		})
		
					
		$(".sfs_view .list .wrap .box .slide").mouseenter(function(){
			$("> a .on",this).stop().fadeIn(500)
			$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
			$(this).mouseleave(function(){
				$("> a .on",this).stop().fadeOut(500)
				$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
			})
		})
		// sfs:e
		
		
		// s5z:s
		$(".s5z .center .container-fluid ul .item").mouseenter(function(){
			$("p",this).stop().animate({bottom:"0",opacity:"1"},500)
			$(this).mouseleave(function(){
				$("p",this).stop().animate({bottom:"-50px",opacity:"0"},500)
			})
		})
		// s5z:e
		
		
		// eboook:s
		$(".ebook .wrap .box .slide").mouseenter(function(){
			$("a .img .on",this).stop().fadeIn(500)
			$("a .img .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
			$(this).mouseleave(function(){
				$("a .img .on",this).stop().fadeOut(500)
				$("a .img .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
			})
		})
		
		$(".ebook_list .wrap ul li").mouseenter(function(){
			$("a .img .on",this).stop().fadeIn(500)
			$("a .img .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
			$(this).mouseleave(function(){
				$("a .img .on",this).stop().fadeOut(500)
				$("a .img .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
			})
		})
		// ebook:e
		
	}
		

	$(window).resize(function(){
		
		if($(window).width() > 1024 ){
		
			// news:s
			$(".latest_news .wrap ul li").mouseenter(function(){
				$("> a .on",this).stop().fadeIn(500)
				$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
				$("> div .title",this).stop().animate({color:"#c9242a"},500)
				$(this).mouseleave(function(){
					$("> a .on",this).stop().fadeOut(500)
					$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
					$("> div",this).stop().animate({backgroundColor:"#f5f5f5"},500)
					$("> div .title",this).stop().animate({color:"#707070"},500)
				})
			})
			
			$(".news_main .top .wrap .center").mouseenter(function(){
				$("> a .on",this).stop().fadeIn(500)
				$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
				$("> div .title",this).stop().animate({color:"#c9242a"},500)
				$(this).mouseleave(function(){
					$("> a .on",this).stop().fadeOut(500)
					$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
					$("> div",this).stop().animate({backgroundColor:"#FFF"},500)
					$("> div .title",this).stop().animate({color:"#424242"},500)
				})
			})
			
			$(".news_main .list .wrap ul li").mouseenter(function(){
				$("> a .on",this).stop().fadeIn(500)
				$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
				$("> div .title",this).stop().animate({color:"#c9242a"},500)
				$(this).mouseleave(function(){
					$("> a .on",this).stop().fadeOut(500)
					$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
					$("> div",this).stop().animate({backgroundColor:"#f5f5f5"},500)
					$("> div .title",this).stop().animate({color:"#707070"},500)
				})
			})
			
			$(".news_list .list .wrap ul li").mouseenter(function(){
				$("> a .on",this).stop().fadeIn(500)
				$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
				$("> div .title",this).stop().animate({color:"#c9242a"},500)
				$(this).mouseleave(function(){
					$("> a .on",this).stop().fadeOut(500)
					$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
					$("> div",this).stop().animate({backgroundColor:"#FFF"},500)
					$("> div .title",this).stop().animate({color:"#707070"},500)
				})
			})
			
			$(".news_view .list .wrap .box .slide").mouseenter(function(){
				$("> a .on",this).stop().fadeIn(500)
				$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
				$("> div .title",this).stop().animate({color:"#c9242a"},500)
				$(this).mouseleave(function(){
					$("> a .on",this).stop().fadeOut(500)
					$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
					$("> div",this).stop().animate({backgroundColor:"#FFF"},500)
					$("> div .title",this).stop().animate({color:"#707070"},500)
				})
			})
			// news:e
			
			
			// inside k:s
			
			$(".inside_k .wrap ul li").mouseenter(function(){
				$("> a .on",this).stop().fadeIn(500)
				$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
				$("> div .title",this).stop().animate({color:"#243f8f"},500)
				$(this).mouseleave(function(){
					$("> a .on",this).stop().fadeOut(500)
					$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
					$("> div",this).stop().animate({backgroundColor:"#f5f5f5"},500)
					$("> div .title",this).stop().animate({color:"#424242"},500)
				})
			})
			
			$(".inside_k_main .top .wrap .center").mouseenter(function(){
		
				$("> a .on",this).stop().fadeIn(500)
				$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
				$("> div .title",this).stop().animate({color:"#c9242a"},500)
				$(this).mouseleave(function(){
					$("> a .on",this).stop().fadeOut(500)
					$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
					$("> div",this).stop().animate({backgroundColor:"#FFF"},500)
					$("> div .title",this).stop().animate({color:"#424242"},500)
				})
			})
			
			$(".inside_k_main .list .wrap ul li").mouseenter(function(){
				$("> a .on",this).stop().fadeIn(500)
				$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
				$("> div .title",this).stop().animate({color:"#c9242a"},500)
				$(this).mouseleave(function(){
					$("> a .on",this).stop().fadeOut(500)
					$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
					$("> div",this).stop().animate({backgroundColor:"#f5f5f5"},500)
					$("> div .title",this).stop().animate({color:"#8b8b8b"},500)
				})
			})
			
			$(".inside_k_list .list .wrap ul li").mouseenter(function(){
				$("> a .on",this).stop().fadeIn(500)
				$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
				$("> div .title",this).stop().animate({color:"#c9242a"},500)
				$(this).mouseleave(function(){
					$("> a .on",this).stop().fadeOut(500)
					$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
					$("> div",this).stop().animate({backgroundColor:"#FFF"},500)
					$("> div .title",this).stop().animate({color:"#8b8b8b"},500)
				})
			})
			
			$(".inside_k_view .list .wrap .box .slide").mouseenter(function(){
				$("> a .on",this).stop().fadeIn(500)
				$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
				$("> div",this).stop().animate({backgroundColor:"#DDD"},500)
				$("> div .title",this).stop().animate({color:"#c9242a"},500)
				$(this).mouseleave(function(){
					$("> a .on",this).stop().fadeOut(500)
					$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
					$("> div",this).stop().animate({backgroundColor:"#FFF"},500)
					$("> div .title",this).stop().animate({color:"#8b8b8b"},500)
				})
			})
			// inside k:e
			
			
			// sfs:s
			$(".sfs .wrap .box .slide").mouseenter(function(){
				$("> a .on",this).stop().fadeIn(500)
				$("> a .on .icon",this).stop().animate({bottom:"170"},{duration:500,easing:"easeInOutCirc"})
				$(this).mouseleave(function(){
					$("> a .on",this).stop().fadeOut(500)
					$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				})
			})
			
						
			$(".sfs_view .list .wrap .box .slide").mouseenter(function(){
				$("> a .on",this).stop().fadeIn(500)
				$("> a .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
				$(this).mouseleave(function(){
					$("> a .on",this).stop().fadeOut(500)
					$("> a .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				})
			})
			// sfs:e
			
			
			// s5z:s
			$(".s5z .center .container-fluid ul .item").mouseenter(function(){
				$("p",this).stop().animate({bottom:"0",opacity:"1"},500)
				$(this).mouseleave(function(){
					$("p",this).stop().animate({bottom:"-50px",opacity:"0"},500)
				})
			})
			// s5z:e
			
			
			// eboook:s
			$(".ebook .wrap .box .slide").mouseenter(function(){
				$("a .img .on",this).stop().fadeIn(500)
				$("a .img .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
				$(this).mouseleave(function(){
					$("a .img .on",this).stop().fadeOut(500)
					$("a .img .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				})
			})
			
			$(".ebook_list .wrap ul li").mouseenter(function(){
				$("a .img .on",this).stop().fadeIn(500)
				$("a .img .on .icon",this).stop().animate({bottom:"0"},{duration:500,easing:"easeInOutCirc"})
				$(this).mouseleave(function(){
					$("a .img .on",this).stop().fadeOut(500)
					$("a .img .on .icon",this).stop().animate({bottom:"-100px"},{duration:500,easing:"easeInOutCirc"})
				})
			})
			// ebook:e
			
		}else{
			
			// news:s
			$(".latest_news .wrap ul li").mouseenter(function(){
				$("> a .on",this).stop()
				$("> a .on .icon",this).stop()
				$("> div",this).stop()
				$("> div .title",this).stop()
				$(this).mouseleave(function(){
					$("> a .on",this).stop()
					$("> a .on .icon",this).stop()
					$("> div",this).stop()
					$("> div .title",this).stop()
				})
			})
			
			$(".news_main .top .wrap .center").mouseenter(function(){
				$("> a .on",this).stop()
				$("> a .on .icon",this).stop()
				$("> div",this).stop()
				$("> div .title",this).stop()
				$(this).mouseleave(function(){
					$("> a .on",this).stop()
					$("> a .on .icon",this).stop()
					$("> div",this).stop()
					$("> div .title",this).stop()
				})
			})
			
			$(".news_main .list .wrap ul li").mouseenter(function(){
				$("> a .on",this).stop()
				$("> a .on .icon",this).stop()
				$("> div",this).stop()
				$("> div .title",this).stop()
				$(this).mouseleave(function(){
					$("> a .on",this).stop()
					$("> a .on .icon",this).stop()
					$("> div",this).stop()
					$("> div .title",this).stop()
				})
			})
			
			$(".news_list .list .wrap ul li").mouseenter(function(){
				$("> a .on",this).stop()
				$("> a .on .icon",this).stop()
				$("> div",this).stop()
				$("> div .title",this).stop()
				$(this).mouseleave(function(){
					$("> a .on",this).stop()
					$("> a .on .icon",this).stop()
					$("> div",this).stop()
					$("> div .title",this).stop()
				})
			})
			
			$(".news_view .list .wrap .box .slide").mouseenter(function(){
				$("> a .on",this).stop()
				$("> a .on .icon",this).stop()
				$("> div",this).stop()
				$("> div .title",this).stop()
				$(this).mouseleave(function(){
					$("> a .on",this).stop()
					$("> a .on .icon",this).stop()
					$("> div",this).stop()
					$("> div .title",this).stop()
				})
			})
			// news:e
			
			
			// inside k:s
			$(".inside_k .wrap ul li").mouseenter(function(){
				$("> a .on",this).stop()
				$("> a .on .icon",this).stop()
				$("> div",this).stop()
				$("> div .title",this).stop()
				$(this).mouseleave(function(){
					$("> a .on",this).stop()
					$("> a .on .icon",this).stop()
					$("> div",this).stop()
					$("> div .title",this).stop()
				})
			})
			
			$(".inside_k_main .top .wrap .center").mouseenter(function(){
		
				$("> a .on",this).stop()
				$("> a .on .icon",this).stop()
				$("> div",this).stop()
				$("> div .title",this).stop()
				$(this).mouseleave(function(){
					$("> a .on",this).stop()
					$("> a .on .icon",this).stop()
					$("> div",this).stop()
					$("> div .title",this).stop()
				})
			})
			
			$(".inside_k_main .list .wrap ul li").mouseenter(function(){
				$("> a .on",this).stop()
				$("> a .on .icon",this).stop()
				$("> div",this).stop()
				$("> div .title",this).stop()
				$(this).mouseleave(function(){
					$("> a .on",this).stop()
					$("> a .on .icon",this).stop()
					$("> div",this).stop()
					$("> div .title",this).stop()
				})
			})
			
			$(".inside_k_list .list .wrap ul li").mouseenter(function(){
				$("> a .on",this).stop()
				$("> a .on .icon",this).stop()
				$("> div",this).stop()
				$("> div .title",this).stop()
				$(this).mouseleave(function(){
					$("> a .on",this).stop()
					$("> a .on .icon",this).stop()
					$("> div",this).stop()
					$("> div .title",this).stop()
				})
			})
			
			$(".inside_k_view .list .wrap .box .slide").mouseenter(function(){
				$("> a .on",this).stop()
				$("> a .on .icon",this).stop()
				$("> div",this).stop()
				$("> div .title",this).stop()
				$(this).mouseleave(function(){
					$("> a .on",this).stop()
					$("> a .on .icon",this).stop()
					$("> div",this).stop()
					$("> div .title",this).stop()
				})
			})
			// inside k:e
			
			
			// sfs:s
			$(".sfs .wrap .box .slide").mouseenter(function(){
				$("> a .on",this).stop()
				$("> a .on .icon",this).stop()
				$(this).mouseleave(function(){
					$("> a .on",this).stop()
					$("> a .on .icon",this).stop()
				})
			})
			
						
			$(".sfs_view .list .wrap .box .slide").mouseenter(function(){
				$("> a .on",this).stop()
				$("> a .on .icon",this).stop()
				$(this).mouseleave(function(){
					$("> a .on",this).stop()
					$("> a .on .icon",this).stop()
				})
			})
			// sfs:e
			
			
			// s5z:s
			$(".s5z .center .container-fluid ul .item").mouseenter(function(){
				$("p",this).stop()
				$(this).mouseleave(function(){
					$("p",this).stop()
				})
			})
			// s5z:e
			
			
			// eboook:s
			$(".ebook .wrap .box .slide").mouseenter(function(){
				$("a .img .on",this).stop()
				$("a .img .on .icon",this).stop()
				$(this).mouseleave(function(){
					$("a .img .on",this).stop()
					$("a .img .on .icon",this).stop()
				})
			})
			
			$(".ebook_list .wrap ul li").mouseenter(function(){
				$("a .img .on",this).stop()
				$("a .img .on .icon",this).stop()
				$(this).mouseleave(function(){
					$("a .img .on",this).stop()
					$("a .img .on .icon",this).stop()
				})
			})
			// ebook:e
				
		}
		
	})

	// hover:e
	$(window).bind("resize",checkWindowSize);
	checkWindowSize();


	mainTvEventAdd();

	currentMenuSetting();

	$("header .top .top_menu").bind("mouseenter",topmenuOverHandler);
	$("header .top .top_menu").bind("mouseleave",topmenuOutHandler);

	//scrollCheckTopmenu();// webcss 210203
	$(window).bind("scroll",scrollCheckTopmenu);

	snsEventAddHandler()
	$("body").append('<input id="shareAddress" style="top:0;position:fix;display:none;">')
	if($(window).width() <= 767 ){
		$(".gnb .menu .wrap").stop().animate({margin:"0"},{duration:0,easing:"easeInOutCirc"})
		$(".gnb > ul").stop().animate({right:"-100%",left:"100%",opacity:"0"},{duration:0,easing:"easeInOutCirc"})
		$("header .gnb ul").css("display","none")
		$("header .gnb ul").height(0)
	}
});

function topmenuOverHandler(){
	$(this).find(".pc_toplink_menu").stop().slideDown(300);
}
function topmenuOutHandler(){
	$(this).find(".pc_toplink_menu").stop().slideUp(200);
}
function mainTvEventAdd(){
	$(".inside_k .center .wrap .tv_box_s li").bind("click",tvListClickHandler);
	
	mainTvEventVideoAdd();
}
function mainTvEventVideoAdd(){
	$(".inside_k .center .wrap .tv_box_b a").bind("click",tvViewClickHandler);
	$(".inside_k .center .wrap .tv_box_b a").bind("mouseenter",tvViewEnterHandler);
	$(".inside_k .center .wrap .tv_box_b a").bind("mouseleave",tvViewLeaveHandler);
}
function tvViewClickHandler(){
	var _num = $(this).parent().height();
	$(this).parent().html('<iframe width="100%" height="'+_num+'" src="https://www.youtube.com/embed/'+mainYoutubeCode+'?autoplay=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe><img class="movie_bg" src="/images/common/bg_blank.png" alt="" />');
}
function tvViewEnterHandler(){

}
function tvViewLeaveHandler(){
}
function tvListClickHandler(){
	$(this).parent().find(".on").removeClass("on");
	$(this).addClass("on");
	mainYoutubeCode = $(this).find("a").attr("data-youtube-code");
	$(".inside_k .center .wrap .tv_box_b").html('<a href="#none"><img src="'+$(this).find("img").attr("src")+'" alt="" /></a><p></p><img class="movie_bg" src="/images/common/bg_blank.png" alt="" />');
	mainTvEventAdd();
}
function checkWindowSize(){
	if($(window).width() > 767 ){
		$("header .gnb ul").css("display","block")
		$("header .gnb ul").height("auto")
		$(".wrapper").css("width","auto")
		if(!$(".sfs .wrap .box").hasClass("slick-slider")){
			startSlick();
		}
		$(".wrapper header").css("top",0);
		$(".gnb > ul").stop().animate({opacity:"1"},{duration:0})
	}else{
		if($(".sfs .wrap .box").hasClass("slick-slider")){
			stopSlick();
		}
	}
	//scrollCheckTopmenu()
}
function startSlick(){
	// sfs:s
	$(".sfs .wrap .box").slick({
	  infinite: true,
	  arrows: false,
	  dots: false,
	  slidesToShow: 3,
	  slidesToScroll: 1,
	  autoplay: true,
	  autoplaySpeed: 3000,
	  speed: 500,
	  responsive: [
		{
		  breakpoint: 767,
		  settings: {
			centerMode: true,
			centerPadding: '20%',
			slidesToShow: 1
		  }
		}
	  ]
	})
}
function stopSlick(){
	// sfs:s
	$(".sfs .wrap .box").unslick();
}


function currentMenuSetting(){
	var __tempHost = location.href.replace("http://","");
	$("header .gnb>ul>li").each(function(){
		var _tab = $(this).find("a").attr("href");
		var _spl = _tab.split("?ttl=");
		if(__tempHost.indexOf(_spl[1]) != -1){
			$(this).addClass("on");
		}
		if($(this).find("span").html() != undefined){
			var _menuText = $(this).find("span").html().toLowerCase();
			if(__tempHost.indexOf(_menuText) != -1){
				$(this).addClass("on");
			}
		}
	});
}

function scrollCheckTopmenu(){
	if($(".wrapper").find(".header_gg").size() == 1){
		if($(window).width() < 767){
			$(".wrapper header").css("position","absolute");
			if($(window).scrollTop()>$(".wrapper").find(".header_gg").height()){
				$(".wrapper header").css("position","fixed");
				$(".wrapper header").css("top",0);
				//$(".wrapper header").stop().animate({top:$(window).scrollTop()},{duration:0.01,easing:"easeInOutCirc"})
			}else{
				$(".wrapper header").css("top",$(".wrapper").find(".header_gg").height());
			}
		}else{
			$(".wrapper header").css("position","relative");
		}
	}
}




//*********************************************************************************************************************************
var sharePageURL="";
var sharePageTitle="";
function snsEventAddHandler(){
	$(".sns_btn a").unbind("click",snsClickHandler)
	$(".sns_btn a").bind("click",snsClickHandler)
}
function snsClickHandler(){
	//shareSns($(this).index(),$(this).prop("no"),$(this).prop("catename"));
	//console.log($(this).index(),sharePageURL);
	sharePageURL = "https://www.motortrendkorea.com/sub/view.html?no="+$(this).attr('no')+"&cate1Name="+$(this).attr('catename');
	sharePageTitle = ($(this).parent().parent().find(".page_info .title").html());
	shareSns($(this).index());
}

function shareSns(type){
	var fbWebSharePage = "http://www.facebook.com/sharer.php?u=";
	var twWebSharePage ="http://twitter.com/intent/tweet?text=";

	var __tempHost = location.href.replace("http://","");
	__tempHost = __tempHost.replace("https://","");
	var __arHost = __tempHost.split("/");
	var __strHost = __arHost[0];

	var  __snstype = type;
	var __br	= urlEn("\r\n");
	var __snsURL	= sharePageURL;
	var __snsTitle	= sharePageTitle;
	var __appName = "motortrendkorea";

	var __oAction = {
		url : '',
		type : 'none'
	};
	var __userAgent = navigator.userAgent;
	switch (type) {
		case 0 : //@facebook
			__oAction.url = fbWebSharePage + urlEn(__snsURL);
			__oAction.type = 'popup';
			break;
		case 1 : //@twitter
			__oAction.url = twWebSharePage + urlEn(__snsURL);
			__oAction.type = 'popup';
			break;
		case 2:
			/*
			$("#shareAddress").val(__snsURL)
			var copyText = document.getElementById("shareAddress");
			$("#shareAddress").css("display","block")
			copyText.select();
			document.execCommand("Copy");
			$("#shareAddress").css("display","none")
			*/
			break;
		default : 
			//alert(__snstype);
			alert("현재 기기에서 지원하지 않는 SNS 입니다.");
			break;
	}
	switch(__oAction.type) {
		case 'popup' :
			popFlag = window.open(__oAction.url, "m_sns", "width=500px, height=370px");
			break;
		default : 
			break;
	}
}
function urlEn(text){
	var url_encoding = encodeURIComponent(text);
	return url_encoding;
}

//쿠키관련
function getPopupCookie(cname) {
	var name = cname + "=";
	var ca = document.cookie.split(';');
	for(var i=0; i<ca.length; i++) {
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1);
		if (c.indexOf(name) != -1) return c.substring(name.length,c.length);
	}
	return "";
} 
function setPopupCookie(cname, cvalue) {
	var d = new Date();
	d.setTime(d.getTime() + (60*60*1000));
	var expires = "expires="+d.toUTCString();
	document.cookie = cname + "=" + cvalue + "; " + expires;
}
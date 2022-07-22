<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
			(function(d, s, id) {
				var js, fjs = d.getElementsByTagName(s)[0];
				if (d.getElementById(id)) {
					return;
				}
				js = d.createElement(s);
				js.id = id;
				js.src = "https://connect.facebook.net/ko_KR/sdk.js";
				fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));

			window.fbAsyncInit = function() {
				FB.init({
					appId : '266492947534063',
					cookie : true,
					xfbml : true,
					version : 'v2.8'
				});
			};

			function ogShare() {
				FB
						.ui(
								{
									method : 'share_open_graph',
									action_type : 'og.share',
									action_properties : JSON
											.stringify({
												object : 'https://developers.facebook.com/docs/opengraph/getting-started',
											})
								}, function(response) {
									// Debug response (optional)
									console.log(response);
								});
			}
		</script>
<title>Insert title here</title>
</head>
<body>

		<header>
			<div class="top">
				<ul>
					<!-- 로그인이 안된경우 -->
					<c:if test="${ empty sessionScope.user }">
						<li><a href="/sub/login.html"><!-- 로그인액션 --><span>로그인</span></a></li>
						<li class="top_menu"><a href="#"><!-- 로그인 후 이용할수있습니다 컨펌 --><strong>마이페이지</strong></a>
					</c:if>
					<!-- 로그인이 된경우 -->
					<c:if test="${ not empty user }">
						<li><!-- 로그아웃 앵커태그 적용 --><a href="#"><span>로그아웃</span></a></li>
						<li class="top_menu"><a href="javascript:void(0)"><strong>마이페이지</strong></a>
							<div class="pc_toplink_menu" style="display: none;">
								<p>
									<a href="http://imagazinekorea.com/etc/online_ad.asp"
										target="_blank">북마크</a>
								</p>
								<p>
									<a href="http://imagazinekorea.com/etc/notice.asp"
										target="_blank">개인정보</a>
								</p>
								<p>
									<a href="http://www.kayamedia.com/" target="_blank">QnA</a>
								</p>
							</div>
						</li>
					</c:if>
			
				
					<li>
						<div class="search">
							<div class="left">
								<input name="textValue" id="textValue" type="search"
									placeholder="search" onkeydown="javascript: onkeyDown2();">
							</div>
							<img class="btn" src="../images/main/header/icon_s.png"
								onclick="javascript: btnClick()">
						</div>
					</li>
				</ul>
			</div>
			<div class="bottom">
				<a class="logo" href="/"><img
					src="../images/main/header/logo.png"></a>
				<div class="gnb">
					<div class="menu">
						<div class="wrap">
							<div class="on">
								<span></span><span></span><span></span>
							</div>
							<div class="off">
								<img src="../images/main/header/m_close.png">
							</div>
						</div>
					</div>
					<div class="search">
						<img src="../images/main/header/m_search.png">
						<div class="right">
							<input id="mText" name="" type="text" placeholder="search"
								onkeydown="javascript: onkeyDown3();">
							<div class="close">
								<img src="../images/main/header/m_close.png"
									onclick="javascript: clearText()">
							</div>
						</div>
					</div>
					<ul>
						<li><a href="/sub/list.html?ttl=WHICHCAR"><span>NEWS</span></a></li>
						<li><a href="/sub/list.html?ttl=NEWCAR"><span>견적내기</span></a></li>
						<li><a href="/sub/list.html?ttl=NEWS"><span>매장검색</span></a></li>
						<li><a href="/sub/list.html?ttl=COLUMN"><span>브랜드검색</span></a></li>
						<li class="top_menu"><a href="javascript:void(0)"><span>게시판</span></a>
						<div class="pc_toplink_menu" style="display: none;">
							<p>
								<a href="http://imagazinekorea.com/etc/online_ad.asp"
									target="_blank">광고/제휴</a>
							</p>
							<p>
								<a href="http://imagazinekorea.com/etc/notice.asp"
									target="_blank">고객센터</a>
							</p>
							<p>
								<a href="http://www.kayamedia.com/" target="_blank">회사소개</a>
							</p>
						</div></li>
						<!--li><a href="/sub/community.html"><span>COMMUNITY</span></a></li-->
						
						<li class="side_link">
							<ul>
								<li><a href="/sub/login.html"><span>로그인</span></a></li>
								<li><a
									href="http://m.imagazinekorea.com/member/subscribe.asp"
									target="_blank"><span>정기구독</span></a></li>
								<li><a href="http://m.imagazinekorea.com/etc/online_ad.asp"
									target="_blank"><span>광고/제휴</span></a></li>
								<li><a href="http://m.imagazinekorea.com/etc/notice.asp"
									target="_blank"><span>고객센터</span></a></li>
								<li><a href="http://www.kayamedia.com/" target="_blank"><span>회사소개</span></a></li>
							</ul>
						</li>
						
					</ul>
				</div>
			</div>
		</header>
		<script>
			function btnClick() {
				location.href = "/sub/search.html?textValue="
						+ $('#textValue').val();
			}
			function onkeyDown2() {
				if (event.keyCode == 13) {
					location.href = "/sub/search.html?textValue="
							+ $('#textValue').val();
				}
			}
			function onkeyDown3() {
				if (event.keyCode == 13) {
					location.href = "/sub/search.html?textValue="
							+ $('#mText').val();
				}
			}
			function clearText() {
				$("#mText").val("");
			}

			function menuImage(img, mode) {
				if (mode == "Y")
					img.src = "/images/common/ElectriCar_navi_pc_r.png";
				else
					img.src = "/images/common/ElectriCar_navi_pc_n.png";
			}

			function menuImage_mobile(img, mode) {
				if (mode == "Y")
					img.src = "/images/common/ElectriCar_navi_m_r.png";
				else
					img.src = "/images/common/ElectriCar_navi_m_n.png";
			}
		</script>

		<!-- tdn:s -->
		<script src="//ads.tapzin.com/imagazine/motortrend/tdn.js"></script>
		<!-- tdn:e -->
		<!-- header:e -->
		
		
		<script>
			function btnClick() {
				location.href = "/sub/search.html?textValue="
						+ $('#textValue').val();
			}
			function onkeyDown2() {
				if (event.keyCode == 13) {
					location.href = "/sub/search.html?textValue="
							+ $('#textValue').val();
				}
			}
			function onkeyDown3() {
				if (event.keyCode == 13) {
					location.href = "/sub/search.html?textValue="
							+ $('#mText').val();
				}
			}
			function clearText() {
				$("#mText").val("");
			}

			function menuImage(img, mode) {
				if (mode == "Y")
					img.src = "/images/common/ElectriCar_navi_pc_r.png";
				else
					img.src = "/images/common/ElectriCar_navi_pc_n.png";
			}

			function menuImage_mobile(img, mode) {
				if (mode == "Y")
					img.src = "/images/common/ElectriCar_navi_m_r.png";
				else
					img.src = "/images/common/ElectriCar_navi_m_n.png";
			}
		</script>
		
</body>
</html>
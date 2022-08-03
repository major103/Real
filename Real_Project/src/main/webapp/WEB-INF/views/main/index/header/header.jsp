<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style type="text/css">
	li.car_menu{
		float:left;
		width: 100px;
		list-style-type: none;
	}
	
	li.car_menu ul{
		margin: 0px;
		list-style-type: none;
		padding: 0px;
	}
	
	.car_menu a{
 		background : white; 
		width: 100px;
		display: block; 
		color: black;
		text-decoration: none;
		
	}
	
	.car_menu > ul > li > a{
		font: small-caps;
		color: black;
		border: 1px solid black;
		text-align: center;
	}
	
	.board_menu > ul > li > a{
		font: small-caps;
		color: black;
		border: 1px solid black;
		text-align: center;
	}

</style>



<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("li.car_menu ul").hide(); //하위메뉴 숨기기
		
		$("li.car_menu").hover(function(){

			$("ul",this).show(1);

		}, function(){
			$("ul",this).hide(1);
		});
		
	});
</script>

<script type="text/javascript">
	$(document).ready(function(){
		
		$("li.board_menu ul").hide(); //하위메뉴 숨기기
		
		$("li.board_menu").hover(function(){

			$("ul",this).show(1);

		}, function(){
			$("ul",this).hide(1);
		});
		
	});
</script>

</head>
<body>

		<header>
			<div class="top">
				<ul>
					<!-- 오른쪽 위 -->
					<c:if test="${ empty user }">
						<li><a href="user/login_form.do"><span>로그인</span></a></li>
						
					</c:if>
					<c:if test="${ not empty user }">
						<li><a href="user/logout.do"><span>로그아웃</span></a></li>
						<li class="top_menu"><a href="javascript:void(0)"><strong>마이페이지</strong></a></li>
					</c:if>
					
					
					
				</ul>
			</div>
			<div class="bottom">
				<!-- 왼쪽 위 큰 로고 -->
				<a class="logo" href="main.do">
				<img src="${ pageContext.request.contextPath }/resources/images/main/header/오스카_소.png"></a>
				<div class="gnb">
					<ul>
						<li><a href="news.do"><span>NEWS</span></a></li>
						<li><a href=""><span>자동차백과</span></a></li>
						<li class="car_menu"><a href="estimate.do"><span>견적내기</span></a>
							<ul>
								<li><a href="#">간단견적</a></li>
								<li><a href="#">차량비교</a></li>
							</ul>
						</li>
						<li><a href=""><span>매장검색</span></a></li>
						<li class="board_menu"><a href=""><span>게시판</span></a>
							<ul>
								<li><a href="free.do">자유게시판</a></li>
								<li><a href="">오픈채팅</a></li>
								<li><a href="">평점 및 후기</a></li>
							</ul>
						</li>	
					</ul>
				</div>
			</div>
		</header>
		
</body>
</html>
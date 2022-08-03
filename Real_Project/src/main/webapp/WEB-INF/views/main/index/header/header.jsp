<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

.board_menu { display: inline-block; }
.board { display: none; }
.board a { display: block; }
.board a:hover {color: black }
.board_menu: hover .board { display:block; }

</style>

</head>
<body>

		<header>
			<div class="top">
				<ul>
					<!-- 오른쪽 위 -->
					<c:if test="${ empty user }">
						<li><a href="user/login_form.do"><span>로그인</span></a></li>
						<li class="top_menu"><a href="javascript:void(0)"><strong>마이페이지</strong></a>
							<div class="pc_toplink_menu" style="display: none;">
								<p>
									<a href="">개인정보</a>
								</p>
								<p>
									<a href="">개인정보</a>
								</p>
								<p>
									<a href="">QnA</a>
								</p>
							</div>
						</li>
					</c:if>
					<c:if test="${ not empty user }">
						<li><a href="user/logout.do"><span>로그아웃</span></a></li>
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
						<li><a href="estimate.do"><span>견적내기</span></a>
							<div class="pc_toplink_menu" style="display: none;">
								<p>
									<a href="">간단견적</a>
								</p>
								<p>
									<a href="">차량비교</a>
								</p>
							</div></li>
						<li><a href=""><span>매장검색</span></a></li>
						<li class="board_menu"><a href=""><span>게시판</span></a>
							<div class="board">
									<a href="free.do">자유게시판</a>
									<a href="">오픈채팅</a>
									<a href="">평점 및 후기</a>
							</div>
						</li>	
					</ul>
				</div>
			</div>
		</header>
		
</body>
</html>
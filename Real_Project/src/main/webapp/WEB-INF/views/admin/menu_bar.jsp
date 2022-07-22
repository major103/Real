<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">




</script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="user_list.do">관리자 페이지</a>
    </div>
    <ul class="nav navbar-nav">
    
     <li class="dropdown">
		 <a class="dropdown-toggle" data-toggle="dropdown" href="#">유저
		 <span class="caret"></span></a>
		 <ul class="dropdown-menu">
		   <li class="active"><a href="user_list.do">유저</a></li>
		   <li><a href="withdraw_list.do">유저삭제</a></li>
		 </ul>
      </li>
      <li><a href="car_list.do">차량</a></li>
      <li><a href="news_list.do">뉴스</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">게시판
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="free_list.do">자유게시판</a></li>
          <li><a href="chatting_list.do">채팅하기</a></li>
          <li><a href="grade_list.do">후기/평점</a></li>
          <li><a href="reply_list.do">답글</a></li>
        </ul>
      </li>
      <li><a href="company_list.do">브랜드</a></li>
      <li><a href="recommend_list.do">추천</a></li>
      <li><a href="estimate_list.do">견적</a></li>
    </ul>
  </div>
</nav>	
</body>
</html>
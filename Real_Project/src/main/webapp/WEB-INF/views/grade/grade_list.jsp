<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
      href="${ pageContext.request.contextPath }/resources/css/basic.css">
<link rel="stylesheet" 
	href="${ pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" 
	href="${ pageContext.request.contextPath }/resources/css/font.css">
<link rel="stylesheet" 
      href="${ pageContext.request.contextPath }/resources/plug/slick/slick.css">
</head>
<body>


	<div class="wrapper">

		<!-- Header Include -->
			<%@include file="../main/index/header/header.jsp" %>

		<!-- Body Include   -->
			<%@include file="grade_idx.jsp" %>
		
		<!-- Footer Include -->
			<%@include file="../main/index/footer/footer.jsp" %>

	</div>
	<!--wrapper-->

</body>
</html>
<<<<<<< HEAD:Real_Project/src/main/webapp/WEB-INF/views/main/sub/list.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OSCAR</title>
<link rel="stylesheet" href="${ path }/resources/css/basic.css">
<link rel="stylesheet" href="${ path }/resources/css/style.css">
<link rel="stylesheet" href="${ path }/resources/css/font.css">
<link rel="stylesheet" href="${ path }/resources/plug/slick/slick.css">
<script type="text/javascript" src="${ path }/resources/js/script.js"></script>
<script type="text/javascript" src="${ path }/resources/js/clipboard.js"></script>
<script type="text/javascript" src="${ path }/resources/js/jquery-ui.js"></script>
<script type="text/javascript" src="${ path }/resources/js/jquery-1.11.1.min.js"></script>
=======

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>NEWCAR | MOTOR TREND</title>


<link rel="stylesheet"  href="${ pageContext.request.contextPath }/resources/css/basic.css">


<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/font.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resoures/plug/slick/slick.css">

<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery-ui.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/script.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/clipboard.js"></script>


>>>>>>> 585ca4921a6992fd90f34540d91d54ea5d7bd6fc:Real_Project/src/main/webapp/WEB-INF/views/main/list.jsp
</head>
<body>

	<div class="wrapper">
	
		
		
		<!-- Header Include -->
			<%@include file="index/header/header.jsp" %>
			
			<!-- Main Include -->
			<%@include file="index/main/main.jsp" %>

		<!-- Footer Include -->
			<%@include file="index/footer/footer.jsp" %>
	


	</div>
	<!--wrapper-->
</body>
</html>
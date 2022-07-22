<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form name="reviewlist" class="reviewlist" method="POST">
	<div><input type="button" value="리뷰남기기"></div>
	
	<div>
		<c:if test="${ empty list }">
			<div id="empty_msg">리뷰가 없습니다</div>
		</c:if>
		
		<c:forEach var="vo" items="${ list }">
			<div>${ vo.user_id }</div>
			<!-- 차량이름도 써야됨 -->
			<div>${ vo.g_good }</div>
			<div>${ vo.g_content }</div>
		</c:forEach>
	</div>
	
</form>
</body>
</html>
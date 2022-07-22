<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="reply_list">
<table>
	<c:if test="${ empty list }">
		<tr>
			<td align="center">
			<font color="black">댓글이 없습니다</font>
			</td>
		</tr>
	</c:if>
	
	<c:forEach var="vo" items="${ list }">
		<tr>
			<td>${ vo.u_id }</td>
			<td>${ vo.re_content }</td>
		</tr>
	</c:forEach>
</table>
</div>

</body>
</html>
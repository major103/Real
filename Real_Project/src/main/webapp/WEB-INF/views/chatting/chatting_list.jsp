<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

<div>
	<table>
		<div><input type="button" value="새로 만들기" onclick="location.href='chatting_insert_form.jsp';"></div>
		<tr>
			<th>방번호</th>
			<th>방제목</th>
			<th>입장</th>
		</tr>
		<tr>
			<td>${ c_index }</td>
			<td>${ c_title }</td>
			<td><input type="button" value="입장"></td>
		</tr>
	</table>
</div>

</body>
</html>
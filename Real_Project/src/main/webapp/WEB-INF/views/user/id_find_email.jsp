<%@page import="vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	#find_id{
		font-size: 30px;
		border: 1px solid #e31e38;
		width: 300px;
		height: auto;	
		margin: auto;
		margin-left: 70px;
		margin-top: 50px;
	}
</style>
</head>
<body>
<form>
	<c:if test="${ empty user }">
	<div id="box">
			<table>
				<tr>
					<td align="center"><img src="../img/돋보기.png" height="50px"></td>
					<th style="font-size: 25px">아이디 찾기</th>
				</tr>
			</table>
			<hr>
			<table>
				<tr>
					<td colspan="2" style="font-size: 15px">입력하신 정보와 일치하는 아이디가 없습니다</td>
				</tr>
			</table>
	</div>
	</c:if>
	
	<c:if test="${ !empty user }">
	<div id="box">
			<table>
				<tr>
					<td align="center"><img src="../img/돋보기.png" height="50px"></td>
					<th style="font-size: 25px">아이디 찾기</th>
				</tr>
			</table>
			<hr>
			<table>
				<tr>
					<td colspan="2" style="font-size: 15px">회원님의 정보와 일치하는 아이디입니다</td>
				</tr>
			</table>
			<br>
			<br>
			<table id="find_id">
				<tr>
					<th>${ user.u_id }</th>
				</tr>
			</table>
	</div>
	</c:if>
	
</form>
</body>
</html>
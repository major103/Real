<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<style type="text/css">
	#find_pwd{
			font-size: 30px;
			border: 1px solid #e31e38;
			width: 300px;
			height: auto;	
			margin: auto;
			margin-left: 70px;
			margin-top: 20px;
		}
</style>
</head>
<body>
<form>
	<div id="box">
		<table>
			<tr>
				<td align="center"><img src="../img/find.png" height="50px"></td>
				<td>비밀번호 변경</td>
			</tr>
		</table>
		<hr>
		<br>
		<br>
		<table id="find_pwd">
			<tr>
				<th>회원님의 비밀번호가 변경되었습니다</th>
			</tr>
			<tr>
				<td><input style="margin-left: 100px" type="button" value="확인" onclick="window.close();"></td>
			</tr>
		</table>
	</div>
</form>	
</body>
</html>
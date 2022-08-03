<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>

<form>
	<div id="mypage">
		<div class="panel panel-default"></div>
			<div class="panel-body">
				<table class="table table-striped">
					<tr>
						<th>아이디</th>
						<td>${ vo.u_id }</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>${ vo.u_pwd }</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>${ vo.u_name }</td>
					</tr>
					<tr>
						<th>성별</th>
						<td>${ vo.u_gender }</td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td>${ vo.u_birth }</td>
					</tr>
					<tr>
						<th>핸드폰</th>
						<td>${ vo.u_phone }</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>${ vo.u_email }</td>
					</tr>
					
					<tr>
      					<td colspan="2" align="center">
      						<input class="btn btn-primary" type="button" value="수정하기" id="btn_modify"
      							   onclick="send(this.form);">
      						<input class="btn btn-default" type="button" value="취소"
      							   onclick="location.href='main.do'">
      					</td>
      				</tr>
			</table>
		</div>
	</div>
</form>

</body>
</html>
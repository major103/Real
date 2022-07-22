<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap 3.x -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
	#box{
		width: 400px;
		margin: auto;
		margin-top: 200px;
	}
	
	tr > td > input{
		width: 300px;
		margin-left: 25px;
	}
</style>

<script type="text/javascript">
	function send(f) {
		var u_id  = f.u_id.value.trim();
		var u_pwd = f.u_pwd.value.trim();
		
		if(u_id==''){
			alert('아이디를 입력하세요');
			f.u_id.value='';
			f.u_id.focus();
			return;
		}
		
		if(u_pwd==''){
			alert('비밀번호를 입력하세요');
			f.u_pwd.value='';
			f.u_pwd.focus();
			return;
		}
		
		f.action = "login.do";	//UserLoginAction
		f.submit();
	}
</script>

<script type="text/javascript">
	$(document).ready(function() {
		
		//0.1초후에 showMessage함수 호출
		setTimeout(showMessage, 100);
	});
	
	function showMessage() {
		// /user/login_form.do?reason=fail_id
		if("${ param.reason eq 'fail_id' }" == "true"){
			alert('존재하지 않는 아이디 이거나 비밀번호가 틀렸습니다');
			return;
		}	
		
		// /user/login_form.do?reason=fail_pwd
		if("${ param.reason eq 'fail_pwd' }" == "true"){
			alert('존재하지 않는 아이디 이거나 비밀번호가 틀렸습니다');
			return;
		}
		
		// /user/login_form.do?reason=fail_timeout
		if("${ param.reason eq 'session_timeout' }" == "true"){
			alert('로그아웃 되었습니다');
			return;
		}
	}s
	
	function id_popup() {
		var w_width = $(window).width();
		var w_height = $(window).height();
		
		console.log(w_width,w_height);
		
		/* var left = w_width/2 - 400/2;
		var top = w_height/2 - 500/2; */
		
		var url = "id_find.jsp";
		var name = "아이디 찾기"
		window.open(url, name, "width=450, height=500, left=750, top=180");
	}
	
	function pwd_popup() {
		var w_width = $(window).width();
		var w_height = $(window).height();
		
		console.log(w_width,w_height);
		
		/* var left = w_width/2 - 400/2;
		var top = w_height/2 - 500/2; */
		
		var url = "pwd_find.jsp";
		var name = "비밀번호 찾기"
		window.open(url, name, "width=450, height=500, left=750, top=180");
	}
</script>

</head>
<body>
	<form>
		<div id="box">
			<div class="panel panel-danger">
      		<div class="panel-heading">로그인</div>
      		<div class="panel-body">
      			<table class="table table-striped">
      				<tr>
							<div class="input-group">
							      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
							      <input id="email" type="text" class="form-control" name="u_id" placeholder="아이디">
							</div>
		      		</tr>
      				<br>
		      		<tr>
		      			<div class="input-group">
					      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
					      <input id="password" type="password" class="form-control" name="u_pwd" placeholder="비밀번호">
					    </div>
		      		</tr>
		      		<br>
		      		<tr>
		      			<td align="center" colspan="3">
		      				<input class="btn btn-primary" type="button" value="로그인" onclick="send(this.form);">
		      			</td>
		      		</tr>
		      		<tr align="center">
		      			<td>
		      				<a href="javascript:pwd_popup()">비밀번호 찾기 </a>|
		      				<a href="javascript:id_popup()"> 아이디 찾기 </a>|
		      				<a href="user_insert_form.jsp"> 회원가입</a>
		      			</td>
		
		      		</tr>
      			</table>
      		</div>
    		</div>
		</div>
	</form>
</body>
</html>
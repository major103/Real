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

</head>
<body>
	<form>
		<div id="box">
			<div class="panel panel-danger">
      		<div class="panel-heading">로그인</div>
      		<div class="panel-body">
      			<table class="table table-striped">
      				<tr>
		      			<td>
							<div class="input-group">
							      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
							      <input id="email" type="text" class="form-control" name="u_id" placeholder="아이디">
							</div>
		      			</td>
		      		</tr>
      		
		      		<tr>
		      			<div class="input-group">
					      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
					      <input id="password" type="password" class="form-control" name="password" placeholder="비밀번호">
					    </div>
		      		</tr>
		      		
		      		<tr>
		      			<td align="center">
		      				<input class="btn btn-primary" type="button" value="로그인"
      					   onclick="send(this.form);">
		      			</td>
		      		</tr>
      			</table>
      		</div>
    		</div>
		</div>
	</form>
</body>
</html>
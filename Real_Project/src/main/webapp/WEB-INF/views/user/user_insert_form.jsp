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

<script type="text/javascript">

	var regular_id = /^[a-zA-Z0-9]{3,16}$/;
	var regular_phone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	var regular_email = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;

	$(document).ready(function() {

		$("#u_id").keyup(function(event) {
			var u_id = $(this).val();
			
			if(regular_id.test(u_id)==false){
				$("#id_msg").html("영문자/숫자조합의 3~16자리만 가능합니다").css("color","red");
				//가입하기 버튼 비활성화
				$("#btn_register").attr("disabled",true);
				return;
			}
 			
			if(regular_phone.test(u_phone)==false){
				$("#phone_msg").html("번호가 이상합니다").css("color","red");
				$("#btn_register").attr("disabled", true);
				return;
			}
			
			if(regular_email.test(u_email)==false){
				$("#email_msg").html("이메일 형식에 맞게 입력하세요").css("color","red");
				$("#btn_register").attr("disabled", true);
				return;
			}
			
			//서버에 사용가능 여부 확인(jQuery Ajax)
			$.ajax({
				url		: 'check_id.do',			//MemberCheckAction
				data	: {'u_id':u_id},			//parameter : check_id.do?u_id=one
				datatype: 'json',
				success	: function(res_data) {
					//res_data={"result": true}    	사용가능
					//res_data={"result": false}	사용중
					if(res_data.result){ //사용 가능한 아이디
						$("#id_msg").html("사용가능한 아이디 입니다").css("color","green");
						//가입하기 버튼 활성화
						$("#btn_register").attr("disabled",false);
					}else{  //이미 사용중인 아이디
						$("#id_msg").html("이미 사용중인 아이디 입니다").css("color","red");
						//가입하기 버튼 비활성화
						$("#btn_register").attr("disabled",true);
					}
				},
				error: function(err) {
					alert(err.responseText);
				}
			});
			
			
		});
	});
	
	function send(f) {
		//입력값 체크(이름/비번/우편번호/주소)
		var u_name = f.u_name.value.trim();
		var u_pwd = f.u_pwd.value.trim();
		
		if(u_name==''){
			alert('이름을 입력하세요');
			f.u_name.value='';
			f.u_name.focus();
			return;
		}
		
		if(u_pwd==''){
			alert('비밀번호를 입력하세요');
			f.u_pwd.value='';
			f.u_pwd.focus();
			return;
		}
		
		f.action = "insert.do";
		f.submit();
	}
	
</script>

</head>
<body>
<form>
	<div id="box">
		<div class="panel panel-primary">
      		<div class="panel-heading"><h4>회원가입</h4></div>
      		<div class="panel-body">
      			<table class="table table-striped">
      				<tr>
      					<th>이름</th>
      					<td><input name="u_name"></td>
      				</tr>
      				
      				<tr>
      					<th>아이디</th>
      					<td>
	      					<input name="u_id" id="u_id">
	      					<span id="id_msg"></span>
      					</td>
      					
      				</tr>
      				
      				<tr>
      					<th>비밀번호</th>
      					<td><input type="password" name="u_pwd"></td>
      				</tr>
      				
      				<tr>
      					<th>성별</th>
      					<td>
      						<input type="radio" name="gender" value="남자">남자 
      						<input type="radio" name="gender" value="여자">여자
      					</td>
      				</tr>
      				
      				<tr>
      					<th>생년월일</th>
      					<td><input type=""></td>
      				</tr>
      				
      				<tr>
      					<th>전화번호</th>
      					<td><input name="u_phone"></td>
      				</tr>
      				
      				<tr>
      					<th>이메일</th>
      					<td><input name="u_email"></td>
      				</tr>
      				
      				
      				<tr>
      					<td colspan="2" align="center">
      						<input class="btn btn-primary" type="button" value="가입하기" id="btn_register"
      							   onclick="send(this.form);">
      						<input class="btn btn-success" type="button" value="목록보기"
      							   onclick="location.href='list.do'">
      					</td>
      				</tr>
      			</table>
      		</div>
    	</div>
	</div>
</form>
</body>
</html>
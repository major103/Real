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

	var regular_id = /^[a-zA-Z0-9]{3,16}$/
	//문서내 Element의 배치가 완료가 되면
	$(document).ready(function() {
		//아이디 입력창에서 키가 입력되면
		$("#m_id").keyup(function(event) {
			var m_id = $(this).val();
			//console.log(m_id);
			
			if(regular_id.test(m_id)==false){
				$("#id_msg").html("영문자/숫자조합의 3~16자리만 가능합니다").css("color","red");
				//가입하기 버튼 비활성화
				$("#btn_register").attr("disabled",true);
				return;
			}
			//$("#id_msg").html("정규식 만족합니다").css("color","blue");
			
			//서버에 사용가능 여부 확인(jQuery Ajax)
			$.ajax({
				url		: 'check_id.do',			//MemberCheckAction
				data	: {'m_id':m_id},			//parameter : check_id.do?m_id=one
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
		var m_name = f.m_name.value.trim();
		var m_pwd = f.m_pwd.value.trim();
		
		if(m_name==''){
			alert('이름을 입력하세요');
			f.m_name.value='';
			f.m_name.focus();
			return;
		}
		
		if(m_pwd==''){
			alert('비밀번호를 입력하세요');
			f.m_pwd.value='';
			f.m_pwd.focus();
			return;
		}
		
		
		
		f.action = "";
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
      					<td><input name="m_name"></td>
      				</tr>
      				
      				<tr>
      					<th>아이디</th>
      					<td>
	      					<input name="m_id" id="m_id">
	      					<span id="id_msg"></span>
      					</td>
      					
      				</tr>
      				
      				<tr>
      					<th>비밀번호</th>
      					<td><input type="password" name="m_pwd"></td>
      				</tr>
      				
      				<tr>
      					<th>성별</th>
      				</tr>
      				
      				<tr>
      					<th>생년월일</th>
      				</tr>
      				
      				<tr>
      					<th>전화번호</th>
      				</tr>
      				
      				<tr>
      					<th>이메일</th>
      				</tr>
      				
      				
      				<tr>
      					<td colspan="2" align="center">
      						<input class="btn btn-primary" type="button" value="가입하기" id="btn_register" disabled="disabled"
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
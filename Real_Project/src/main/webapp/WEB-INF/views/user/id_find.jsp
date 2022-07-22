<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<style type="text/css">
	#box{
		border: 1px solid black;
	}
	
	#id_find{
		margin-left: 30px;
		margin-top: 10px; 
	}

</style>



<script type="text/javascript">
	function emailCheck(f) {
		if(f.email.value==0){
			f.p_email_b.value = "";
			f.p_email_b.disabled = false;
		}
		else{
			f.p_email_b.value = f.email.value;
			f.p_email_b.disbled = true;
		}
	}
	
	var regular_phone = /^[0-9]{4}$/;
	function phone_find(f) {
		
		var name = f.name.value.trim();
		var phone_center = f.phone_center.value;
		var phone_end = f.phone_end.value;
		
		if(name == ''){
			alert('이름을 입력하세요');
			f.name.value = '';
			f.name.focus();
			return;
		}
		if(regular_phone.test(phone_center) == false){
			alert("번호 형식이 틀립니다");
			f.phone_center.value='';
			f.phone_center.focus();
			return;
		}
		if(regular_phone.test(phone_end) == false){
			alert("번호 형식이 틀립니다");
			f.phone_end.value='';
			f.phone_end.focus();
			return;
		}
		f.action = "id_find_phone.do";
		f.submit();
	}
	
	function email_find(f) {
		var name1 = f.name1.value.trim();
		var p_email_f = f.p_email_f.value.trim();
		var p_email_b = f.p_email_b.value.trim();
		
		if(name1 == ''){
			alert('이름을 입력하세요');
			f.name1.value = '';
			f.name1.focus();
			return;
		}
		if(p_email_f == ''){
			alert("이메일을 입력하세요");
			f.p_email_f.value='';
			f.p_email_f.focus();
			return;
		}
		if(p_email_b == ''){
			alert("주소를 입력하세요");
			f.p_email_b.value='';
			f.p_email_b.focus();
			return;
		}
		
		f.action = "id_find_email.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<form>
		<div id="box">
			<table>
				<tr>
					<td align="center"><img src="../img/find.png" height="50px"></td>
					<td>아이디 찾기</td>
				</tr>
			</table>
			<hr>
			<table>
				<tr>
					<th colspan="2">핸드폰번호로 찾기</th>
				</tr>
			</table>
			<table id="id_find">	
				<tr>
					<td>이 름</td>
					<td><input type="text" name="name" style="width: 120px"></td>
				</tr>
				<tr>
					<td>휴대전화</td>
					<td>
						<select name="phone_front" >
							<option value="010" selected="selected">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>
						-
						<input type="text" name="phone_center" maxlength="4" style="width: 60px">
						-
						<input type="text" name="phone_end" maxlength="4" style="width: 60px">
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="찾기" style="width: 100px; margin-left: 125px" onclick="phone_find(this.form);"></td>
				</tr>
			</table>
			<hr>
			<table>
				<tr>
					<th colspan="3">이메일로 찾기</th>
				</tr>
			</table>
			<table id="id_find">	
				<tr>
					<td>이 름</td>
					<td><input type="text" name="name1" style="width: 120px"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>
						<input type="text" name="p_email_f" style="width: 100px">
						@
						<input type="text" name="p_email_b" style="width: 100px">
						<select name="email" onchange="emailCheck(this.form);">
							<option value="0" selected="selected">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="3"><input type="button" value="찾기" style="width: 100px; margin-left: 125px" onclick="email_find(this.form);"></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
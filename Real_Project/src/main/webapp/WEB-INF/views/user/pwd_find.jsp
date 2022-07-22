<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>

<script type="text/javascript">
	var regular_phone = /^[0-9]{4}$/;
	
	function pwd_find1(f) {
		var id = f.id.value.trim();
		var name = f.name.value.trim();
		var phone_center = f.phone_center.value;
		var phone_end = f.phone_end.value;
		
		if(id == ''){
			alert('아이디를 입력하세요');
			f.id.value = '';
			f.id.focus();
			return;
		}
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
		
		f.action = "pwd_find_process.do";
		f.submit();
	}
</script>

<style type="text/css">
	#pwd_find{
		margin: auto;
		margin-left: 10px;
	}
</style>

</head>
<body>
	<form>
		<div id="box">
			<table>
				<tr>
					<td align="center"><img src="../img/find.png" height="50px"></td>
					<td>비밀번호 찾기</td>
				</tr>
			</table>
			<hr>
			<table>
				<tr>
					<th colspan="2">아이디와 핸드폰번호를 입력하세요</th>
				</tr>
				
			</table>
			<br>
			<table id="pwd_find">	
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" style="width: 120px"></td>
				</tr>
				<tr>
					<td>이름</td>
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
					<td colspan="2">
						<input type="button" value="찾기" style="width: 100px; margin-top: 20px; margin-left: 125px" 
										   	 onclick="pwd_find1(this.form);">
					</td>
				</tr>
			</table>
			
		</div>
	</form>
</body>
</html>
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
		margin-top: 20px;
	}
</style>

<script type="text/javascript">
	function pwd_find(f) {
		var new_pwd  = f.new_pwd.value.trim();
		var new_pwd_check = f.new_pwd_check.value.trim();
		
		if(new_pwd==''){
			alert('새로운 비밀번호를 입력하세요');
			f.new_pwd.value='';
			f.new_pwd.focus();
			return;
		}
		
		if(new_pwd_check==''){
			alert('새로운 비밀번호를 입력하세요');
			f.new_pwd_check.value='';
			f.new_pwd_check.focus();
			return;
		}
	 	if(new_pwd.length <= 6){
			alert('6자리 이상 입력하세요');
			return false;
		}
		if(new_pwd != new_pwd_check){
			alert("비밀번호가 일치하지 않습니다")
			return false;
		}
		else{
			f.action = "pwd_resetting.do";
			f.submit();
		} 
	}

</script>

</head>
<body>
<form>
	<c:if test="${ empty user }">
	<div id="box">
			<table>
				<tr>
					<td align="center"><img src="../img/돋보기.png" height="50px"></td>
					<th style="font-size: 25px">비밀번호 찾기</th>
				</tr>
			</table>
			<hr>
			<table>
				<tr>
					<td colspan="2" style="font-size: 15px">입력하신 정보와 일치하는 회원정보가 없습니다</td>
				</tr>
			</table>
	</div>
	</c:if>
	
	<c:if test="${ !empty user }">
	<div id="box">
			<table>
				<tr>
					<td align="center"><img src="../img/돋보기.png" height="50px"></td>
					<th style="font-size: 25px">비밀번호 재설정</th>
				</tr>
			</table>
			<hr>
			<table>
				<tr>
					<td colspan="2" style="font-size: 15px">비밀번호를 변경해주세요.</td>
				</tr>
			</table>
			<br>
			<table id="find_id">
				<tr>
					<td>
						<input style="width: 250px" type="password" name="new_pwd" placeholder="새 비밀번호">
						<input style="width: 250px" type="password" name="new_pwd_check" placeholder="새 비밀번호 확인">
					</td>	
				</tr>
				<tr>
					<td>
						<input style="margin-left: 100px" type="button" value="변경" onclick="pwd_find(this.form);">
					</td>
				</tr>
			</table>
	</div>
	</c:if>

</form>
</body>
</html>
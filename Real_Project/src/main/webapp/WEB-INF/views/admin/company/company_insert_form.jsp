<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- CKEditor -->
<script src="//cdn.ckeditor.com/4.19.0/stande/ckeditor.js"></script>
<style type="text/css">

	#box {
		width: 700px;
		margin: auto;
		margin-top: 50px;
		
	}

	textarea {
		width:100%;
		min-height: 300px;
		resize: none;
	}
</style>
<script type="text/javascript">

	function send(f){
		
	
		var car_name = f.car_name.value.trim();
	    
		if(car_name ==''){
			
			alert("차량이름을 입력하세요");
			f.b_subject.value='';
			f.b_subject.focus();
			
			return;
		}
		
		
		
		f.action = "admin/company_insert.do";	
		f.submit();
		
	}
	
</script>

</head>
<body>

<form>
<div id="box">
	   <div class="panel panel-dark">
      <div class="panel-heading"><h3>Company Insert</h3></div>
      <div class="panel-body">
      	<table class="table table-striped">
      		<tr>
      			<th>회사이름</th>
      			<td><input name="co_name"></td>
      		</tr>
      		<tr>
      			<th>소재지</th>
      			<td><input name="co_loc"></td>	
      		</tr>
      		<tr>
      			<th>창업일</th>
      			<td><input name="co_date"></td>
      		</tr>
      		<tr>
      			<th>창립자</th>
      			<td><input name="co_pres"></td>
      		</tr>
      		<tr>
      			<th>슬로건</th>
      			<td><input name="co_motto"></td>
      		</tr>
      		<tr>
      			<th>대표업종</th>
      			<td><input name="co_business"></td>
      		</tr>
      		<tr>
      			<th>회사소개</th>
      			<td><input name="co_intro"></td>
      		</tr>
      		<tr>
      			<th>로고(소)</th>
      			<td><input type="file" name="co_photo_s"></td>
      		</tr>
      		<tr>
      			<th>로고(대)</th>
      			<td><input type="file" name="co_photo_l"></td>
      		</tr>
      		<tr>
      			<td colspan="2" align="center">
      				<input class="btn btn-default" type="button" value="확인" onclick="send(this.form);">
      				<input class="btn btn-dark" type="button" value="취소" onclick="location.href='company_list.do';">
      			</td>
      		</tr>
      	</table>
      </div>
    </div>
</div>
</form>

</body>
</html>
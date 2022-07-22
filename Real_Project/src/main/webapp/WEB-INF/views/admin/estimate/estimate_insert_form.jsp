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
		
		
		
		f.action = "admin/car_insert.do";	
		f.submit();
		
	}
	
</script>

</head>
<body>

<form>
<div id="box">
	   <div class="panel panel-dark">
      <div class="panel-heading"><h3>Estimate Insert</h3></div>
      <div class="panel-body">
      	<table class="table table-striped">
      		<tr>
      			<th>차량 이름</th>
      			<td><input name="car_name"></td>
      		</tr>
      		<tr>
      			<th>옵션</th>
      				<td><input name="e_option"></td>	
      			</td>
      		</tr>
      		<tr>
      			<th>가격</th>
      			<td><input name="e_price"></td>	
      		</tr>
      		
      			<td colspan="2" align="center">
      				<input class="btn btn-default" type="button" value="확인" onclick="send(this.form);">
      				<input class="btn btn-dark" type="button" value="취소" onclick="location.href='estimate_list.do';">
      			</td>
      		</tr>
      	</table>
      </div>
    </div>
</div>
</form>

</body>
</html>
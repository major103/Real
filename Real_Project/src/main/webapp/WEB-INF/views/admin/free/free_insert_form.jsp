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
		
		
		
		f.action = "admin/free_insert.do";	
		f.submit();
		
	}
	
</script>

</head>
<body>

<form>
<div id="box">
	   <div class="panel panel-dark">
      <div class="panel-heading"><h3>Free Board Insert</h3></div>
      <div class="panel-body">
      	<table class="table table-striped">
      		<tr>
      			<th>No.</th>
      			<td><input name="free_index"></td>
      		</tr>
      		<tr>
      			<th>제목</th>
      				<td><input name="free_title"></td>
      		</tr>
      		<tr>
      			<th>내용</th>
      			<td><textarea rows="" cols=""></textarea></td>	
      		</tr>
      		<tr>
      			<th>첨부파일</th>
      			<td><input type="file" name="free_org_f"></td>
      		</tr>
      		
      		<tr>
      			<th>작성자</th>
      			<td><input name="u_id"></td>
      		</tr>
      		
      		<tr>
      			<td colspan="2" align="center">
      				<input class="btn btn-default" type="button" value="확인" onclick="send(this.form);">
      				<input class="btn btn-dark" type="button" value="취소" onclick="location.href='free_list.do';">
      			</td>
      		</tr>
      	</table>
      </div>
    </div>
</div>
</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div>
	<form enctype="multipart/form-data" method="post">
		<div id="title">
			<textarea name="title" id="title" placeholder="제목"></textarea>
		</div>
		
		<div id="content">
			<textarea name="content" id="content" placeholder="내용"></textarea>
		</div>
		
		<input type="file">
		
		<div>
			<input type="button">
		</div>
		
	</form>
</div>

</body>
</html>
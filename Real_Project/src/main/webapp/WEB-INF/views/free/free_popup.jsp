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
		<input type="button" value="수정하기" onclick="free_modify();">
		<input type="button" value="삭제하기" onclick="free_delete();">
	</div>
	
	<div id="free_subject">제목</div>
	<div id="user_id">작성자</div>
	<div id="free_org_f">첨부파일</div>
	<div id="free_content">내용</div>
	
	<div>
		<input type="button" value="목록보기" onclick="location.href='list.do';">
	</div>
</body>
</html>
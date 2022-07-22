<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
<div id="free_list">
<table>
<input type="button" value="글쓰기" onclick="location.href='free_insert_form.jsp';">
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>등록일</th>
		<th>첨부파일</th>
		<th>조회수</th>
	</tr>
	
	<!-- 글이 없는 경우 -->
	<c:if test="${ empty list }">
		<tr>
			<td colspan="6" align="center">등록된 글이 없습니다</td>
		</tr>
	</c:if>
	
	<!-- for(FreeVo vo : list)  -->
	<c:forEach var="vo"  items="${ list }">
		<tr align="center">
			<td>${ vo.free_idx }</td>
			<td>${ vo.free_title }</td>
			<td>${ vo.user_id }</td>
			<td>${ vo.free_date }</td>
			<td>${ vo.free_org_f }</td>
			<td>${ vo.free_count }</td>
		</tr>
	</c:forEach>
</table>
</div>
</body>
</html>
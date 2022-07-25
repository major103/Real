<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Bootstrap 3.x -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
	function insert_form() {

		//로그인여부
		if ("${ empty user }" == "true") {

			if (confirm("글쓰기는 로그인 후에 가능합니다\n로그인 하시겠습니까?") == false)
				return;

			//로그인폼으로 이동
			location.href = "../user/user_login_form.do";

			return;
		}

		//글쓰기 폼으로 이동( /board/insert_form.do )	  
		location.href = "insert_form.do";
	}

	function find() {

		var search = $("#search").val();
		var search_text = $("#search_text").val().trim();

		//전체보기가 아닌데 검색어가 비어있는 경우
		if (search != 'all' && search_text == '') {
			alert('검색어를 입력하세요');
			$("#search_text").val("");
			$("#search_text").focus();
			return;
		}

		//검색요청
		location.href = "list.do?search=" + search + "&search_text="
				+ encodeURIComponent(search_text);

	}
</script>


<script type="text/javascript">
	$(document).ready(function() {

		if ("${ not empty param.search }" == "true") {
			$("#search").val("${ param.search }");
		}

		//전체보기면 검색어 지우기
		if ("${ empty param.search  or param.search eq 'all'}" == "true") {
			$("#search_text").val("");
		}

	});
</script>
<style type="text/css">
	#btn1 {
		float: left;
		margin-top: 5px;
		margin-bottom: 5px;
	}	
	
	#tb1{
		margin: auto;
		width:80%;
		height: 500px;
	}
	
	
	
</style>
</head>
<body>


		<div>
			<div>
				<button id="btn1" type="button" class="btn btn-dark"
					onclick="location.href='insert_form.do';">글쓰기</button>
			</div>
			<div>
			<table id="tb1" class="table table-striped table-hover">
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
						<td colspan="6" rowspan="2" align="center">등록된 글이 없습니다</td>
					</tr>
				</c:if>

				<!-- for(FreeVo vo : list)  -->
				<c:forEach var="vo" items="${ list }">
					<tr align="center">
						<td>${ vo.free_index }</td>
						<td>${ vo.free_title }</td>
						<td>${ vo.user_id }</td>
						<td>${ vo.free_date }</td>
						<td>${ vo.free_org_f }</td>
						<td>${ vo.free_count }</td>
					</tr>
				</c:forEach>

			</table>
			</div>
			<!-- 검색메뉴 -->
			<div style="text-align: center; margin-bottom: 20px;">
				<select id="search">
					<option value="all">전체보기</option>
					<option value="subject">제목</option>
					<option value="content">내용</option>
					<option value="name">이름</option>
					<option value="subject_content_name">제목+내용+이름</option>
				</select> <input id="search_text" value="${ param.search_text }"> <input
					type="button" value="검색" onclick="find();">
			</div>

		</div>
	</div>
</body>
</html>
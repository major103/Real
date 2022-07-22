<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap 3.x -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<script type="text/javascript">

	function NoMultiChk(chk){
		var obj = document.getElementsByName("box");
			for(var i=0; i<obj.length; i++){
				if(obj[i] != chk){
					obj[i].checked = false;
				}
			}
			
	}
</script>
<style type="text/css">

	#btn1 {
		float: right;
		margin-right: 30px;
	}	

</style>
</head>
<body>
	<!-- menu bar 삽입 -->
	<%@include file="../menu_bar.jsp" %>
	
	<div class="container">
		<div class="table-responsive">
			<div class="table-wrapper"">
				<div class="table-title">
					<div class="row">
						<div class="col-xs-5">
							<h2>
								 <b>News</b>
							</h2>
						</div>
					<div class="btn-group" id="btn1">
						<button type="button" class="btn btn-dark" onclick="location.href='news_insert_form.do'">Insert</button>
						<button type="button" class="btn btn-dark" onclick="modify();">Update</button>
						<button type="button" class="btn btn-dark" onclick="del();">Delete</button>
					</div>
					</div>
				</div>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th></th>
							<th>No.</th>
							<th>작성자</th>
							<th>제목</th>
							<th>내용</th>
							<th>작성일자</th>
							<th>조회수</th>
							<th>링크</th>
						</tr>
					</thead>
					<tbody>
						<!-- data -->
						
						<c:forEach var="vo" items="${ map.news_list }" varStatus="i">
							<tr>
								<td><input type="checkbox" name="box" onclick="NoMultiChk(this)"></td>
								<td>${ vo.n_index }</td>
								<td>${ vo.n_writer }</td>
								<td>${ vo.n_title }</td>
								<td>${ vo.n_content }</td>
								<td>${ vo.n_link }</td>
								<td>${ vo.n_date }</td>
								<td>${ vo.n_count }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		
	</div>
	<input type="button" onclick="location.href='news_index.do'">
</body>
</html>
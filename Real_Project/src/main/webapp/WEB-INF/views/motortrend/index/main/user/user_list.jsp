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
<!-- css파일 링크 -->
<link rel="stylesheet" href="style.css">

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="table-responsive">
			<div class="table-wrapper"">
				<div class="table-title">
					<div class="row">
						<div class="col-xs-5">
							<h2>
								 <b>Result</b>
							</h2>
						</div>

					</div>
				</div>
				<table class="table table-striped table-hover">
					<thead>
						<!-- title -->
						<tr>
							<th>No.</th>
							<th>ID</th>
							<th>PWD</th>
							<th>이름</th>
							<th>성별</th>
							<th>생년월일</th>
							<th>핸드폰번호</th>
							<th>Email</th>
							<th>IP</th>
							<th>인증여부</th>
							<th>관리자여부</th>
							<th>가입일</th>
							<th>마지막접속일</th>
						</tr>
					</thead>
					
					<!-- data -->
					<tbody>
					
					<c:forEach var="vo" items="${ list }" varStatus="i">
						<tr>
							<td>${ vo.u_idx }</td>
							<td>${ vo.u_id }</td>
							<td>${ vo.u_pwd }</td>
							<td>${ vo.u_name }</td>
							<td>${ vo.u_gender }</td>
							<td>${ vo.u_birth }</td>
							<td>${ vo.u_phone }</td>
							<td>${ vo.u_email }</td>
							<td>${ vo.u_ip }</td>
							<td>${ vo.confirm_yn }</td>
							<td>${ vo.admin_yn }</td>
							<td>${ fn:substring(vo.joindate,0,10) }</td>
							<td>${ vo.last_log }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
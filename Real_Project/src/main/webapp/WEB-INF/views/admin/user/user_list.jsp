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
								 <b>USER</b>
							</h2>
						</div>

					</div>
				</div>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th></th>
							<th>No.</th>
							<th>ID</th>
							<th>PWD</th>
							<th>이름</th>
							<th>성별</th>
							<th>생년월일</th>
							<th>핸드폰번호</th>
							<th>Email</th>
							<th>인증여부</th>
							<th>관리자여부</th>
							<th>가입일</th>
							<th>마지막접속일</th>
						</tr>
					</thead>
					<tbody>
						<!-- data -->
						
						<c:forEach var="vo" items="${ map.user_list }" varStatus="i">
							<tr>
								<td><input type="checkbox" name="box" onclick="NoMultiChk(this)"></td>
								<td>${ vo.u_index }</td>
								<td>${ vo.u_id }</td>
								<td>${ vo.u_pwd }</td>
								<td>${ vo.u_name }</td>
								<td>${ vo.u_gender }</td>
								<td>${ vo.u_birth }</td>
								<td>${ vo.u_phone }</td>
								<td>${ vo.u_email }</td>
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
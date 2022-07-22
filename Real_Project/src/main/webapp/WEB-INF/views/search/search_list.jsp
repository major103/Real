<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.brandBox{
		width: 1000px;
		height: 500px;
		border: 1px solid #6666ff;
		margin-left: 450px;
	}
	
	.title{
		width: 1000px;
		height: 50px;
		border: 1px solid black;
	}
	
	.brandList{
		list-style: none;
	}
	
	.brand{
		width: 80px;
		height: 70px;
		margin: 20px;
	}
</style>

<script type="text/javascript">
	function search() {
		var search_text = $("#search_text").val().trim();
		
		if(search_text==''){
			alert('검색어를 입력하세요.')
			$("#search_text").val('');
			$("#search_text").focus();
			return;
		}
		
		location.href="search_list.do?search_text=" + encodeURIComponent(search_text);
	}
	
	
/* 	function brand_view(f) {
		var b_name = f.name.value;
		
		location.href = "car_view.do?b_name=" + b_name;
	}
	 */

</script>

</head>
<body>
	<h1>header</h1>
	<hr>
	<!-- 검색창 -->
	<div style="text-align: center; margin: 10px;">
		<input id="search_text" value="${ param.search_text }" placeholder="검색어를 입력하세요">
		<input type="button" value="search" onclick="search();">
	</div>
	<hr>
	<!-- 브랜드 -->
	<%-- <c:forEach var="vo" items="${ list }">
		<form>
			<input type="hidden" name="co_name" value="${ vo.co_name }">
			<div class="brand">
				
				<img src="../images/${ vo.co_photo_s }" width="50" height="40"
					 onclick="brand_view();">
				
			</div>
		</form>
	</c:forEach> --%>
	<div class="brandBox">
		<div class="korea_brand">
			<div class="title">국산</div>
			<ul class="brandList">
				<li class="brand"><a href="../brand/hyundai.jsp"><img src="../images/현대로고.png" id="b_img"></a></li>
				<li class="brand"><a href="kia.jsp"><img src="images/HyunDai.png" id="b_img"></a></li>
				<li class="brand"><a href="hyundai.jsp"><img src="images/HyunDai.png" id="b_img"></a></li>
				<li class="brand"><a href="hyundai.jsp"><img src="images/HyunDai.png" id="b_img"></a></li>
				<li class="brand"><a href="hyundai.jsp"><img src="images/HyunDai.png" id="b_img"></a></li>
				<li class="brand"><a href="hyundai.jsp"><img src="images/HyunDai.png" id="b_img"></a></li>
			</ul>
		
		</div>
	</div>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap 3.x -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function  insert_form(){
		  
		  //로그인여부
		  if("${ empty user }" == "true"){
			  if(confirm("글쓰기는 로그인후에 가능합니다\n로그인 하시겠습니까?")==false)return;
			  
			  //로그인폼으로 이동
			  location.href="/setting/user/login_form.do";
			  
			  return;
		  }
		  //글쓰기 폼으로 이동	  
		  location.href="grade/insert_form.do";
	}
</script>

<style type="text/css">
  #box{
    
     margin: auto;
     margin-top: 10px;
 }
  
  th,td{
      text-align: center;
  }
</style>

</head>
<body>
	<div id="box">

	<%-- 	<div style="text-align: right">
			<!-- 로그인 안된경우 -->
			<c:if test="${ empty user }">
				<input type="button" value="로그인" 
					onclick="location.href='${ pageContext.request.contextPath }/user/login_form.do';">
			</c:if>
			<!-- 로그인이 된경우 -->		
			<c:if test="${ not empty user }">
	        	<input  type="button" value="로그아웃" 
	        	       onclick="location.href='${ pageContext.request.contextPath }/user/logout.do';" >
	        </c:if>
		</div> --%>
		
		<div style="margin-bottom: 10px;">
        	<input class="btn btn-default" type="button" value="리뷰작성" onclick="insert_form();">
     	</div> 
		
		<!-- 게시판 목록출력 -->
		<table class="table  table-striped">
	          <tr>
	              <th>번호</th>
	              <th width="60%">리뷰</th>
	              <th>작성자</th>
	              <th>작성일자</th>
	              <th>조회수</th>
	          </tr> 
	          
	           <!-- 데이터 없는경우  -->
	          <c:if test="${ empty list }">
	             <tr>
	                <td colspan="5" align="center">
	                    <font color="blcak">작성된 게시물이 없습니다.</font>
	                </td>
	             </tr>
	          </c:if>
	          
	          <!-- 데이터가 있는 경우 -->
			<c:forEach var="vo" items="${ list }">
				<tr>
					<td>${ vo.no }</td>
					
					<td>
						<div>${ vo.g_point }</div>
						<br>
						${ vo.g_content }
					</td>
					<td>${ vo.u_id }</td>
					<td>${ fn:substring(vo.b_regdate,0,16) }</td>
					<td>${ vo.g_count }</td>
				</tr>
			
			</c:forEach>
		</table>
	
	
	 <!-- 검색메뉴 -->
     <div style="text-align: center;  margin-bottom: 20px;">
          <select id="search">
              <option value="all">전체보기</option>
              <option value="subject">제목</option>
              <option value="content">내용</option>
              <option value="name">이름</option>
              <option value="subject_content_name">제목+내용+이름</option> 
          </select>
          <input id="search_text"  value="${ param.search_text }">
          <input type="button"  value="검색" onclick="find();">
     </div>

</body>
</html>

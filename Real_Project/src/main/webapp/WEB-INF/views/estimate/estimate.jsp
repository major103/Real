<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<!-- estimate_trim start -->
<div class="estimate_trim">
		
	<div class="estimate_title">
		<h3 class=title>1. 트림 선택</h3>
	</div>
	
	<div id="accordion">
	
	  <div class="card">
	    <div class="card-header">
	      <a class="btn" data-bs-toggle="collapse" href="#collapseOne">
	        가솔린 모델
	      </a>
	    </div>
	    <div id="collapseOne" class="collapse show" data-bs-parent="#accordion">
	      <div class="card-body">
	        <div class="form-check">
			  <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something">
			  <label class="form-check-label">Normal</label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something">
			  <label class="form-check-label">Expensive</label>
			</div>
	      </div>
	    </div>
	  </div>
	
	  <div class="card">
	    <div class="card-header">
	      <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseTwo">
	        디젤 모델
	      </a>
	    </div>
	    <div id="collapseTwo" class="collapse" data-bs-parent="#accordion">
	      <div class="card-body">
	        <div class="form-check">
			  <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something">
			  <label class="form-check-label">Normal</label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" id="check2" name="option2" value="something">
			  <label class="form-check-label">Expensive</label>
			</div>
	      </div>
	    </div>
	  </div>
	
	</div>
	
	</div>
	
	<div class="estimate_option">
	
	<div class="estimate_title">
		<h3 class=title>2. 옵션 선택</h3>
	</div>
	
	<div class="estimate_content">
	
	</div>

</div>
<!-- estimate_trim end -->

</body>
</html>
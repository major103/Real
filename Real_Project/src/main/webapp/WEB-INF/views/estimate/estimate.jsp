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

<style type="text/css">
	.estimate_body{ float: left; }
	.bill{ float: right; }
	.estimate_trim{ width: 70%; min-width: 500px; min-height: 300px; }
	.estimate_option{ width: 70%; min-width: 500px; min-height: 100px; }
	#bill_total { height: 100px; width: 20%; min-width: 200px; }
	.bill_sum { color: rgba(180, 180, 180); }
	
</style>

<script type="text/javascript">
	$.ajax({})
</script>

</head>

<body>
<div class="estimate_body">
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
				  <input class="form-check-input" type="checkbox" id="trim1" name="trim1" value="something">
				  <label class="form-check-label">Normal</label>
				</div>
				<div>
					<span>
						<span>
							2,000
						</span>
						만원
					</span>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="checkbox" id="trim2" name="trim2" value="something">
				  <label class="form-check-label">Expensive</label>
				</div>
				<div>
					<span>
						<span>
							2,500
						</span>
						만원
					</span>
				</div>
		      </div>
		    </div>
		  </div>
		
		</div>
		
		</div>
	<!-- estimate_trim end -->
	<!-- estimate_option start	 -->
	<div class="estimate_option">
		
		<div class="estimate_title">
			<h3 class=title>2. 옵션 선택</h3>
		</div>
		
		<div class="estimate_content">
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" id="option1" name="option1" value="something">
			  <label class="form-check-label">옵션1</label>
			</div>
			<div>
					<span>
						<span>
							20
						</span>
						만원
					</span>
				</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" id="option2" name="option2" value="something">
			  <label class="form-check-label">옵션2</label>
			</div>
			<div>
					<span>
						<span>
							30
						</span>
						만원
					</span>
				</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" id="option3" name="option3" value="something">
			  <label class="form-check-label">옵션3</label>
			</div>
			<div>
					<span>
						<span>
							40
						</span>
						만원
					</span>
				</div>
			
		</div>
		
	
	</div>
	<!-- estimate_option end -->
</div>
<div class="bill">
	<h4>최종견적</h4>
	<p class="bill_sum">$1{ } + $2{ } + $3{ } =</p>
	<input type="text" class="form-control form-control-lg" id="bill_total" placeholder="$1{}원">
</div>

</body>
</html>
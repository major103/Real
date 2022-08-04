 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

.container, .main_wrap, .popular_car, .best_board, .new_board { border: 1px solid red; margin: 10px; }
.main_wrap{ width: 90%; height: 450px; margin: auto; margin-top: 10px; text-align: center; }
.popular_car{ width: 80%; height: 250px; margin: auto; margin-top: 20px; }
.best_board, .new_board{ width: 30%; height: 200px; }
.best_board{ margin-left: 15%; float: left; }
.new_board{ margin-right: 15%; float: right; }

</style>

</head>
<body>



<div class="container">

	<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>

  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="la.jpg" alt="Los Angeles" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="chicago.jpg" alt="Chicago" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="ny.jpg" alt="New York" class="d-block w-100">
    </div>
  </div>

  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>

	<div class="popular_car">
		<div>인기차종</div>
	</div>
	
	<div class="best_board">
	1
	</div>
	
	<div class="new_board">
	1
	</div>

</div>

		
</body>
</html>
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

.container, .main_wrap, .popular_car, .best_board, .new_board { margin: 10px; }
.main_wrap{ width: 90%; height: 450px; margin: auto; margin-top: 10px; text-align: center; }
.popular_car{ width: 80%; height: 250px; margin: auto; margin-top: 20px; }
.best_board, .new_board{ width: 30%; height: 200px; }
.best_board{ margin-left: 15%; float: left; }
.new_board{ margin-right: 15%; float: right; }
.carousel-inner{ height: 750px; width: 1000px; margin: auto; }
/* .carousel-inner{ height: auto; width: auto; min-height: 600px; min-width: 1000px; margin: auto; } */

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
      <img src="${ path }/resources/images/main/grandure.jpeg" alt="Los Angeles" class="d-block w-100">
      <div class="carousel-caption">
    	<h3>GRANDEUR</h3>
    	<p>The New Grandeur (Azera) in 2023 Hyundai</p>
  	  </div>
    </div>
    <div class="carousel-item">
      <img src="${ path }/resources/images/main/ferrari.jpeg" alt="Chicago" class="d-block w-100">
      <div class="carousel-caption">
    	<h3>FERRARI</h3>
    	<p>Super Car Ferrari in 2023</p>
  	  </div>
    </div>  
    <div class="carousel-item">
      <img src="${ path }/resources/images/main/polestar2.jpeg" alt="New York" class="d-block w-100">
      <div class="carousel-caption">
    	<h3>POLESTAR2</h3>
    	<p>Coming Soon New Electronic Car in Polestar</p>
  	  </div>
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

</div>

		
</body>
</html>
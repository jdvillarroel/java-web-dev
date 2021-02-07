<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<!-- Custom Css -->
<link rel="stylesheet" type="text/css" href="css/styles.css" />

<title>Insert title here</title>

</head>
<body>
<!-- Navigation bar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">	
	  <div class="container">
	    <a class="navbar-brand" href="#">
	    Assignment - Servlets
	    </a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link ms-3 active" aria-current="page" href="#">Home</a>
	        </li>
	        <li class="nav-item">
	        	<a class="nav-link ms-3" aria-current="page" href="form.do">Student Form</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
<!-- Navigation bar -->

<!-- Main Content -->
	<div class="container">
		<h1 class="my-5">Advance Web Programming Class</h1>
		<h3>Dynamic web application.</h3>
		<p class="my-3">Students list web application. It allows you to add and remove students from the list.</p>
		<h4>To test the connection to the server press the button.</h4>
		<a class="btn btn-warning my-3" href="test.do">Send Request</a>
		<h3 class="my-4">Response from server: <%= request.getAttribute("greeting") %></h3>
	</div>
<!-- Main Content -->

	<!-- Bootstrap JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>
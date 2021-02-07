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

<title>Student Form</title>
</head>
<body>
<!-- Import java libraries -->
<%@page import="java.util.ArrayList"%>
<%@page import="com.hccs.advweb.Student"%>
<%@page import="java.util.Iterator"%>

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
	          <a class="nav-link ms-3" aria-current="page" href="/AssignmentServlets">Home</a>
	        </li>
	        <li class="nav-item">
	        	<a class="nav-link ms-3 active" aria-current="page" href="#">Student Form</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
<!-- Navigation bar -->

<!-- Main Content -->
	<div class="container">
		<h1 class="my-5">Advance Web Programming Class</h1>
		<h3>Add and Remove Students from List.</h3>
		<p>Note: To remove a student from the list, enter the row number you want to delete not the student ID. Row numbers start at one (1).</p>
		<p>Example: To remove the first row enter "1" in the <strong>Student ID</strong> box, no matter what the ID is.</p>
	</div>
	
	<div class="container my-4">
		<form method="POST" action="add-remove.do">
			<div class="row g-3 align-items-center">
			<div class="col-auto mb-3">
					<label for="id" class="form-label">Student ID</label>
					<input type="text" class="form-control" id="id" name="id"/>		    
				</div>
				<div class="col-auto mb-3">
					<label for="fName" class="form-label">First Name</label>
					<input type="text" class="form-control" id="fName" name="fName"/>		    
				</div>
				<div class="col-auto mb-3">
					<label for="lName" class="form-label">Last Name</label>
					<input type="text" class="form-control" id="lName" name="lName" />
				</div>		  
			</div>
			<button type="submit" class="btn btn-warning me-3" name="button" value="addStudent">Add Student</button>
			<button type="submit" class="btn btn-outline-dark" name="button" value="removeStudent">Remove Student</button>
		</form>
		<div class="my-5 w-75">
			<h3 class="mx-auto">Students List</h3>
			<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">Student ID</th>
			      <th scope="col">First Name</th>
			      <th scope="col">Last Name</th>
			    </tr>
			  </thead>
			  <tbody>
			  <%
				// Iterating through studentsList
				ArrayList<Student> studentsList = (ArrayList) request.getAttribute("stList");
				if(studentsList != null)  // Null check for the object
				{
					Iterator<Student> iterator = studentsList.iterator();  // Iterator interface
					
					while(iterator.hasNext())  // iterate through all the data until the last record
					{
						Student student = iterator.next(); //assign next student in list
				%>
			    <tr>
			      <th scope="row"><%= student.getId() %></th>
			      <td><%= student.getfName() %></td>
			      <td><%= student.getlName() %></td>
			    </tr>
					<%
					}
				}
				%>
			  </tbody>
			</table>
		</div>
	</div>
<!-- Main Content -->

	<!-- Bootstrap JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>
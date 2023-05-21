<%@page import="com.crud.pojo.Employee"%>
<%@page import="java.util.Optional"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>


	<div class="container text-center mt-5">
		<h1>Search Employee Details</h1>
		<form action="search" method="post">

			<div class="form-group">
				<label for="emp_ID">Employee ID</label> <input type="text"
					class="form-control" id="emp_ID" aria-describedby="empHelp"
					placeholder="Enter Id" name="emp_ID">

			</div>

			<div class="text-center">
				<button type="submit" class="btn btn-success">Search</button>
				<a href="/check" class="btn btn-danger" role="button">Home</a>
			</div>

		</form>
		<%
			Employee employee = (Employee) request.getAttribute("status");
		if (employee != null) {
		%>
		<table class="table table-bordered table-sm">
			<thead>
				<tr>
					<th>Employee_ID</th>
					<th>Name</th>
					<th>Salary</th>
					<th>Gender</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%=employee.getEmp_ID()%></td>
					<td><%=employee.getEmp_name()%></td>
					<td><%=employee.getEmp_salary()%></td>
					<td><%=employee.getEmp_gender()%></td>
				</tr>
			</tbody>
		</table>
		<%
		}
		%>

	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
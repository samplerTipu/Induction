<%@page import="com.crud.pojo.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Front Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<div class="text-center">
		<h1>All Employee Data</h1>

		<div class="container mt-5 ">

			<table class="table table-bordered table-sm">
				<thead>
					<tr>
						<th>Employee_ID</th>
						<th>Name</th>
						<th>Salary</th>
						<th>Gender</th>
					</tr>
				</thead>
				<%
				List<Employee> list = (List<Employee>) request.getAttribute("status");
				if (!list.isEmpty()) {
					for(Employee employee: list){
				%>
				<tbody>
					<tr>
						<td><%=employee.getEmp_ID()%></td>
						<td><%=employee.getEmp_name()%></td>
						<td><%=employee.getEmp_salary()%></td>
						<td><%=employee.getEmp_gender()%></td>
					</tr>
				</tbody>
			<%
					}}
			%>
			</table>
		</div>
		<div class="text-center">
				
				<a href="/check" class="btn btn-danger" role="button">Home</a>
			</div>
	</div>
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
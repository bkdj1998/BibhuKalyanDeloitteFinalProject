<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update for Customers</title>
</head>
<body>
	<h3>Customer"s Information</h3>
	<table border="1">
		<thead>
			<tr>
				<th>Customer ID</th>
				<th>Customer Name</th>
				<th>Customer City</th>
				<th>Customer Phone</th>
				<th>Customer Email-ID</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${CUSTAPP.id}</td>
				<td>${CUSTAPP.name}</td>
				<td>${CUSTAPP.city}</td>
				<td>${CUSTAPP.phone}</td>
				<td>${CUSTAPP.email}</td> 
			</tr>
		</tbody>
	</table>
</body>
</html>
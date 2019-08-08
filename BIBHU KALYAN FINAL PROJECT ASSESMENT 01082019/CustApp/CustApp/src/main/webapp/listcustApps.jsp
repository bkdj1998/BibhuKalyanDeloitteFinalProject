<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Of Present Customers</title>
</head>
<body>

	<h2>Current Customers Details:</h2>
	<table border="1">
		<thead>
			<tr>
				<th>Customer Id</th>
				<th>Customer Name</th>
				<th>Customer City</th>
				<th>Customer Phone No.</th>
				<th>Customer Email-ID</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="custApps" items="${CUSTAPPSLIST}">
				<tr>
					<td>${custApps.id}</td>
					<td>${custApps.name}</td>
					<td>${custApps.city}</td>
					<td>${custApps.phone}</td>
					<td>${custApps.email}</td> 
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
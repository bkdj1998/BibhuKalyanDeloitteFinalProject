<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" >
<title>Update Your Customer's Details</title>
</head>
<body style="color:lightblue;">
	<h2>Update Customer Details</h2>
	<form action="save" method="post">
		<table border="1">

			<tbody>
				<tr>
					<td>Customer ID</td>
					<td><input type="text" name="id" value="${CUSTAPP.id}"
						readonly="readonly"></td>
				</tr>
				<tr>
					<td>Customer Name</td>
					<td><input type="text" name="name" value="${CUSTAPP.name}"></td>
				</tr>
				<tr>
					<td>Customer City</td>
					<td><input type="text" name="city" value="${CUSTAPP.city}"></td>
				</tr>
				<tr>
					<td>Customer Phone</td>
					<td><input type="text" name="phone" value="${CUSTAPP.phone}"></td>
				</tr>
				<tr>
					<td>Customer Email</td>
					<td><input type="text" name="email" value="${CUSTAPP.email}"></td>
				</tr>
			</tbody>
		</table>
		<input type="submit" value="update">
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome To Customer App</title>
</head>
<body>
<h1>Welcome To Customer Management System!</h1>
<h3>Fill Up The Credentials To Log-In</h3>
	<form action="custApps/checkuser" method="post">
	<center><table>
	
	<tr>
		<th><b>Enter Your Name:</b></th>
		<td><input type="text" name="user" value="user"></td> 
	</tr>
	<tr>
		<th><b>Enter Your Password:</b></th>
		<td><input type="password" name="password" value="password"></td>
	</tr>
	<tr>
		<td></td>
		<td> <input type="submit" value="SUBMIT"></td>
	</tr>
	</table></center>
	</form>
</body>
</html>
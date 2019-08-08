<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add A New Customer!</title>
</head>
<body><center>
	<h3>Enter Your Customer Details:</h3>

	<form action="custApps/save" method="post">
		<table border=2>


			<tr>
				<th>Enter Customer ID<input style="align: left;" type="text" name="id"
					required autofocus /></th>
			</tr>
			<br>
			<tr>
				<th>Trainee Name<input type="text" name="name" required
					autofocus /></th>
			</tr>
				<br>
				<!--  CustApp city<input type="text" name="city" required autofocus/> -->
			<tr>
				<th>Enter Customers Residence City<select name="city">
						<option value="Select from Below">Select From Below</option>
						<option value="Hyderabad">Hyderabad</option>
						<option value="Bengaluru">Bengaluru</option>
						<option value="New Delhi">New Delhi</option>
						<option value="Kolkata">Kolkata</option>
						<option value="Bhubaneswar">Bhubaneswar</option>
						<option value="Mumbai">Mumbai</option>
						<option value="Bhopal">Bhopal</option>
						<option value="Lucknow">Lucknow</option>
						<option value="Ahmedabad">Ahmedabad</option>
						<option value="Patna">Patna</option>
						<option value="Jaipur">Jaipur</option>
						<option value="Thiruvananthapuram">Thiruvananthapuram</option>
				</select></th>
			</tr>
			<br>
			<tr>
				<th>Enter Customer Phone No.<input style="align: left;" type="text" name="phone"
					required autofocus /></th>
			</tr>
			<br>
			<tr>
				<th>Enter Customer Email-ID<input style="align: left;" type="text" name="email"
					required autofocus /></th>
			</tr>
			<br>
			<tr>
				<th><input type="submit" value="Add Customer Data"></th>
			</tr>

		</table>
	</form>
	</center>
</body>
</html>
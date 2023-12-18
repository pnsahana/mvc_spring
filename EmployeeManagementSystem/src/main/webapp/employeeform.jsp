<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Form</title>

<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 90vh;
	margin: 0px;
	background-color: black;
}

form {
	text-align: center;
}

input {
	font-size: 20px;
	border: 2px solid black;
	border-radius: 10px;
	box-shadow: 10px 10px 3px navy;
	padding-bottom: 15px;
	width: 300px;
}

button {
	font-size: 19px;
	font-family: fantasy; 
	border-radius : 7px;
	background-color: lime;
	border: none;
}

</style>
</head>
<body>
	<div class="container">
		<div class="box" style="background-color: white; border-radius: 25px;">
			<h1 style="color: red; font-family: serif;">ENTER EMPLOYEE
				DETAILS:</h1>
			<br> <br>
			<form action="saveemployee" method="post" name="employee">
				<input type="number" name="id" placeholder="Id">
				<br> <br> 
				<input type="text" name="name" placeholder="Name"> <br> <br> 
				<input type="text" name="email" placeholder="EmailId"> <br> <br> 
				<input type="tel" name="phoneno" placeholder="Phone Number"> <br>
				<br> <input type="number" name="age" placeholder="Age">
				<br> <br> <input type="text" name="gender"
					placeholder="Gender">
				<!-- <select id="gender" name="gender">
			<option value="male">Male</option>
			<option value="female">Female</option>
			<option value="other">Other</option>
		</select> -->
				<br> <br> <input type="text" name="role"
					placeholder="Role"> <br> <br> <br>
				<button type="submit">SUBMIT</button>
				<br>
				<br>
			</form>
		</div>
	</div>
</body>
</html>
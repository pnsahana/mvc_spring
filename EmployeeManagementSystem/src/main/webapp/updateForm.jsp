<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.container {
	display: flex;
	align-items: center;
	justify-content: center;
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
	
	<h2>Update The Details</h2>

		<form:form action="updateDetails" method="post" modelAttribute="employee">

			<form:input path="id" id="id" readonly="true" />
			<br>
			<br>
			<form:input path="name" id="name" />
			<br>
			<br>
			<form:input path="email" id="email" />
			<br>
			<br>
			<form:input path="phoneno" id="phoneno" />
			<br>
			<br>
			<form:input path="age" id="age" />
			<br>
			<br>
			<form:input path="gender" id="gender" />
			<br>
			<br>
			<form:input path="role" id="role" />
			<br>
			<br>
			<button type="submit">Update</button>

		</form:form>
	</div>
</body>
</html>
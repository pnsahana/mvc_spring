<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container" align="center">

		<h4>The Employee Name is: ${emp.getName()}</h4>
		<h4>The Employee Email is: ${emp.getEmail()}</h4>
		<h4>The Employee Phone Number is: ${emp.getPhoneno()}</h4>
		<h4>The Employee Age is: ${emp.getAge()}</h4>
		<h4>The Employee Gender is: ${emp.getGender()}</h4>
		<h4>The Employee Role is: ${emp.getRole()}</h4>
		
		<button>Back</button>

	</div>
</body>
</html>
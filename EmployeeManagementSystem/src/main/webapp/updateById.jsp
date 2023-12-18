<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	height: 150px;
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

		<form action="updateById" method="post">
			<h1>Enter Id To Be Searched</h1>
			<input type="text" name="id" placeholder="ID"> <br> <br>
			<button type="submit">Update</button>
		</form>

	</div>
</body>
</html>
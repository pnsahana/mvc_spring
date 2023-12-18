<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<html>

<head>
<style>
.container {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 70vh
}

button {
	border: none;
	border-radius: 10px;
	margin: 10px;
	padding: 10px;
	width: 100px;
	font-family: fantasy;
}
</style>
</head>
<body>
	<div class="container">

		<div>${msg}</div><br><br>
		<div>
		<a href="insert"><button style="background-color: lightgreen;">Create</button></a> <br> <br>
		<a href="find"><button style="background-color: pink;">Find</button></a> <br><br>
		<a href="update"><button style="background-color: yellow;">Update</button></a> <br><br>
		<a href="delete"><button style="background-color: red;">Delete</button></a>
		</div>

	</div>
</body>
</html>

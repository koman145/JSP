<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>Insert title here</title>
			<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
				<link href="signin.css" rel="stylesheet">
</head>
<body>

	<div class="container">
		<form action="JSP/chap04/Agreement.jsp" method="post"
			class="form-signin">
			<h2 class="form-signin-heading"></h2>
			<label for="inputID" class="sr-only">ID</label> <input type="text"
				id="inputID" name="ID" class="form-control" placeholder="ID"
				required autofocus> <label for="inputPassword"
				class="sr-only">Password</label> <input type="password"
				id="inputPassword" name="PASSWORD" class="form-control"
				placeholder="Password" required>
					<div class="checkbox">
						<label> <input type="checkbox" value="remember-me">Remember
								me</label>
					</div>
					<button class="btn btn-lg btn-primary btn-block" type="submit">LogIn</button>
					<button class="btn btn-lg btn-primary btn-block" type="submit"
						onclick="location.href='Join1.jsp' ">Join</button>
		</form>

	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	

</body>
</html>
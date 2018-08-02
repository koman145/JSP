<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>회원 가입</title>
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="signin2.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<form action="Subscription.jsp" method="post" class="form-signin">
			<h2 class="form-signin-heading">회원 정보를 입력하세요.</h2>
			
			<label for="inputPassword" class="sr-only">이름</label> 
			<input type="text" id="inputName" name="name" class="form-control" placeholder="Name" required>
			
			<label for="inputID" class="sr-only">ID</label> 
			<input type="text" id="inputID" name="id" class="form-control" placeholder="ID" required autofocus> 
			
			<label for="inputPassword" class="sr-only">Password</label> 
			<input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required> 
			
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">확인</button>
			<button class="btn btn-lg btn-primary btn-block" type="reset">취소</button>
		</form>
	</div>
</body>
</html>
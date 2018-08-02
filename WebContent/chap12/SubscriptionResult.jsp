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
<title>회원 가입 결과</title>
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="signin2.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<h1 class="form-signin-heading">회원 가입 결과</h1>
		<h3 class="form-signin-heading">가입되었습니다.</h3>
		<form action="ShowAll.jsp">
			<button class="btn btn-lg btn-primary btn-block" type="submit">회원 모두 보기</button>
		</form>
	</div>
</body>
</html>
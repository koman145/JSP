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

	<form action="Login.html" name="form" method="post">
		<article class="container">
		<div class="col-md-12">
			<div class="page-header">
				<h1>
					회원가입<small>@@@</small>
				</h1>
			</div>
			<div class="container">
				<center>
					<h3>@@@ 회원가입이 완료되었습니다.</h3>
					<br /> <br />
					<p class="help-block">회원님은 @@@의 모든 기능을 사용할 수 있습니다.</p>
					<br />
					<p class="help-block">로그인 후 이용 가능합니다.</p>
				</center>
				<center>
					<button class="btn btn-lg btn-default" type="submit">로그인 하기</button>
				</center>
			</div>
		</div>
		</article>
	</form>

</body>
</html>

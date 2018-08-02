<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.Random"%>
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
<script language="javascript" type="text/javascript">
	function openWin() {
		window
				.open("Send.jsp", "인증번호 전송",
						"width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	}
</script>
<body onLoad="javascriptopen_win();">

	<article>
	<div class="col-md-12">
		<div class="page-header">
			<h1>본인인증</h1>
		</div>
		<form action="Join2.jsp" class="form-horizontal" method="post">
			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputName">이름</label>
				<div class="col-sm-6">
					<input class="form-control" id="inputName" type="text"
						placeholder="이름">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
				<div class="col-sm-6">
					<input type="tel" class="form-control" id="inputName"
						name="phoneNumber" placeholder="- 없이 입력해 주세요" />
				</div>

			</div>
			<div class="form-group">
				<div class="col-sm-12 text-center">
					<button class="btn btn-primary" type="submit" onclick="javascript:openWin();">
						인증번호 전송<i class="fa fa-check spaceLeft"></i>
					</button>
					<button class="btn btn-danger" type="submit">
						가입취소<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</div>
		</form>
		<hr>
	</div>
	</article>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>



</body>
</html>
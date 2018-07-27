<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>이름 입력</title>
</head>
<body>
	당신의 이름을 입력하세요.
	<form action="/JSP/Hi.jsp" method="get">
		이름 : <input type="text" name="YOURNAME" />
		<input type="submit" value="확인" />
	</form>
</body>
</html>
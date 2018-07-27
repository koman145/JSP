<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean class="chap08.ProductInfo" id="pinfo" scope="request" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
코드 : <jsp:getProperty property="code" name="pinfo"/> <br/>
제품명 : <jsp:getProperty property="name" name="pinfo"/> <br/>
가격 : <jsp:getProperty property="price" name="pinfo"/> <br/>
</body>
</html>

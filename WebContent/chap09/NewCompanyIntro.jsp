<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="Intro" />
<fmt:message var="title" key="TITLE" />
<fmt:message var="greeting" key="GREETING" />
<fmt:message var="body" key="BODY" />
<fmt:message var="companyName" key="COMPANY_NAME" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>${title }</title>
</head>
<body>
	<h3>${title }</h3>
	${greeting }
	<br />
	<br /> ${body }
	<br />
	<br />
	<font size=2>${companyName }</font>
</body>
</html>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" isErrorPage="true"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	response.setStatus(200);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>숫자 포맷 에러</title>
</head>
<body>
	숫자 포맷이 잘못되었습니다.
	<br />
	<br /> 상세 에러 메시지 :
	<%=exception.getMessage()%>
</body>
</html>
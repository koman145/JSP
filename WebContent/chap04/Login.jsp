<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("ID");
		String password = request.getParameter("PASSWORD");
		if (loginCheck(id, password))
			session.setAttribute("LOGIN_ID", id);
		response.sendRedirect("LoginResult.jsp");
	%>
</body>
</html>

<%!private boolean loginCheck(String id, String password) {
		if (id.equals("minerva") && password.equals("1234"))
			return true;
		else if (id.equals("ironman") && password.equals("4567"))
			return true;
		else if (id.equals("snowwhite") && password.equals("7890"))
			return true;
		else
			return false;
	}%>
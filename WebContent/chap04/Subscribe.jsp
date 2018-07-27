<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<%
		String agree = request.getParameter("AGREE");
		String result = null;
		if (agree.equals("YES")) {
			String id = (String) session.getAttribute("ID");
			String password = (String) session.getAttribute("PASSWORD");
			String name = (String) session.getAttribute("NAME");
			PrintWriter writer = null;
			try {
				String filePath = application.getRealPath("/WEB-INF/" + id + ".txt");
				writer = new PrintWriter(filePath);
				writer.println("아이디 : " + id);
				writer.println("패스워드 : " + password);
				writer.println("이름 : " + name);
				result = "SUCCESS";
			} catch (IOException ioe) {
				result = "FAIL";
			} finally {
				try {
					writer.close();
				} catch (Exception e) {
				}
			}
		} else {
			result = "FAIL";
		}
		session.invalidate();
		response.sendRedirect("Result.jsp?RESULT=" + result);
	%>
</body>
</html>
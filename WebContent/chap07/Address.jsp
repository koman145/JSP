<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
	HashMap<String, String> map = new HashMap<String, String>();
	map.put("Edgar", "보스턴");
	map.put("Thomas", "오하이오");
	map.put("John", "워싱턴");
	request.setAttribute("ADDRESS", map);
	RequestDispatcher rd = request.getRequestDispatcher("AddressView.jsp");
	rd.forward(request, response);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>

</body>
</html>
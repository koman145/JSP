<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.io.UnsupportedEncodingException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	request.setCharacterEncoding("UTF-8");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String phoneNo = request.getParameter("phoneNo");
	String address = request.getParameter("address");
	
	if (email == null || password == null || name == null)
		throw new Exception("데이터를 입력하세요.");
	Connection conn = null;
	PreparedStatement pstmt = null;
	//Statement stmt = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?useUnicode=true&characterEncoding=UTF-8","root","12345");
		if (conn == null)
			throw new Exception("데이터베이스에 연결할 수 없습니다. <br/> ");
		
		String sql = "insert into userinfomation (umail, upw, uname, upno, uaddress) values (?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, email);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setString(4, phoneNo);
		pstmt.setString(5, address);
		
		int rowNum = pstmt.executeUpdate();
		if (rowNum < 1)
			throw new Exception("데이터를 DB에 입력할 수 없습니다.");
	} finally {
		try {
			pstmt.close();
		} catch (Exception ignored) {

		}
		try {
			conn.close();
		} catch (Exception ignored) {

		}
	}
	response.sendRedirect("SubscriptionResult.html");
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
<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.ArrayList"%>
<%@page import="chap12.SubscribeInfo"%>
<%@page import="java.io.UnsupportedEncodingException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="DBError.jsp"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	ArrayList<SubscribeInfo> sbInfoList = new ArrayList<SubscribeInfo>();
	SubscribeInfo sbInfo;

	Connection conn = null;
	Statement stmt = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?useUnicode=true&characterEncoding=UTF-8","root","12345");
		if (conn == null)
			throw new Exception("데이터베이스에 연결할 수 없습니다. <br/> ");
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from userinfo;");
		
		while (rs.next()) {
			sbInfo = new SubscribeInfo();
			sbInfo.setUid(rs.getString("uid"));
			sbInfo.setUname(rs.getString("uname"));
			
			sbInfoList.add(sbInfo);
			
			request.setAttribute("SbInfoList", sbInfoList);
		}
	} finally {
		try {
			stmt.close();
		} catch (Exception ignored) {

		}
		try {
			conn.close();
		} catch (Exception ignored) {

		}
	}
	RequestDispatcher rd = request.getRequestDispatcher("ShowAllView.jsp");
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

<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String code = request.getParameter("code");
	Connection conn = null;
	PreparedStatement pstmt = null;
	try {
		Class.forName("org.apache.commons.dbcp.PoolingDriver");
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:/webdb_pool");
		if (conn == null)
			throw new Exception("데이터베이스에 연결할 수 없습니다. <br/> ");
		
		String sql = "select * from goodsinfo where gcode = ?;";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, code);

		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next()){
			String title = rs.getString("title");
			String writer = rs.getString("writer");
			int price = rs.getInt("price");
			request.setAttribute("CODE", code);
			request.setAttribute("TITLE", title);
			request.setAttribute("WRITER", writer);
			request.setAttribute("PRICE", price);
		}
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
	RequestDispatcher rd = request.getRequestDispatcher("GoodsInfoViewer.jsp");
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
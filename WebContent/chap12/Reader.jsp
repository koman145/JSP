<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.sql.*"%>
<%
	String code = request.getParameter("code");
	if (code == null)
		throw new Exception("상품 코드를 입력하세요.");
	Connection conn = null;
	PreparedStatement pstmt = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/webdb?useUnicode=true&characterEncoding=UTF-8", "root", "12345");
		if (conn == null)
			throw new Exception("데이터베이스에 연결할 수 없습니다. <br/> ");

		String sql = "Select * from goodsinfo where gcode = ? ;";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, code);

		ResultSet rs = pstmt.executeQuery();
		if (!rs.next())
			throw new Exception("상품코드(" + code + ")에 해당하는 데이터가 없습니다.");

		String title = rs.getString("title");
		String writer = rs.getString("writer");
		int price = rs.getInt("price");
		request.setAttribute("CODE", code);
		request.setAttribute("TITLE", title);
		request.setAttribute("WRITER", writer);
		request.setAttribute("PRICE", price);

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
	RequestDispatcher rd = request.getRequestDispatcher("EditForm.jsp");
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
<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.*, java.text.*, java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>게시판 글쓰기 - 결과화면</title>
</head>
<body>
	<h2>글쓰기</h2>
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("NAME");
		String title = request.getParameter("TITLE");
		String content = request.getParameter("CONTENT");
		String result;
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy.MM.dd HH_mm_ss", Locale.KOREA);
		Date date = new Date();
		Long time = date.getTime();
		String strTime = simpleDateFormat.format(date);
		
		
		String filename = strTime + ".txt";
		
		PrintWriter writer = null;
		try {
			String filePath = application.getRealPath("/WEB-INF/bbs/" + filename);
			writer = new PrintWriter(filePath);
			writer.printf("제목 : %s %n", title);
			writer.printf("글쓴이 : %s %n", name);
			writer.println(content);
			result = "SUCCESS";
			out.println(filePath + "위치에" + filename + "이름으로" + "저장되었습니다.");
		} catch (IOException ioe) {
			result = "FAIL";
			out.println("파일에 데이터를 쓸 수 없습니다.");
		} finally {
			try {
				writer.close();
			} catch (Exception e) {
			}
		}

		response.sendRedirect("BBSPostResult.jsp?RESULT=" + result);
	%>

</body>
</html>
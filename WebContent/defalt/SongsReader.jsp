<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>노래 파일 목록</title>
</head>
<body>

<h1>노래 파일 목록</h1>
	<%
		String dirPath = application.getRealPath("/WEB-INF/songs");
		File dirFile = new File(dirPath);
		String []fileList = dirFile.list();

		for (String tempFile : fileList) {
			//if (tempFile.isFile()) {
				//String tempFileName = tempFile.getName();
				out.println("<a href='" + tempFile.replaceAll(".txt", ".jsp") + "'>" + tempFile + "</a>" + "<br/>");
//			}
		}
	%>
</body>
</html>
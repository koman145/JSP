<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기 - 입력화면</title>
</head>
<body>
	<h2>글쓰기</h2>
	<form action="BBSPost.jsp" method=POST>
		이름: <input type="text" name="NAME"><br> 
		제목: <input type="text" name="TITLE"><br>
		<textarea rows="5" cols="30" name="CONTENT"></textarea><br> 
		<input type="SUBMIT" value='저장'> 
		<input type="RESET" value='취소'>
	</form>
</body>
</html>
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
	<form action="NewerCustomerInfo.jsp" method=GET>
		이름: <input type="text" name="name"><br> 
		성별: <input type="text" name="gender"><br>
		나이: <input type="text" name="age"><br>
		<input type="SUBMIT" value='저장'> 
		<input type="RESET" value='취소'>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성격테스트</title>
</head>
<body>
<h2>성격테스트</h2>
당신의 성격을  테스트합니다. 데이터를 입력한 후 확인 버튼을 눌러주세요.
	<form action="/JSP/ptest" method="get">
		이름은? : <input type="text" name="NAME"><br><br> 
		좋아하는 색은? : 
			노랑<input type="radio" name="COLOR" value="YELLOW">
			빨강<input type="radio" name="COLOR" value="RED">
			파랑<input type="radio" name="COLOR" value="BLUE"><br><br> 
		좋아하는 동물은? : 
		<select name="ANIMAL">
			<option>개</option>
			<option>고양이</option>
			<option>늑대</option>
			<option>기타</option>
		</select><br><br> 
		좋아하는 음식은? (모두 고르세요): 
			짜장면<input type="checkbox" name="JAJANGMYEON">
			짬뽕<input type="checkbox" name="JJAMPPONG"> 
			탕수육<input type="checkbox" name="TANGSUYUK"><br><br> 
		<input type="SUBMIT" value="확인">
	</form>
</body>
</html>
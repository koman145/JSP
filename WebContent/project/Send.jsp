<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.sun.xml.internal.bind.v2.runtime.Location"%>
<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<%
		Random key = new Random(System.currentTimeMillis());
		int result = (int) Math.abs(key.nextInt(899999) + 100000);
		String code = String.valueOf(result);
		String phoneNumber = request.getParameter("phoneNumber");
	%>

	<form id="Send" method="post" action="http://api.coolsms.co.kr/sendmsg"
		enctype="multipart/form-data">
		<ul>
			<%=phoneNumber%>
			<input type="text" name="code" value="<%=code%>" />
			<li>User Id: <input type="hidden" name="user" value="koman145" /></li>
			<li>Password: <input type="hidden" name="password"
				value="a4182960" /></li>
			<li>To: <input type="hidden" name="to" value="<%=phoneNumber%>" /></li>
			<li>From: <input type="hidden" name="from" value="01058099521" /></li>
			<li>Text: <input type="hidden" name="text"
				value="[본인확인]인증번호 [<%=code%>]를 화면에 입력해주세요." /></li>
			<li>Type: <select name="hidden">
					<option value="SMS">SMS</option>
					<option value="LMS">LMS</option>
					<option value="MMS">MMS</option>
			</select></li>
			<li><input type="submit" value="Submit" /></li>

		</ul>
	</form>

	<script type="text/javascript">
		this.document.getElementById("Send").submit();
	</script>

	<%
		out.println("<script>");
		out.println("alert('인증 번호가 전송되었습니다..')");
		out.println("location.href='resistration.html'");
		out.println("</script>");
	%>

</body>
</html>
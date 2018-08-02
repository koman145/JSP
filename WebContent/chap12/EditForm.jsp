<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>상품 정보 관리</title>
</head>
<body>
	<h4>상품 정보를 수정한 후 수정 버튼을 누르세요.</h4>
	<form action="Updater.jsp" method="post">
		코드: <input type="text" name="code" size="5" value="${CODE }" readonly="true" />
		제목: <input type="text" name="title" size="50" value="${TITLE }"/>
		저자: <input type="text" name="writer" size="20" value="${WRITER }"/>
		가격: <input type="text" name="price" size="8" value="${PRICE }"/>
		<input type="submit" value="수정" />
	</form>
</body>
</html>
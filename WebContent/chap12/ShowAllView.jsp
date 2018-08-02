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
<title>회원 정보</title>
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="signin.css" rel="stylesheet">
</head>
<body>
<h3 class="form-signin-heading">회원 정보</h3>
<c:forEach var="sbInfoList" items="${SbInfoList }" varStatus="status">
회원 아이디 : ${sbInfoList.uid } <br/>
회원 이름 : ${sbInfoList.uname } <br/><br/>
</c:forEach>

</body>
</html>
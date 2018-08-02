<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
</head>
<body>
<%
String code = request.getParameter("code");
%>
<script>
function check() {
  if(fr.checkNo.value != "<%=code%>") {
    alert("인증번호가 틀립니다.");
    fr.checkNo.focus();
    return false;
  }
  else return true;
}

</script>
 
  <article>
        <div class="col-md-12">
        <div class="page-header">
    	    <h1>본인 인증</h1>
    	    <%=code %>
        </div>
        <form action="resistration.html" class="form-horizontal" method="get" onsubmit="return check()">
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputNumberCheck">인증번호 확인</label>
          <div class="col-sm-6">
              <input class="form-control" id="inputNumberCheck" type="text" placeholder="인증번호" name="checkNo">
            <p class="help-block">전송된 인증번호를 입력해주세요.</p>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit" >인증번호 확인<i class="fa fa-check spaceLeft"></i></button>
            <button class="btn btn-danger" type="submit">가입취소<i class="fa fa-times spaceLeft"></i></button>
          </div>
        </div>
        </form>
          <hr>
        </div>
      </article>
      
      

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
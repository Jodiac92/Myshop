<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//session.invalidate();
session.removeAttribute("idkey");
%>
<script type="text/javascript">
alert("로그아웃 성공");
//location.href = "login.jsp";
location.href = "../guest/guest_index.jsp"; //로그아웃시 이동페이지
</script>
</body>
</html>
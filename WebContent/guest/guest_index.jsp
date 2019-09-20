<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" ></link> <!-- style.css스타일참조 -->
<script type="text/javascript" src="../js/script.js"></script> <!-- script.js동작참조 -->
</head>
<body style="top:20px">
<table style="width: 90px">
	<tr>
		<td style="font-size: 24px">자바 전문 쇼핑몰</td>
	</tr>
</table>

<%@ include file="guest_top.jsp" %> <!-- 초반 -->
<table style="width: 90%">
<% if(memid !=null){ %>
	<tr style="text-align: center;">
		<td style="fint-size: 20px;">
			<%=memid %>님! 방문을 환영합니다.
		</td src="../images/pic2.gif">
	</tr>
<%}else{ %>
	<tr style="text-align: center;">
		<td style="font-size: 20px; background-image: url(../images/pic.jpg); background-size: 100%;">
			<br></br><br></br><br></br><br></br>고객님 어서오세요
			<br></br><br></br><br></br><br></br>로그인 후 이용바랍니다.
		</td>
	</tr>
<%} %>
</table>
<%@ include file="guest_bottom.jsp" %> <!-- 초반 -->
</body>
</html>
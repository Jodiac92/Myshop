<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String adminid = (String)session.getAttribute("adminKey"); //로그인을 하면 여기로온다.
if(adminid == null){
	response.sendRedirect("adminlogin.jsp"); //관리자 로그인으로감
}
%>
<table style="width: 90%">
	<tr style="background-color: #aabbcc; text-align: center;"> <!--관리자 로그인을하면 여기로온다-->
		<td><a href="../guest/guest_index.jsp">홈페이지</a></td>
		<td><a href="adminlogout.jsp">로그아웃</a></td>
		<td><a href="membermanager.jsp">회원관리</a></td>
		<td><a href="productmanager.jsp">상품관리</a></td>
		<td><a href="ordermanager.jsp">주문관리</a></td>
	</tr>
</table>
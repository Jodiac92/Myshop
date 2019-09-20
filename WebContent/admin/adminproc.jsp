<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberMgr" class="shop.member.MemberMgr" />
<%
String adminid = request.getParameter("adminid"); // adminlogin에서 id pw를 받아온다
String adminpasswd = request.getParameter("adminpasswd");

boolean b = memberMgr.adminloginCheck(adminid,adminpasswd); //db가져감 ->있으면 if 아니면 else

if(b){
	session.setAttribute("adminKey", adminid); //관리자 세션 설정, admin_top에서 읽는다
	response.sendRedirect("admin_index.jsp");
}else{
%>
	<script>
	alert("관리자 입력자료 불일치");
	location.href = "adminlogin.jsp"
	</script>
<%
}
%>

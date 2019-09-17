<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberMgr" class="shop.member.MemberMgr"></jsp:useBean>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");

boolean b = memberMgr.loginChk(id, passwd); //Mgr

if(b){
	session.setAttribute("idkey", id);
	//response.sendRedirect("login.jsp");
	response.sendRedirect("../guest/guest_index.jsp");
}else{
	response.sendRedirect("loginfail.html");
}
%>
<!-- 로그인판단 -->
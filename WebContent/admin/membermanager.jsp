<%@page import="shop.member.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberMgr" class="shop.member.MemberMgr" scope="page" /> <!-- db로감 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" ></link>
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body>
**관리자 - 전체회원관리 **
<%@ include file="admin_top.jsp" %> <!--include file="admin_top.jsp"는 관리자가 로그인을 해야만 창을 만든다.(독립적으로 수행x) -->
<table style="width: 90%">
	<tr style="background-color: cyan ">
		<th>아이디</th><th>회원명</th><th>비밀번호</th><th>이메일</th><th>전화</th><th>수정</th>
	</tr>
	<%
	ArrayList<MemberDto> list = memberMgr.getMemberAll();
	for(MemberDto m:list){ //향상된 for문 = (int i=0; i<list.size(); i++)
	%>
	<tr>
		<td><%=m.getId() %></td> <!-- m=memberdto 타입  -->
		<td><%=m.getName() %></td>
		<td><%=m.getPasswd() %></td>
		<td><%=m.getEmail() %></td>
		<td><%=m.getPhone() %></td>
		<td>
			<a href="javascript:memUpdate('<%=m.getId() %>')">수정하기</a> <!-- script.js에  memupdate로가서 getid값을 주고 아래있는 id로 값을 보낸다 -->
		</td>
	</tr>
	<%
	}
	%>
</table>
<%@ include file="admin_bottom.jsp" %>

<form action="memberupdate2.jsp" name="updateFrm" method="post"> <!-- 수정하기 아이디 보내기 -->
<input type="hidden" name="id">
</form>
</body>
</html>
<%@page import="shop.member.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberMgr" class="shop.member.MemberMgr" />
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");

MemberDto dto = memberMgr.getMember(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자로 회원수정</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" ></link>
<script type="text/javascript" src="../js/script.js"></script>
<script type="text/javascript">
window.onload = function(){
	document.getElementById("btnUpdateAdmin").onclick = memberUpdateAdmin; 
	document.getElementById("btnUpdateCancelAdmin").onclick = memberUpdateCancelAdmin; 
}
</script>
</head>
<body>
<br><br>
<form action="memberupdateproc2.jsp" name="updateformAdmin" method="post"> <!-- updateformAdmin을 script.js로 보냄 -->
<table border="1" style="width: 90%">
	<tr style="background-color: cyan;">
		<td colspan="2" style="text-align: center;">
			<b><%=dto.getId() %></b> 회원님의 정보를 수정합니다.
		</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><%=dto.getId() %>
		 <!-- 보이지않고 보내고 싶을 때 hidden -->
		 <input type="hidden" name="id" value="<%=dto.getId()%>">
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="text" name="passwd" value="<%=dto.getPasswd() %>"></td> <!-- memberbean에 있는것하고 맞춘다 -->
	</tr>
	<tr>
		<td>회원명</td>
		<td><input type="text" name="name" value="<%=dto.getName() %>"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email" value="<%=dto.getEmail() %>"></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="phone" value="<%=dto.getPhone() %>"></td>
	</tr>
	<tr>
		<td>우편번호</td>
		<td><input type="text" name="zipcode" value="<%=dto.getZipcode() %>"></td>
	</tr>
	<tr>
		<td>주소</td>
		<td><input type="text" name="address" value="<%=dto.getAddress() %>" size="100%"></td>
	</tr>
	<tr>
		<td>직업</td>
		<td>
			<select name=job>
					<option value="<%=dto.getJob() %>"><%=dto.getJob() %></option>
					<option value="회사원">회사원</option>
					<option value="학생">학생</option>
					<option value="자영업">자영업</option>
					<option value="주부">주부</option>
					<option value="기타">기타</option>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2" style="text-align: center;"> <!-- 버튼만드는곳 -->
			<input type="button" value="수정완료" id="btnUpdateAdmin"> <!-- 위로버튼연결시켜야됨->24 -->
			<input type="button" value="수정취소" id="btnUpdateCancelAdmin">
		</td>
	</tr>
</table>
</form>
</body>
</html>
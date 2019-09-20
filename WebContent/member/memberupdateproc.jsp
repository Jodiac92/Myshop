<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mbean" class="shop.member.MemberBean" />
<jsp:setProperty property="*" name="mbean" /> <!-- mbean -> MemberBean을타고 넘어옴 -->
<jsp:useBean id="memberMgr" class="shop.member.MemberMgr" />
<%
String id = (String)session.getAttribute("idkey");
//String id = mbean.getId(); 히든을 썻을 때 String id = mbean.getId();로 받음
boolean b = memberMgr.memberUpdate(mbean, id);

if(b){
%>
	<script>
		alert('수정성공');
		location.href="../guest/guest_index.jsp";
	</script>
<%}else{%>
	<script>
		alert('수정실패\n관리자에게 문의 바람');
		history.back();
	</script>
<%
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
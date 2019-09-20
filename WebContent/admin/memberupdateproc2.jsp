<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bean" class="shop.member.MemberBean" /> <!-- id=bean / MemberBean bean2 = new Memberbean -->
<jsp:setProperty property="*" name="bean" />
<jsp:useBean id="memberMgr" class="shop.member.MemberMgr" />
<%
boolean b = memberMgr.memberUpdate(bean, bean.getId()); //수정에 성공하면 true 실패하면 false
if(b){
%>
	<script>
	alert("수정성공");
	location.href = "membermanager.jsp";
	</script>
<%}else{ %>
	<script>
	alert("수정실패\n관리자에게 문의 바람");
	history.back();
	</script>
<%
}
%>




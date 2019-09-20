<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" ></link>
<script type="text/javascript" src="../js/script.js"></script>
<script type="text/javascript">
window.onload = function(){ //callback function 시스템에의해 호출
	document.getElementById("btnAdminLogin").onclick = funcAdminLogin;
	document.getElementById("btnAdminHome").onclick = funcAdminHome;
}

function funcAdminLogin(){
	//alert('wow');
	if(adminlogin.adminid.value === ""){
		alert("아이디 입력");
		adminlogin.adminid.focus();
		return;
	}
	if(adminlogin.adminpasswd.value === ""){
		alert("비밀번호 입력");
		adminlogin.adminpasswd.focus();
		return;
	}
	adminlogin.submit(); //위에 메서드가 트루면 submit하라
}
function funcAdminHome(){ //이후 관리자가 맞는지 아닌지 판단하는 페이지로 가야됨
	//alert('good');
	location.href = "../guest/guest_index.jsp";
}

</script>
</head>
<body>
<form action="adminproc.jsp" name="adminlogin" method="post"> <!-- 아래있는 태그들이 name으로 이름이 붙어져 action으로 간다 -->
<table>
	<tr>
		<td colspan="2">* 관리자 로그인 *</td>
	</tr>
	<tr>
		<td>i d: </td>
		<td><input type="text" name="adminid"> </td>
	</tr>
	<tr>
		<td>passwd: </td>
		<td><input type="text" name="adminpasswd"> </td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="button" value="관리자 로그인" id="btnAdminLogin">
		<input type="button" value="메인 페이지" id="btnAdminHome">
		</td>
	</tr>
</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품추가</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" ></link> 
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body>
<br>
<%@ include file = "admin_top.jsp" %>
<form action="productproc.jsp?flag=insert" method="post" enctype="multipart/form-data"> <!-- enctype를 이용해 이미지를 넘긴다 -->
<table style="width: 90%">
	<tr>
		<td colspan="2">*상품 등록*</td>
	</tr>
	<tr>
		<td>상품명 : </td>
		<td><input type="text" name="name"> </td>
	</tr>
	<tr>
		<td>가격 : </td>
		<td><input type="text" name="price"> </td> <!-- ProductBean하고 이름을 맞춰야됨 -->
	</tr>
	<tr>
		<td>설 명 : </td>
		<td><textarea rows="5" cols="60" name="detail"></textarea> </td>
	</tr>
	<tr>
		<td>재고량 : </td>
		<td><input type="text" name="stock"> </td>
	</tr>
	<tr>
		<td>이미지 : </td>
		<td><input type="file" name="image" size="30"> </td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" value="상품등록">
		<input type="reset" value="새로입력">
		</td>
	</tr>
</table>
</form>
<%@ include file = "admin_bottom.jsp" %>
</body>
</html>
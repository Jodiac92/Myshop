<%@page import="shop.product.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productMgr" class="shop.product.ProductMgr" />
<%
ProductBean bean = productMgr.getProduct(request.getParameter("no")); //수정할 데이터를 db에서 읽는다
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" ></link> 
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body>
<br>
<%@ include file = "admin_top.jsp" %>
<form action="productproc.jsp?flag=update" method="post" enctype="multipart/form-data">  <!--productproc는 컨트롤러  -->
<table style="width: 90%">
	<tr>
		<td colspan="2">*상품 수정*</td>
	</tr>
	<tr>
		<td>상품명 : </td>
		<td><input type="text" name="name" value="<%=bean.getName() %>"></td>
	</tr>
	<tr>
		<td>가격 : </td>
		<td><input type="text" name="price" value="<%=bean.getPrice() %>"></td> <!-- ProductBean하고 이름을 맞춰야됨 -->
	</tr>
	<tr>
		<td>설 명 : </td>
		<td><textarea rows="5" cols="60" name="detail"><%=bean.getDetail() %></textarea></td>
	</tr>
	<tr>
		<td>재고량 : </td>
		<td><input type="text" name="stock" value="<%=bean.getStock() %>"></td>
	</tr>
	<tr>
		<td>이미지 : </td>
		<td>
		<img src="../data/<%=bean.getImage() %>">
		<input type="file" name="image" size="30">
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="hidden" name="no" value="<%=bean.getNo() %>">
		<input type="submit" value="상품수정">
		<input type="button" value="수정취소" onclick="history.back()">
		</td>
	</tr>
</table>
</form>
<%@ include file = "admin_bottom.jsp" %>
</body>
</html>
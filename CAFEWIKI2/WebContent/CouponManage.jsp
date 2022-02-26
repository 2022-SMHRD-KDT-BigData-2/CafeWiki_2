<%@page import="Model.CouponVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% CouponVO svo = (CouponVO)request.getAttribute("svo"); %>
<h1>Cafe Wiki</h1>
<p><%=svo.getId() %>님</p>
<form action="couponUpdate.do" method="post">
<input type="radio" name="update" value="적립"> 적립
<input type="radio" name="update" value="사용"> 사용
<input type="text" name="count">
<input type="submit" value="적용">
</form>

</body>
</html>
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
<form action="couponUpdate.do?id=<%=svo.getId()%>" method="post" onsubmit="return confirm('<%=svo.getId()%>님에게 적립/사용하는 것이 맞습니까?');">
<input type="radio" name="update" value="plus"> 적립
<input type="radio" name="update" value="minus"> 사용<br>
<input type="text" name="stamp">
<input type="submit" value="적용">
</form>

</body>
</html>
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
<p><%=svo.getId() %>��</p>
<form action="couponUpdate.do?id=<%=svo.getId()%>" method="post" onsubmit="return confirm('<%=svo.getId()%>�Կ��� ����/����ϴ� ���� �½��ϱ�?');">
<input type="radio" name="update" value="plus"> ����
<input type="radio" name="update" value="minus"> ���<br>
<input type="text" name="stamp">
<input type="submit" value="����">
</form>

</body>
</html>
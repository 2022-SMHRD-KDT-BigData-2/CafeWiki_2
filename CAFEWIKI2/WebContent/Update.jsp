<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%MemberVO vo =  (MemberVO)session.getAttribute("vo");%>
<h1>ȸ����������</h1>
<form action="update.do" method="post">
<h3>������ ȸ�� : <%=vo.getName() %></h3>

</body>
</html>
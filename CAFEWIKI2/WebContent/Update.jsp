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
<h1>회원정보수정</h1>
<form action="update.do" method="post">
<h3>접속한 회원 : <%=vo.getName() %></h3>

</body>
</html>
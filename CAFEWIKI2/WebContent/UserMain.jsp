<%@page import="Model.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="Model.BoardVO"%>
<%@page import="Model.CafeVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div#picture {
	width: 100px;
	height: 100px;
	background-color: blue;
}
</style>
</head>
<body>

	<%
		MemberVO vo = (MemberVO) session.getAttribute("vo");
	%>
	<h1>회원main입니다.</h1>
	<%
		if (vo != null) {
	%>
	<h1><%=vo.getName()%>님 환영합니다.
	</h1>
	<%
		}
	%>



</body>
</html>
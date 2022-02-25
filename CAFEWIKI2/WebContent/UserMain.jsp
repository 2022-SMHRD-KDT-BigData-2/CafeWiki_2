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
@font-face {
	font-family: '3OF9_NEW';
	src: url("./font/3OF9_NEW.TTF");
}
</style>
</head>
<body>

	<%
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		List<CafeVO> clist = (List<CafeVO>)request.getAttribute("clist");
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

	<h1 style="font-family: '3OF9_NEW';"><%="*" + vo.getU_num() + "*"%></h1>
	<h3><%=vo.getU_num()%></h3>
	
	
</body>
</html>
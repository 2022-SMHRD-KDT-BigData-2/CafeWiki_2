<%@page import="java.util.ArrayList"%>
<%@page import="Model.CouponVO"%>
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
		List<CafeVO> clist = (List<CafeVO>)session.getAttribute("clist");
		List<CouponVO> slist = (List<CouponVO>)session.getAttribute("slist");

	%>
	<a onclick="location.href='logout.do'">로그아웃</a>
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
	
	<% 
	List<String> CafeName = new ArrayList<String>();
	for(CafeVO cvo : clist){
		if(!CafeName.contains(cvo.getStore())){
			CafeName.add(cvo.getStore());
		}
	}%>
	
	<% 
	for(int i=0; i<CafeName.size();i++){
		%>	
		<h4><%=CafeName.get(i) %></h4>		
	<%}%>
	
	<a href="Update.jsp">정보수정</a>

</body>
</html>
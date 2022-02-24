<%@page import="Model.CafeVO"%>
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

	<%
	CafeVO vo = (CafeVO)session.getAttribute("vo");
	%>

	<p><input type="text">
	<button type="button" name="search">검색</button></p>

	<p>
	<button type="button" name="study">공부하기 좋은</button> 
	<button type="button" name="special">커피가 특별한</button>
	<button type="button" name="sight">풍경이 좋은</button>	
	</p>
	<p>
	<button type="button" name="talk">수다떨기 좋은</button> 
	<button type="button" name="dessert">디저트가 다양한</button>
	</p>
	
	<h1><%=vo.getStore()%></h1>
	<h1>이이남 스튜디오</h1>

	<div id="picture">
		<img src="<%=vo.getPicture() %>">
	</div>
	<div id="location">주소</div>
	<p><%=vo.getLocation() %></p>

	<p>광주 남구 제중로 47번길 10 이이남 스튜디오</p>
	<p><%=vo.getC_tel() %></p>
	<p>050-1414-5040</p>

	<!-- split(영업시간) -->
	<p>월 10:00 ~ 21:00</p>
	
</body>
</html>
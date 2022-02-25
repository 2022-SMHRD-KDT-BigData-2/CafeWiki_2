<%@page import="java.util.List"%>
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
		List<CafeVO> clist = (List<CafeVO>)request.getAttribute("cvo");
	%>

	<form action="searchname.do" method="post">
		<input type="text" name="store"> 
		<input type="submit" value="검색">
	</form>

	<%if(clist!=null){for(CafeVO cvo : clist){ %>
		<h1><%=cvo.getStore()%></h1>
	<h1>이이남 스튜디오</h1>

	<div id="picture">
		<img src="<%=cvo.getPicture()%>">
	</div>

	<div id="location">주소</div>
	<p>
		광주 남구 제중로 47번길 10 이이남 스튜디오
		<%=cvo.getLocation()%></p>

	<p>
		전화번호
		<%=cvo.getC_tel()%></p>

	<!-- split(영업시간) -->
	<p>
		영업시간
		<%=cvo.getTime()%></p>
	<%}} %>

	<form action="searchtype.do" method="post">
		<p>
			<button type="button" name="study">공부하기 좋은</button>
			<button type="button" name="special">커피가 특별한</button>
			<button type="button" name="sight">풍경이 좋은</button>
		</p>
		<p>
			<button type="button" name="talk">수다떨기 좋은</button>
			<button type="button" name="dessert">디저트가 다양한</button>
		</p>
	</form>

</body>
</html>
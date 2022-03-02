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
	
		List<CafeVO> clist = (List<CafeVO>)request.getAttribute("clist");

	%>

	<form action="searchname.do" method="post">
		<input type="text" name="store"> 
		<button type="submit">검색</button>
	</form>
	
	<form action="searchtype.do" method="post">
		<p>
			<button type="button" onclick="location.href='searchtype.do?type=<%=1%>'">공부하기 좋은</button>
			<button type="button" onclick="location.href='searchtype.do?type=<%=2%>'">커피가 특별한</button>
			<button type="button" onclick="location.href='searchtype.do?type=<%=3%>'">풍경이 좋은</button>
		</p>
		<p>
			<button type="button" onclick="location.href='searchtype.do?type=<%=4%>'">수다떨기 좋은</button>
			<button type="button" onclick="location.href='searchtype.do?type=<%=5%>'">디저트가 다양한</button>
		</p>
	</form>

	<% if(clist != null){for(CafeVO vo : clist){ %>
		<h1>가게 이름:<%=vo.getStore()%><a href=""></a></h1>

	<div id="picture">
		<img src="<%=vo.getPicture()%>">
	</div>

	<div id="location"></div>
	<p>
		주소:
		<%=vo.getLocation()%></p>

	<p>
		전화번호:
		<%=vo.getC_tel()%></p>

	<!-- split(영업시간) -->
	<p>
		영업시간:
		<%=vo.getTime()%></p>
	<%}} %>

	<a href="UserMain.jsp">My Page</a>
	<a href="SearchMain.jsp">카페 검색</a>
	<a href="MyCoupon.jsp">내 쿠폰 관리</a>
	<a href="Update.jsp">정보수정</a>

</body>
</html>
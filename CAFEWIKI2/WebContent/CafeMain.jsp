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
	CafeVO vo = (CafeVO)session.getAttribute("vo");
	List<BoardVO> Blist = (List<BoardVO>)request.getAttribute("Blist");
	%>

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

	<div id="board">
		<table id="list">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>시간</td>
			</tr>

			<%for(BoardVO bvo : Blist){ %>
			<tr>
				<td><%=bvo.getB_num() %></td>
				<%-- 쿼리스트링: url?name=value --%>
				<td><a href="#?num=<%=bvo.getB_num()%>"><%=bvo.getB_title()%></a></td>
				<td><%=bvo.getB_date()%></td>
			</tr>
			<% } %>
			
		</table>
	</div>



</body>
</html>
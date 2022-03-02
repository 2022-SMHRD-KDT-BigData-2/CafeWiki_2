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
	CafeVO vo = (CafeVO)request.getAttribute("cvo");
	List<BoardVO> Blist = (List<BoardVO>)request.getAttribute("bvo");
	%>

	<h1><%=vo.getStore()%></h1>

	<div id="picture">
		<img src="<%=vo.getPicture() %>">
	</div>
	<div id="location">주소</div>
	<p><%=vo.getLocation() %></p>

	<p><%=vo.getC_tel() %></p>
	<p>050-1414-5040</p>

	<!-- split(영업시간) -->
	<p><%=vo.getTime() %></p>

	<div id="board">
		<h3>게시판</h3>

		<table id="list">
			<tr>
				<td>제목</td>
				<td>날짜</td>
			</tr>

			<%
				for (BoardVO bvo : Blist) {
			%>
			<tr>
				<td><a href="viewBoard.do?b_num=<%=bvo.getB_num()%>"><%=bvo.getB_title()%></a></td>
				<td><%=bvo.getB_date().split(" ")[0]%></td>
			</tr>
			<%
				}
			%>

		</table>
	</div>



</body>
</html>
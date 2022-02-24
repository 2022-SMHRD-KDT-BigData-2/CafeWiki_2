<%@page import="Model.BoardVO"%>
<%@page import="java.util.List"%>
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
			List<BoardVO> list = (List<BoardVO>)request.getAttribute("list");
		
		
		%>
			<div id="board">
				<table id = "list">
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>시간</td>
					</tr>
					<!--
						for(int i = 0; i<list.size(); i++){
							BoardVO vo = list.get(i);
					  -->
					
					<%for(BoardVO vo : list){ %>
					<tr>
						<td><%=vo.getB_NUM() %></td>
						<!--쿼리스트링: url?name=value  -->
						<td><a href="goViewBoard?num=<%=vo.getB_NUM()%>"><%=vo.getB_TITLE() %></a></td>
						<td><%=vo.getB_DATE() %></td>
					</tr>
					<%} %>
				</table>
				
				<a href="main.jsp"><button id="writer">돌아가기</button></a>
				<a href="boardWrite.jsp"><button id="writer">작성하러가기</button></a>
			</div>


			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
</body>
</html>
<%@page import="Model.BoardVO"%>
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
		BoardVO bvo = (BoardVO)request.getAttribute("bvo"); 
	%>
				
			<div id = "board">
				<table id="list">
					<tr>
						<td><%=bvo.getB_TITLE() %></td>
					</tr>

					<tr>
						<td colspan="2"><%=bvo.getB_CONT() %></td>
					</tr>
					<tr>
						<td colspan="2">
							<img alt="" src="img/<%=bvo.getB_FILE()%>">
							
						</td>
					</tr>
					<tr>
						<td colspan="2"><a href="goBoardMain"><button>뒤로가기</button></a></td>
					</tr>
				</table>
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
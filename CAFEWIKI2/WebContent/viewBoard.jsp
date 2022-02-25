<%@page import="Model.CafeVO"%>
<%@page import="Model.MemberVO"%>
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
		CafeVO cvo = (CafeVO)request.getAttribute("cvo");
	
	%>
				
			<div id = "board">
			<h1><%=cvo.getStore() %></h1>
				<table id="list">
					<tr>
						<td><%=bvo.getB_title() %></td>
						<td><%=bvo.getB_date() %>
					</tr>

					<tr>
						<td colspan="2"><%=bvo.getB_cont() %></td>
					</tr>
					
					<tr>
						<td colspan="2">
						
							<img alt="" src="img/<%=bvo.getB_file()%>">
							
						</td>
					</tr>
					<tr>
						<td colspan="2"><button type="button" onclick="location.href='cafe.do'">뒤로가기</button>
</td>
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
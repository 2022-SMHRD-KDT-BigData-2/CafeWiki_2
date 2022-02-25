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
	<h1>���̳� ��Ʃ���</h1>

	<div id="picture">
		<img src="<%=vo.getPicture() %>">
	</div>
	<div id="location">�ּ�</div>
	<p><%=vo.getLocation() %></p>

	<p>���� ���� ���߷� 47���� 10 ���̳� ��Ʃ���</p>
	<p><%=vo.getC_tel() %></p>
	<p>050-1414-5040</p>

	<!-- split(�����ð�) -->
	<p>�� 10:00 ~ 21:00</p>

	<div id="board">
		<table id="list">
			<tr>
				<td>��ȣ</td>
				<td>����</td>
				<td>�ۼ���</td>
				<td>�ð�</td>
			</tr>

			<%for(BoardVO bvo : Blist){ %>
			<tr>
				<td><%=bvo.getB_num() %></td>
				<%-- ������Ʈ��: url?name=value --%>
				<td><a href="#?num=<%=bvo.getB_num()%>"><%=bvo.getB_title()%></a></td>
				<td><%=bvo.getB_date()%></td>
			</tr>
			<% } %>
			
		</table>
	</div>



</body>
</html>
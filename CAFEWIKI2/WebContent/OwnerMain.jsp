<%@page import="Model.BoardVO"%>
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
		MemberVO vo = (MemberVO) session.getAttribute("vo");
	List<CafeVO> clist = (List<CafeVO>) request.getAttribute("cvo");
	List<BoardVO> blist = (List<BoardVO>) request.getAttribute("bvo");
	// blist : ����ڹ�ȣ�� ~�� ����Ʈ
	%>
<h1>Cafe Wiki</h1>
<button type="button" onclick="location.href='logoutCon'">�α׾ƿ�</button>


	<%
		for (CafeVO cvo : clist) {
	%>

	<h1><%=cvo.getStore()%></h1>
	<h1>���̳� ��Ʃ���</h1>

	<div id="picture">
		<img src="<%=cvo.getPicture()%>">
	</div>

	<div id="location">�ּ�</div>
	<p>
		���� ���� ���߷� 47���� 10 ���̳� ��Ʃ���
		<%=cvo.getLocation()%></p>

	<p>
		��ȭ��ȣ
		<%=cvo.getC_tel()%></p>

	<!-- split(�����ð�) -->
	<p>
		�����ð�
		<%=cvo.getTime()%></p>


	<div id="board">


		<h3>�Խ���</h3>
		<a href="writeBoard.jsp?o_num=<%=vo.getO_num()%>">�ۼ�</a>

		<table id="list">
			<tr>
				<td>����</td>
				<td>��¥</td>
			</tr>

				<%
					for (BoardVO bvo : blist) {
				%>
				<tr>
				<td><a href="viewBoard.do?b_num=<%=bvo.getB_num() %>"><%=bvo.getB_title()%></a></td>
				<td><%=bvo.getB_date().split(" ")[0]%></td>	
				</tr>
				<%
					}
				%>
		

		</table>


		<h3>�湮�� ����</h3>
		<table>
			<tr>
				<td rowspan="2">img</td>
				<td>ID</td>
			</tr>
			<tr>
				<td></td>
				<td><%=cvo.getReview().split(",")[0] %></td>
			</tr>
			<tr>
				<td rowspan="2">img</td>
				<td>ID</td>
			</tr>
			<tr>
				<td></td>
				<td>���ݱ��� �̷����� ������!</td>
			</tr>

		</table>
		<%
			}
		%>
		<button type="button" onclick="location.href='cafe.do'">My Page</button>

		<button type="button" onclick="location.href='BarcodeScan.jsp?o_num=<%=vo.getO_num()%>'">���� ����</button>

		<button type="button" onclick="location.href='customerManager.do'">�� ȸ�� ����</button>

		<button type="button" onclick="location.href='Update.jsp'">���� ����</button>
</body>
</html>
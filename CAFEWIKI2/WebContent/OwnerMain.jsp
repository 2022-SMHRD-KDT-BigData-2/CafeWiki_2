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
	//List<BoardVO> Blist = (List<BoardVO>)request.getAttribute("Blist");
	%>


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
	<a href="writerBoard.jsp">�ۼ�</a>
		<table id="list">
			<tr>
				<td>��ȣ</td>
				<td>����</td>
				<td>�ð�</td>
			</tr>

		</table>


		<h3>�湮�� ����</h3>
		<table>
			<tr>
				<td rowspan="2">img</td>
				<td>ID</td>
			</tr>
			<tr>
				<td></td>
				<td>���ݱ��� �̷����� ������!</td>
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
		<button type="button" onclick="location.href='#'">My Page</button>

		<button type="button" onclick="location.href='#'">�ֺ� ī��</button>

		<button type="button" onclick="location.href='#'">�� ���� ����</button>

		<button type="button" onclick="location.href='#'">���� ����</button>

</body>
</html>
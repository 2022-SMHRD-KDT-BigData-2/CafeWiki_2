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
	MemberVO vo = (MemberVO)session.getAttribute("vo");

	%>
	
		<h2>���̳� ��Ʃ���</h2>
	<table>
		<tr>
			<td rowspan="3">img</td>
			<td>���� ����</td>
		</tr>
		<tr>
			<td></td>
			<td>0507-1414</td>
		</tr>
		<tr>
			<td></td>
			<td>�����ð�</td>
		</tr>
	</table>


	<h3>��������</h3>
	<table>
		<tr>
			<th>��ȣ</th>
			<th>����</th>
			<th>��¥</th>

		</tr>
		<tr>
			<td>1</td>
			<td>����</td>
			<td>2022-02-21</td>
		</tr>
		<tr>
			<td>2</td>
			<td>���ϴ�</td>
			<td>2022-02-20</td>
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


			<a href="#"><div>My Page</div></a>
			<a href="#"><div>�ֺ� ī��<div></a>
			<a href="#"><div>�� ���� ����<div></a>
			<a href="#"><div>���� ����<div></a>


	
	
	
</body>
</html>
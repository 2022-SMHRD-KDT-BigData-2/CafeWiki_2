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
	CafeVO vo = (CafeVO)session.getAttribute("vo");
	%>

	<p><input type="text">
	<button type="button" name="search">�˻�</button></p>

	<p>
	<button type="button" name="study">�����ϱ� ����</button> 
	<button type="button" name="special">Ŀ�ǰ� Ư����</button>
	<button type="button" name="sight">ǳ���� ����</button>	
	</p>
	<p>
	<button type="button" name="talk">���ٶ��� ����</button> 
	<button type="button" name="dessert">����Ʈ�� �پ���</button>
	</p>
	
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
	
</body>
</html>
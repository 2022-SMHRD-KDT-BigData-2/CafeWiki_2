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
		List<CafeVO> clist = (List<CafeVO>)request.getAttribute("cvo");
	%>

	<form action="searchname.do" method="post">
		<input type="text" name="store"> 
		<input type="submit" value="�˻�">
	</form>

	<%if(clist!=null){for(CafeVO cvo : clist){ %>
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
	<%}} %>

	<form action="searchtype.do" method="post">
		<p>
			<button type="button" name="study">�����ϱ� ����</button>
			<button type="button" name="special">Ŀ�ǰ� Ư����</button>
			<button type="button" name="sight">ǳ���� ����</button>
		</p>
		<p>
			<button type="button" name="talk">���ٶ��� ����</button>
			<button type="button" name="dessert">����Ʈ�� �پ���</button>
		</p>
	</form>

</body>
</html>
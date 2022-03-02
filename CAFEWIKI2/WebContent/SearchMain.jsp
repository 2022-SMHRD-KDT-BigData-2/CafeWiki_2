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
	
		List<CafeVO> clist = (List<CafeVO>)request.getAttribute("clist");

	%>

	<form action="searchname.do" method="post">
		<input type="text" name="store"> 
		<button type="submit">�˻�</button>
	</form>
	
	<form action="searchtype.do" method="post">
		<p>
			<button type="button" onclick="location.href='searchtype.do?type=<%=1%>'">�����ϱ� ����</button>
			<button type="button" onclick="location.href='searchtype.do?type=<%=2%>'">Ŀ�ǰ� Ư����</button>
			<button type="button" onclick="location.href='searchtype.do?type=<%=3%>'">ǳ���� ����</button>
		</p>
		<p>
			<button type="button" onclick="location.href='searchtype.do?type=<%=4%>'">���ٶ��� ����</button>
			<button type="button" onclick="location.href='searchtype.do?type=<%=5%>'">����Ʈ�� �پ���</button>
		</p>
	</form>

	<% if(clist != null){for(CafeVO vo : clist){ %>
		<h1>���� �̸�:<%=vo.getStore()%><a href=""></a></h1>

	<div id="picture">
		<img src="<%=vo.getPicture()%>">
	</div>

	<div id="location"></div>
	<p>
		�ּ�:
		<%=vo.getLocation()%></p>

	<p>
		��ȭ��ȣ:
		<%=vo.getC_tel()%></p>

	<!-- split(�����ð�) -->
	<p>
		�����ð�:
		<%=vo.getTime()%></p>
	<%}} %>

	<a href="UserMain.jsp">My Page</a>
	<a href="SearchMain.jsp">ī�� �˻�</a>
	<a href="MyCoupon.jsp">�� ���� ����</a>
	<a href="Update.jsp">��������</a>

</body>
</html>
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
<%MemberVO vo =  (MemberVO)session.getAttribute("vo");%>
<h1>ȸ����������</h1>
<form action="update.do" method="post">
<h3>������ ȸ�� : <%=vo.getName() %></h3>
<input name="pw" type="password" placeholder="PW�� �Է��ϼ���" style="width: 500px; margin: 0 auto;"><br>
<input name="tel" type="text" placeholder="��ȭ��ȣ�� �Է��ϼ���" style="width: 500px; margin: 0 auto;"><br>
<input name="email" type="text" placeholder="�̸����� �Է��ϼ���" style="width: 500px; margin: 0 auto;"><br>
<input type="submit" value="JoinUs" style="width: 500px; margin: 0 auto;">
</form>
<button><a onclick="location.href='delet.do'">ȸ��Ż��</a></button>
</body>
</html>
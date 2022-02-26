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
<h1>회원정보수정</h1>
<form action="update.do" method="post">
<h3>접속한 회원 : <%=vo.getName() %></h3>
<input name="pw" type="password" placeholder="PW를 입력하세요" style="width: 500px; margin: 0 auto;"><br>
<input name="tel" type="text" placeholder="전화번호를 입력하세요" style="width: 500px; margin: 0 auto;"><br>
<input name="email" type="text" placeholder="이메일을 입력하세요" style="width: 500px; margin: 0 auto;"><br>
<input type="submit" value="JoinUs" style="width: 500px; margin: 0 auto;">
</form>
<button><a onclick="location.href='delet.do'">회원탈퇴</a></button>
</body>
</html>
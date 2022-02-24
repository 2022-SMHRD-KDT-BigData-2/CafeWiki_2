<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="login.do">
		<table>
			<tr>
				<td id="title">아이디</td>
				<td><input type="text" name="id" maxlength="50"
					placeholder="아이디를 입력하세요">
			</tr>
			<tr>
				<td id="title">비밀번호</td>
				<td><input type="text" name="pw" maxlength="50"
					placeholder="비밀번호를 입력하세요">
			</tr>
		</table>
		<input type="submit" value="로그인"> 
		</form>
		 <button type="button" onclick="location.href='join.jsp'">회원가입</button>
</body>
</html>
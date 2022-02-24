<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="join.do" method="post" >
		<table>
			<tr>
				<td id="title">아이디</td>
				<td><input type="text" name="id" maxlength="50"
					placeholder="아이디를 입력하세요">
			</tr>
			<tr>
				<td id="title">사업자번호</td>
				<td><input type="text" name="o_num" maxlength="50"
					placeholder="사업자번호를 입력하세요">
			</tr>
			<tr>
				<td id="title">이름</td>
				<td><input type="text" name="name" maxlength="50"
					placeholder="이름을 입력하세요"></td>
			</tr>
			<tr>
				<td id="title">비밀번호</td>
				<td><input type="password" name="pw" maxlength="50"
					placeholder="비밀번호를 입력하세요"></td>
			</tr>
			<tr>
				<td id="title">전화번호</td>
				<td><input type="text" name="tel" placeholder="전화번호를 입력하세요"></td>
			</tr>
			<tr>
				<td id="title">이메일</td>
				<td><input type="text" name="email" maxlength="50"
					placeholder="Email을 입력하세요"></td>
			</tr>
			<tr>
				<td id="title">생년월일</td>
				<td><input type="text" name="birth" maxlength="50"></td>
			</tr>
			<tr>
				<td id="title">성별</td>
				<td><input type="radio" name="gender" value="남자">남
					<input type="radio" name="gender" value="여자">여</td>
			</tr>

		</table>
		<br> <input type="submit" value="가입">
	</form>
</body>
</html>
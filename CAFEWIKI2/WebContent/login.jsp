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
				<td id="title">���̵�</td>
				<td><input type="text" name="id" maxlength="50"
					placeholder="���̵� �Է��ϼ���">
			</tr>
			<tr>
				<td id="title">��й�ȣ</td>
				<td><input type="text" name="pw" maxlength="50"
					placeholder="��й�ȣ�� �Է��ϼ���">
			</tr>
		</table>
		<input type="submit" value="�α���"> 
		</form>
		 <button type="button" onclick="location.href='join.jsp'">ȸ������</button>
</body>
</html>
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
				<td id="title">���̵�</td>
				<td><input type="text" name="id" maxlength="50"
					placeholder="���̵� �Է��ϼ���">
			</tr>
			<tr>
				<td id="title">����ڹ�ȣ</td>
				<td><input type="text" name="o_num" maxlength="50"
					placeholder="����ڹ�ȣ�� �Է��ϼ���">
			</tr>
			<tr>
				<td id="title">�̸�</td>
				<td><input type="text" name="name" maxlength="50"
					placeholder="�̸��� �Է��ϼ���"></td>
			</tr>
			<tr>
				<td id="title">��й�ȣ</td>
				<td><input type="password" name="pw" maxlength="50"
					placeholder="��й�ȣ�� �Է��ϼ���"></td>
			</tr>
			<tr>
				<td id="title">��ȭ��ȣ</td>
				<td><input type="text" name="tel" placeholder="��ȭ��ȣ�� �Է��ϼ���"></td>
			</tr>
			<tr>
				<td id="title">�̸���</td>
				<td><input type="text" name="email" maxlength="50"
					placeholder="Email�� �Է��ϼ���"></td>
			</tr>
			<tr>
				<td id="title">�������</td>
				<td><input type="text" name="birth" maxlength="50"></td>
			</tr>
			<tr>
				<td id="title">����</td>
				<td><input type="radio" name="gender" value="����">��
					<input type="radio" name="gender" value="����">��</td>
			</tr>

		</table>
		<br> <input type="submit" value="����">
	</form>
</body>
</html>
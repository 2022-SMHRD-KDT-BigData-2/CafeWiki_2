<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<form action="join.do" method="post">
			<table>
				<tr>
					<td id="title">���̵�<input id="check" name="id" type="text"
						placeholder="���̵� �Է��ϼ���"></td>
					<td><button type="button" onclick="idCheck()">�ߺ�Ȯ��</button>
						<span id="result"></span></td>
				</tr>

				<tr>
					<td id="title">����ڹ�ȣ<input type="text" name="o_num"
						maxlength="50" id="check2" placeholder="����ڹ�ȣ�� �Է��ϼ���"></td>
					<td><button type="button" onclick="o_numCheck()">
							�ߺ�Ȯ��</button><span id="result2"></span></td>
						
				</tr>
				<tr>
					<td id="title">�̸�<input type="text" name="name" maxlength="50"
						placeholder="�̸��� �Է��ϼ���"></td>
					
				</tr>
				<tr>
					<td id="title">��й�ȣ<input type="password" name="pw" maxlength="50"
						placeholder="��й�ȣ�� �Է��ϼ���"></td>
					
				</tr>
				<tr>
					<td id="title">��ȭ��ȣ<input type="text" name="tel" placeholder="��ȭ��ȣ�� �Է��ϼ���"></td>
					
				</tr>
				<tr>
					<td id="title">�̸���<input type="text" name="email" maxlength="50"
						placeholder="Email�� �Է��ϼ���"></td>
					
				</tr>
				<tr>
					<td id="title">�������<input type="text" name="birth" maxlength="50"></td>
					
				</tr>
				<tr>
					<td id="title">����<input type="radio" name="gender" value="����">�� <input
						type="radio" name="gender" value="����">��</td>
					
				</tr>
			</table>
			<br> <input type="submit" value="����">
		</form>
	</fieldset>
	<script src="js/jquery-3.6.0.js"></script>
	<script type="text/javascript">
		function idCheck() {
			let id = $('#check').val()

			$.ajax({
				url : "checkCon",
				type : "post",
				data : {
					'id' : id
				},
				success : function(res) {
					console.log(res);
					if (res == 'true') {
						$('#result').html('��밡���� ���̵� �Դϴ�.')
					} else {
						$('#result').html('�ߺ��� ���̵� �Դϴ�.')
					}
				},
				error : function() {
					alert("error")
				}
			});
		}
		function o_numCheck() {
			let o_num = $('#check2').val()

			$.ajax({
				url : "checkCon2",
				type : "post",
				data : {
					'o_num' : o_num
				},
				success : function(res) {
					console.log(res);
					if (res == 'true') {
						$('#result2').html('��밡���� ����ڹ�ȣ�Դϴ�.')
					} else {
						$('#result2').html('�ߺ��� ����ڹ�ȣ�Դϴ�.')
					}
				},
				error : function() {
					alert("error")
				}
			});
		}
	</script>
</body>
</html>
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
					<td id="title">아이디<input id="check" name="id" type="text"
						placeholder="아이디를 입력하세요"></td>
					<td><button type="button" onclick="idCheck()">중복확인</button>
						<span id="result"></span></td>
				</tr>

				<tr>
					<td id="title">사업자번호<input type="text" name="o_num"
						maxlength="50" id="check2" placeholder="사업자번호를 입력하세요"></td>
					<td><button type="button" onclick="o_numCheck()">
							중복확인</button><span id="result2"></span></td>
						
				</tr>
				<tr>
					<td id="title">이름<input type="text" name="name" maxlength="50"
						placeholder="이름을 입력하세요"></td>
					
				</tr>
				<tr>
					<td id="title">비밀번호<input type="password" name="pw" maxlength="50"
						placeholder="비밀번호를 입력하세요"></td>
					
				</tr>
				<tr>
					<td id="title">전화번호<input type="text" name="tel" placeholder="전화번호를 입력하세요"></td>
					
				</tr>
				<tr>
					<td id="title">이메일<input type="text" name="email" maxlength="50"
						placeholder="Email을 입력하세요"></td>
					
				</tr>
				<tr>
					<td id="title">생년월일<input type="text" name="birth" maxlength="50"></td>
					
				</tr>
				<tr>
					<td id="title">성별<input type="radio" name="gender" value="남자">남 <input
						type="radio" name="gender" value="여자">여</td>
					
				</tr>
			</table>
			<br> <input type="submit" value="가입">
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
						$('#result').html('사용가능한 아이디 입니다.')
					} else {
						$('#result').html('중복된 아이디 입니다.')
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
						$('#result2').html('사용가능한 사업자번호입니다.')
					} else {
						$('#result2').html('중복된 사업자번호입니다.')
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
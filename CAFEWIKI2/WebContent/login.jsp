<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="./css/style.css">
<script src="./js/jquery-3.6.0.js"></script>
<title>�α���</title>
</head>

<body>
	<section class="login-form">
		<form method="post" action="login.do" id="login">
			<h1>Cafe Wiki</h1>
			<ul>
				<div class="int-area">
					<input type="text" name="id" id="id" autocomplete="off" required>
					<label for="id">USER ID</label>
				</div>

				<div class="int-area">
					<input type="password" name="pw" id="pw" autocomplete="off"
						required> <label for="pw">PASSWORD</label>
				</div>

				<div class="check">
					<input type="checkbox" id="chk_id"> <label for="chk_id">���̵�
						����</label>
				</div>

				<div class="btn-area">
					<button type="submit" onclick="fnSubmit(); return false;">LOGIN</button>
				</div>
			</ul>
		</form>
		<div class="caption">
			<a  onclick="location.href='join.jsp'">ȸ������</a> 
			<a onclick="location.href='pwSearch.jsp'">��й�ȣ ã��</a>
		</div>
	</section>
	<script src="js/jquery-3.6.0.js"></script>
	<script type="text/javascript">
	
	
	
	</script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<link rel="stylesheet" href="./css/join.css">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<style>
#btn1 {
	background: #A7A9AC;
	border: none;
	outline: none;
	WIDTH: 60pt; 
	HEIGHT: 20pt;
	border-radius : 10px;
}
</style>
</head>
<body>
	<!-- header -->


	<!-- wrapper -->
	<div id="wrapper">

		<!-- content-->
		<div id="content">

			<ul class="nav">
				<li class="img"><img src="./image/login/coffee.png">Cafe
					Wiki</li>
			</ul>

			<form action="join.do" method="post">
				<div>
					<h3>
						<label for="id">���̵�</label>
					</h3>
					<span class="box int_id"> <input type="text" class="int"
						maxlength="20" id="check" name="id" placeholder="���̵� �Է��ϼ���">
					</span><span id="result"></span> <span><button
							id="btn1" type="button" onclick="idCheck()">�ߺ�Ȯ��</button></span> <span
						class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="id">����ڹ�ȣ</label>
					</h3>
					<span class="box int_B_id"> <input type="text" class="int"
						maxlength="20" name="o_num" id="check2" placeholder="����ڹ�ȣ�� �Է��ϼ���">
					</span> <span id="result2"></span> <span><button type="button"
							onclick="o_numCheck()">�ߺ�Ȯ��</button></span> <span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="name">�̸�</label>
					</h3>
					<span class="box int_name"> <input type="text" name="name"
						class="int" maxlength="20" placeholder="�̸��� �Է��ϼ���">
					</span> <span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="pswd1">��й�ȣ</label>
					</h3>
					<span class="box int_pass"> <input type="password" name="pw"
						class="int" maxlength="20" placeholder="��й�ȣ�� �Է��ϼ���">
					</span> <span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="phoneNo">�޴���ȭ</label>
					</h3>
					<span class="box int_mobile"> <input type="tel" name="tel"
						class="int" maxlength="16" placeholder="��ȭ��ȣ�� �Է��ϼ���">
					</span> <span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="email">�̸���</label>
					</h3>
					<span class="box int_email"> <input type="text" name="email"
						class="int" maxlength="100" placeholder="Email�� �Է��ϼ���">
					</span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="birth">�������</label>
					</h3>
					<span class="box int_email"> <input type="text" name="birth"
						class="int" maxlength="100" placeholder="2022/02/25">
					</span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="gender">����</label>
					</h3>
					<span class="box gender_code"> <select name="gender"
						class="sel">
							<option>����</option>
							<option value="����">����</option>
							<option value="����">����</option>
					</select>
					</span> <span class="error_next_box">�ʼ� �����Դϴ�.</span>
				</div>



				<div class="btn_area">
					<button onclick="location.href='login.jsp'" type="button"
						id="btnJoin2">
						<span>���ư���</span>
					</button>
					<button type="	submit" id="btnJoin">
						<span>�����ϱ�</span>
					</button>
				</div>
			</form>
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

		</div>
		<!-- content-->

	</div>
	<!-- wrapper -->

</body>
</html>
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
	width: 55pt; 
	height: 20pt;
	border-radius : 10px;
	color: #1C1C1C;
	font-size: 13px;
	font-weight : bolder;
}
#btn2 {
	background: #A7A9AC;
	border: none;
	outline: none;
	width: 55pt; 
	height: 20pt;
	border-radius : 10px;
	color: #1C1C1C;
	font-size: 13px;
	font-weight : bolder;
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

			<form action="join.do" method="post"id="join">

				<div>
					<h3>
						<label for="id">���̵�</label>
					</h3>
					<span class="box int_id"> <input type="text" class="int" maxlength="20" id="check" name="id" placeholder="���̵� �Է��ϼ���" onclick=" registerCheck()"></span>					
					<span><button	id="btn1" type="button" onclick="idCheck()">�ߺ�Ȯ��</button></span>
					<span id="result"></span> 
				   <span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="id">����ڹ�ȣ</label>
					</h3>
					<span class="box int_B_id"> <input type="text" class="int" maxlength="20" name="o_num" id="check2" placeholder="����ڹ�ȣ�� �Է��ϼ���"></span>	 
					<span><button type="button" id="btn2" onclick="o_numCheck()">�ߺ�Ȯ��</button></span> 
					<span id="result2"></span>
					<span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="name">�̸�</label>
					</h3>
					<span class="box int_name"> 
					<input type="text" name="name" id="name" class="int" maxlength="20" placeholder="�̸��� �Է��ϼ���"></span> 
					<span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="pswd1">��й�ȣ</label>
					</h3>
					<span class="box int_pass"> <input type="password" name="pw" id="pw" class="int" maxlength="20" placeholder="��й�ȣ�� �Է��ϼ���"></span>			
					<span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="phoneNo">�޴���ȭ</label>
					</h3>
					<span class="box int_mobile"> <input type="tel" name="tel" class="int" maxlength="16" placeholder="��ȭ��ȣ�� �Է��ϼ���"></span>
					 <span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="email">�̸���</label>
					</h3>
					<span class="box int_email"> <input type="text" name="email" id="email" class="int" maxlength="100" placeholder="Email�� �Է��ϼ��� ex) 1234@naver.com"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="birth">�������</label>
					</h3>
					<span class="box int_email"> <input type="text" name="birth"class="int" maxlength="100" placeholder="2022/02/25"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="gender">����</label>
					</h3>
					<span class="box gender_code"> <select name="gender" class="sel">
							<option>����</option>
							<option value="����">����</option>
							<option value="����">����</option>
					</select>
					</span> <span class="error_next_box">�ʼ� �����Դϴ�.</span>
				</div>


				<div class="btn_area">
					<button onclick="location.href='login.jsp'" type="button" id="btnJoin2">
						<span>���ư���</span>
					</button>
					<button type="	submit" id="btnJoin" onclick="fnSubmit(); return false;">
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
								$('#result').css('font-size','13px')
								$('#result').val("Y");
							} else {
								$('#result').html('�ߺ��� ���̵� �Դϴ�.')
								$('#result').css('font-size','13px')
								alert("�ߺ��� ���̵��Դϴ�. ���̵� �������ּ���");
								$('#result').val("N");
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
								$('#result2').css('font-size','13px')
								$('#result2').val("Y");
							} else {
								$('#result2').html('�ߺ��� ����ڹ�ȣ�Դϴ�.')
								$('#result2').css('font-size','13px')
								alert("�ߺ��� ����ڹ�ȣ�Դϴ�. ����ڹ�ȣ�� �������ּ���.");
								$('#result2').val("N");
								
							}
						},
						error : function() {
							alert("error")
						}
					});
				}
				
				function fnSubmit(){
					
					if ($("#check").val() == null || $("#check").val() == "") {
						alert("���̵� �Է����ּ���.");
						$("#check").focus();
						 
						return false;
						}
					
					if ($("#result").val() != 'Y') {
						alert("���̵� �ߺ�üũ�� �����ּ���.");
						$("#result").focus();
						 
						return false;
						}
					
					if ($("#check2").val() != "") {
						if ($("#result2").val() != 'Y') {
							alert("����ڹ�ȣ �ߺ�üũ�� �����ּ���.");
							$("#result2").focus();
							 
							return false;
							}				 										
					}
					
					if ($("#name").val() == null || $("#name").val() == "") {
						alert("�̸��� �Է����ּ���.");
						$("#name").focus();
						 
						return false;
						}
					
					if ($("#pw").val() == null || $("#pw").val() == "") {
						alert("��й�ȣ�� �Է����ּ���.");
						$("#pw").focus();
						 
						return false;
						}
					
					if ($("#email").val() == null || $("#email").val() == "") {
						alert("�̸����� �Է����ּ���.");
						$("#email").focus();
						 
						return false;
						}
					var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
					
					if(!email_rule.test($("#email").val())){
						alert("�̸����� ���Ŀ� �°� �Է����ּ���. ex) 1234@naver.com");
						$("#email").focus();
						return false;
						}
					
					if (confirm("ȸ�������Ͻðڽ��ϱ�?")) {
						 
						$("#join").submit();
						 
						return false;
						}
					
					
				}
			</script>

		</div>
		<!-- content-->

	</div>
	<!-- wrapper -->

</body>
</html>
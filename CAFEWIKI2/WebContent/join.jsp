<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
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
						<label for="id">아이디</label>
					</h3>
					<span class="box int_id"> <input type="text" class="int" maxlength="20" id="check" name="id" placeholder="아이디를 입력하세요" onclick=" registerCheck()"></span>					
					<span><button	id="btn1" type="button" onclick="idCheck()">중복확인</button></span>
					<span id="result"></span> 
				   <span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="id">사업자번호</label>
					</h3>
					<span class="box int_B_id"> <input type="text" class="int" maxlength="20" name="o_num" id="check2" placeholder="사업자번호를 입력하세요"></span>	 
					<span><button type="button" id="btn2" onclick="o_numCheck()">중복확인</button></span> 
					<span id="result2"></span>
					<span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="name">이름</label>
					</h3>
					<span class="box int_name"> 
					<input type="text" name="name" id="name" class="int" maxlength="20" placeholder="이름을 입력하세요"></span> 
					<span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="pswd1">비밀번호</label>
					</h3>
					<span class="box int_pass"> <input type="password" name="pw" id="pw" class="int" maxlength="20" placeholder="비밀번호를 입력하세요"></span>			
					<span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="phoneNo">휴대전화</label>
					</h3>
					<span class="box int_mobile"> <input type="tel" name="tel" class="int" maxlength="16" placeholder="전화번호를 입력하세요"></span>
					 <span class="error_next_box"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="email">이메일</label>
					</h3>
					<span class="box int_email"> <input type="text" name="email" id="email" class="int" maxlength="100" placeholder="Email을 입력하세요 ex) 1234@naver.com"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="birth">생년월일</label>
					</h3>
					<span class="box int_email"> <input type="text" name="birth"class="int" maxlength="100" placeholder="2022/02/25"></span>
				</div>

				<div>
					<h3 class="join_title">
						<label for="gender">성별</label>
					</h3>
					<span class="box gender_code"> <select name="gender" class="sel">
							<option>성별</option>
							<option value="남자">남자</option>
							<option value="여자">여자</option>
					</select>
					</span> <span class="error_next_box">필수 정보입니다.</span>
				</div>


				<div class="btn_area">
					<button onclick="location.href='login.jsp'" type="button" id="btnJoin2">
						<span>돌아가기</span>
					</button>
					<button type="	submit" id="btnJoin" onclick="fnSubmit(); return false;">
						<span>가입하기</span>
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
								$('#result').html('사용가능한 아이디 입니다.')
								$('#result').css('font-size','13px')
								$('#result').val("Y");
							} else {
								$('#result').html('중복된 아이디 입니다.')
								$('#result').css('font-size','13px')
								alert("중복된 아이디입니다. 아이디를 변경해주세요");
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
								$('#result2').html('사용가능한 사업자번호입니다.')
								$('#result2').css('font-size','13px')
								$('#result2').val("Y");
							} else {
								$('#result2').html('중복된 사업자번호입니다.')
								$('#result2').css('font-size','13px')
								alert("중복된 사업자번호입니다. 사업자번호를 변경해주세요.");
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
						alert("아이디를 입력해주세요.");
						$("#check").focus();
						 
						return false;
						}
					
					if ($("#result").val() != 'Y') {
						alert("아이디 중복체크를 눌러주세요.");
						$("#result").focus();
						 
						return false;
						}
					
					if ($("#check2").val() != "") {
						if ($("#result2").val() != 'Y') {
							alert("사업자번호 중복체크를 눌러주세요.");
							$("#result2").focus();
							 
							return false;
							}				 										
					}
					
					if ($("#name").val() == null || $("#name").val() == "") {
						alert("이름을 입력해주세요.");
						$("#name").focus();
						 
						return false;
						}
					
					if ($("#pw").val() == null || $("#pw").val() == "") {
						alert("비밀번호를 입력해주세요.");
						$("#pw").focus();
						 
						return false;
						}
					
					if ($("#email").val() == null || $("#email").val() == "") {
						alert("이메일을 입력해주세요.");
						$("#email").focus();
						 
						return false;
						}
					var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
					
					if(!email_rule.test($("#email").val())){
						alert("이메일을 형식에 맞게 입력해주세요. ex) 1234@naver.com");
						$("#email").focus();
						return false;
						}
					
					if (confirm("회원가입하시겠습니까?")) {
						 
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
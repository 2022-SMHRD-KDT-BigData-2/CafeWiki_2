<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Indie+Flower&family=Lobster&family=Noto+Sans:ital,wght@1,700&family=Source+Sans+Pro:wght@700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/update2.css">
<script src="https://kit.fontawesome.com/8c9374f376.js"
	crossorigin="anonymous"></script>

</head>
<body>

	<!-- header part -->
	<div class="container">
		<div class="header">
			<div class="logo">
				<img id="img" src="./image/login/coffee.png">
				<p id="title">Cafe Wiki</p>
				<button class="btn" id="btn" type="button"
					onclick="location.href='logout.do'">로그아웃</button>
			</div>
		</div>


		<%
			MemberVO vo = (MemberVO) session.getAttribute("vo");
		%>

		<!-- main part -->
		<div class="Main">
			<h1 class="btn">회원정보 수정</h1>
			<div class="btn">
				<h2 class="join_title">
					회원ID :
					<%=vo.getId()%>
				</h2>
			</div>
			<form action="update.do" method="post">
				<div class="btn">
					<h3 class="join_title">
						<label for="pswd1">비밀번호</label>
					</h3>
					<span class="box int_pass"> <input type="password"
						class="btn" name="pw" id="pswd1" class="int" maxlength="20"
						placeholder="비밀번호 입력"> <span id="alertTxt">사용불가</span>
					</span> <span class="error_next_box"></span>
				</div>

				<!-- MOBILE -->
				<div class="btn">
					<h3 class="join_title">
						<label for="phoneNo">전화번호</label>
					</h3>
					<span class="box int_mobile"> <input type="tel" class="btn"
						name="tel" id="mobile" class="int" maxlength="16"
						placeholder="전화번호 입력">
					</span> <span class="error_next_box"></span>
				</div>

				<!-- EMAIL -->
				<div class="btn">
					<h3 class="join_title">
						<label for="email">이메일<span class="optional"></span></label>
					</h3>
					<span class="box int_email"> <input type="text" class="btn"
						name="email" id="email" class="int" maxlength="100"
						placeholder="이메일 입력">
					</span>
				</div>

				<div class="btn_area" class="btn">
					<button type="submit" id="btnJoin2">
						<span class="btn">수정</span>
					</button>

					<button onclick="location.href='delet.do'" type="button"
						id="btnJoin">
						<span class="btn">회원탈퇴</span>
					</button>
				</div>
			</form>
		</div>


		<%
			if (vo.getO_num() != null) {
		%>
		<!-- footer & menu part -->
		<div class="footer">
			<div id="btn_group">
				<button class="btn" id="btn1" type="button" onclick="location.href='cafe.do'">마이페이지</button>
				<button class="btn" id="btn2" type="button"
					onclick="location.href='BarcodeScan.jsp'">쿠폰
					관리</button>
				<button class="btn" id="btn3" type="button"
					onclick="location.href='customerManage.do'">내 회원 관리</button>
				<button class="btn" id="btn4" type="button" onclick="location.href='Update.jsp'">정보
					수정</button>
			</div>
		</div>
		<%
			} else {
		%>
		<!-- footer & menu part -->
		<div class="footer">
			<div id="btn_group">
				<button class="btn" id="btn1" type="button" onclick="location.href='UserMain.jsp'">마이페이지</button>
				<button class="btn" id="btn2" type="button"
					onclick="location.href='SearchMain.jsp'">카페 검색</button>
				<button class="btn" id="btn3" type="button"
					onclick="location.href='MyCoupon.jsp'">내 쿠폰 관리</button>
				<button class="btn" id="btn4" type="button"
					onclick="location.href='Update.jsp'">정보 수정</button>

			</div>
		</div>
		<%
			}
		%>

	</div>
</body>
</html>
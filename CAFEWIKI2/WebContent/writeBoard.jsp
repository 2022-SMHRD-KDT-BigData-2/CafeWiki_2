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
<link rel="stylesheet" type="text/css" href="./css/writeboard.css">
<script src="https://kit.fontawesome.com/8c9374f376.js"
	crossorigin="anonymous"></script>
<title></title>
</head>
<body>
	<!-- header part -->
	<div class="container">
		<div class="header">
			<div class="logo">
				<img id="img" src="./image/login/coffee.png">
				<p id="title">Cafe Wiki</p>
				<button id="btn" type="button" onclick="location.href='login.jsp'">로그아웃</button>
			</div>
		</div>
		<%
			MemberVO vo = (MemberVO) session.getAttribute("vo");
		%>

		<!--  게시판 작성 -->

		<form action="write.do?o_num=<%=vo.getO_num()%>" class="writeboard"
			name="writeboard" method="post" enctype="multipart/form-data">
			<table class="table" id="list">
				<tr>
					<td>제목</td>
					<td><input class="title" type="text" value="" name="b_title"
						id="" /></td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="2"><textarea name="b_cont" rows="30" cols="70"
							style="resize: none;"></textarea></td>
				</tr>
				<tr>
					<td rowspan="2">첨부파일</td>
				</tr>
				<tr>
					<td id="3"><input type="file" name="b_file " id="" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="reset" value="다시작성" >
						<input type="submit" value="작성" ></td>
				</tr>
			</table>
		</form>

		<!-- footer & menu part -->
		<div class="footer">
			<div id="btn_group">
				<button id="btn1" type="button" onclick="location.href='cafe.do'">마이페이지</button>

				<button id="btn2" type="button"
					onclick="location.href='BarcodeScan.jsp?o_num=<%=vo.getO_num()%>'">쿠폰
					관리</button>

				<button id="btn3" type="button"
					onclick="location.href='customerManage.do'">내 회원 관리</button>

				<button id="btn4" type="button" onclick="location.href='update.do'">정보
					수정</button>
			</div>
		</div>
	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>
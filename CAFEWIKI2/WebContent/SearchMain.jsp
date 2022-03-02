<%@page import="java.util.List"%>
<%@page import="Model.CafeVO"%>
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
<link rel="stylesheet" type="text/css" href="./css/searchMain3.css">
<script src="https://kit.fontawesome.com/8c9374f376.js"
	crossorigin="anonymous"></script>
	<style type="text/css">
.btn{
 	font-family: 'Jua';
    src: url("./font2/Jua.TTF");
}
a {
	text-decoration-line: none;
	color : #784748;
}	
	</style>
<title>Insert title here</title>
</head>
<body>

	<%
		List<CafeVO> clist = (List<CafeVO>) request.getAttribute("clist");
	%>
	<!-- header part -->
	<div class="container">
		<div class="header">
			<div class="logo">
				<img id="img" src="./image/login/coffee.png">
				<p id="title">Cafe Wiki</p>
				<button class="btn" id="btn" type="button" onclick="location.href='login.jsp'">�α׾ƿ�</button>
			</div>
		</div>


		<!-- main part -->
		<div class="Main">

			<!-- ��õ ī�� �˻�â �κ� -->
			<div class=all>
				<div class="wrap" height="100">
					<form action="searchname.do" method="post">
						<div class="search_box">
							<input type="text" name="store" maxlength="225"
								placeholder="ī���̸��� �Է����ּ���">
							<button type="submit">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</form>
				</div>

				<!-- ��õ ī�� ī�װ� �κ� -->
				<div class="category">
					<form action="searchtype.do" method="post">
						<div class="group1">
							<button type="button"
								onclick="location.href='searchtype.do?type=<%=1%>'">�����ϱ�
								����</button>
							<button type="button"
								onclick="location.href='searchtype.do?type=<%=2%>'">Ŀ�ǰ�
								Ư����</button>
							<button type="button"
								onclick="location.href='searchtype.do?type=<%=3%>'">ǳ����
								����</button>
						</div>
						<div class="group2">
							<button type="button"
								onclick="location.href='searchtype.do?type=<%=4%>'">���ٶ���
								����</button>
							<button type="button"
								onclick="location.href='searchtype.do?type=<%=5%>'">����Ʈ��
								�پ���</button>
						</div>
					</form>
				</div>
			</div>




			<!-- ��õ ī�� �˻���� ǥ�� -->
			<div class="result">
				<%
					if (clist != null) {
					for (CafeVO vo : clist) {
				%>
				<div class="Cafe">
					<div id="cafetitle">
						<a href="CafeMain.do?o_num=<%=vo.getO_num()%>" ><%=vo.getStore()%></a>
					</div>

					<div id="picture">
						<img src="<%=vo.getPicture()%>">
					</div>
					<div id="location">
						<img src="./image/location.png">
						<p class="btn"><%=vo.getLocation()%></p>
						<img src="./image/tel.png">
						<p class="btn"><%=vo.getC_tel()%></p>
						<img src="./image/time.png">
						<p class="btn"><%=vo.getTime()%></p>

					</div>
				</div>
				<%
					}
				}
				%>
			</div>
		</div>

		<!-- footer & menu part -->
		<div class="footer">
			<div id="btn_group">
				<button class="btn" id="btn1" type="button"
					onclick="location.href='UserMain.jsp'">����������</button>
				<button class="btn" id="btn2" type="button"
					onclick="location.href='SearchMain.jsp'">ī�� �˻�</button>
				<button class="btn" id="btn3" type="button"
					onclick="location.href='MyCoupon.jsp'">�� ���� ����</button>
				<button class="btn" id="btn4" type="button" onclick="location.href='Update.jsp'">���� ����</button>
			</div>
		</div>
		<!-- footer & menu part -->

	</div>
</body>
</html>
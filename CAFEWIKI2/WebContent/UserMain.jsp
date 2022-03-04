<%@page import="java.util.ArrayList"%>
<%@page import="Model.CouponVO"%>
<%@page import="Model.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="Model.BoardVO"%>
<%@page import="Model.CafeVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>마이페이지</title>
<link rel="stylesheet" href="./css/mypage.css">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<style type="text/css">
div {
	font-family: 'Jua';
	src: url("./font2/Jua.TTF");
}

@font-face {
	font-family: '3OF9_NEW';
	src: url("./font2/3OF9_NEW.TTF");
}

#barcode-input {
	border: 2px dotted black;
	height: 70px;
	padding: 5px;
	text-align: center;
	font-size: 95px;
}

a {
	text-decoration-line: none;
	color: #784748;
}

#num {
	font-size: 18px;
	padding: 10px;
	text-align: center;
	letter-spacing: 20px;
}

#name1 {
	padding: 10px;
	margin-bottom: 10px;
	border: 1px dashed rgb(124, 122, 122);
	background-color: #fff;
	width: 478px;
}

#name2 {
	padding: 10px;
	margin-bottom: 10px;
	border: 1px dashed rgb(124, 122, 122);
	background-color: #fff;
	width: 478px;
}

#name3 {
	padding: 10px;
	margin-bottom: 10px;
	border: 1px dashed rgb(124, 122, 122);
	background-color: #fff;
	width: 478px;
}

#welcome {
	font-size: 35px;
	padding: 0 0 10px 30px;
}

#btn {
	font-family: 'Jua';
	src: url("./font2/Jua.TTF");
	border: 1px solid rgb(66, 64, 64);
	font-size: 15px;
	font-weight: 400;
	margin-left: 100px;
	margin-right: 20px;
	margin-top: 40px;
	padding: 5px 10px 5px 10px;
	border-radius: 5px;
}

.btn {
	font-family: 'Jua';
	src: url("./font2/Jua.TTF");
}

#btn1 {
	border-right: 2px dotted rgb(46, 45, 45);
	padding: 23px 30px 20px 30px;
	font-size: 20px;
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	margin-right: -7px;
}

#btn2 {
	border-left: 2px dotted rgb(46, 45, 45);
	padding: 20px 30px 20px 30px;
	font-size: 20px;
	margin-right: -7px;
}

#btn3 {
	border-left: 2px dotted rgb(46, 45, 45);
	padding: 20px 30px 20px 30px;
	font-size: 20px;
	margin-right: -8px;
}

#btn4 {
	border-left: 2px dotted rgb(46, 45, 45);
	padding: 20px 30px 20px 30px;
	font-size: 20px;
	border-bottom-right-radius: 5px;
	border-top-right-radius: 5px;
}

.plus {
	margin-top: 5px;
	text-align: end;
}
</style>
</head>
<body>
	<%
		MemberVO vo = (MemberVO) session.getAttribute("vo");
	List<CafeVO> clist = (List<CafeVO>) session.getAttribute("clist");
	List<CouponVO> slist = (List<CouponVO>) session.getAttribute("slist");
	%>

	<!-- header part -->
	<div class="container">
		<div class="header">
			<div class="logo">
				<img id="img" src="./image/login/coffee.png">
				<p id="title">Cafe Wiki</p>
				<button id="btn" type="button" onclick="location.href='logout.do'">로그아웃</button>
			</div>
		</div>



		<!-- main part -->

		<div class="Main" style="font-family: 'Jua';">
			<ul id="bar">
				<li id="welcome"><%=vo.getName()%>님 환영합니다.</li>
				<li id="barcode-input" style="font-family: '3OF9_NEW';"><%="*" + vo.getU_num() + "*"%></li>
				<li id="num"><%=vo.getU_num()%></li>
			</ul>
			<%
				List<String> CafeName = new ArrayList<String>();
			for (CafeVO cvo : clist) {
				if (!CafeName.contains(cvo.getStore())) {
					CafeName.add(cvo.getStore());
				}
			}
			String[] CafeName2 = new String[CafeName.size()];
			for (int i = 0; i < CafeName.size(); i++) {
				CafeName2[i] = CafeName.get(i);
			}

			int[] CouponSum = new int[CafeName.size()];
			for (int i = 0; i < CafeName.size(); i++) {
				for (int j = 0; j < clist.size(); j++) {
					if (CafeName.get(i).equals(clist.get(j).getStore())) {
				CouponSum[i] += slist.get(j).getStamp();
					}
				}

			}

			int temp;
			String stemp;
			for (int i = 0; i < CafeName.size(); i++) {
				for (int j = i + 1; j < CafeName.size(); j++) {
					if (CouponSum[j] > CouponSum[i]) {
				temp = CouponSum[i];
				CouponSum[i] = CouponSum[j];
				CouponSum[j] = temp;
				stemp = CafeName2[i];
				CafeName2[i] = CafeName2[j];
				CafeName2[j] = stemp;
					}
				}
			}

			if (CafeName.size() <= 3) {

				for (int i = 0; i < CafeName.size(); i++) {
			%>
			<ul id="cafe-name">
				<li id="name<%=i + 1%>"><a
					href="CafeMain.do?store=<%=CafeName2[i]%>"><%=CafeName2[i]%></a> 보유
					스탬프 수 : <%=CouponSum[i]%><a id="hide<%=i%>" onclick="dis()"> <img
						class="plus" src="./image/plus.png" align="right"></a><br></li>
				<%
					int i2 = CouponSum[i] % 10;
				int i3 = CouponSum[i] / 10;
				%>
				<span style="display: none;" id="dis<%=i%>"> <%
 	if (i2 != 0) {
 %> <img
					src="./Stamp/Stamp<%=i2%>.png" width="500" height="300"
					id="img<%=i%>"> <%
 	}
 %> <%
 	if (i3 > 0) {
 	for (int j = 1; j <= i3; j++) {
 %> <img src="./Stamp/Stamp10.png" width="500" height="300">
					<%
						}
					}
					%>
				</span>
			</ul>
			<%
				}
			%>

			<%
				} else {
			for (int i = 0; i < 3; i++) {
			%>
			<ul id="cafe-name">
				<li id="name<%=i + 1%>"><a
					href="CafeMain.do?store=<%=CafeName2[i]%>"><%=CafeName2[i]%></a> 보유
					쿠폰수 : <%=CouponSum[i]%><a id="hide<%=i%>" onclick="dis()"> <img
						class="plus" src="./image/plus.png"></a><br></li>
			
			<%
				int i2 = CouponSum[i] % 10;
			int i3 = CouponSum[i] / 10;
			%>
			<span style="display: none;" id="dis<%=i%>"> <%
 	if (i2 != 0) {
 %> <img
				src="./Stamp/Stamp<%=i2%>.png" width="500" height="300"
				id="img<%=i%>"> <%
 	}
 %> <%
 	if (i3 > 0) {
 	for (int j = 1; j <= i3; j++) {
 %> <img src="./Stamp/Stamp10.png" width="500" height="300">
				<%
					}
				}
				%>
			</span></ul>
			<%
				}
			}
			%>

		</div>




		<!-- footer & menu part -->
		<div class="footer" style="font-family: 'Jua';">
			<div id="btn_group">
				<button class="btn" id="btn1" type="button"
					onclick="location.href='UserMain.jsp'">마이페이지</button>

				<button class="btn" id="btn2" type="button"
					onclick="location.href='rank.do'">카페 검색</button>

				<button class="btn" id="btn3" type="button"
					onclick="location.href='MyCoupon.jsp'">내 쿠폰 관리</button>

				<button class="btn" id="btn4" type="button"
					onclick="location.href='Update.jsp'">정보 수정</button>
			</div>
		</div>
		<!-- footer & menu part -->

	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#hide0").click(function() {
				$("#dis0").toggle();
			});
		})

		$(function() {
			$("#hide1").click(function() {
				$("#dis1").toggle();
			});
		})

		$(function() {
			$("#hide2").click(function() {
				$("#dis2").toggle();
			});
		})
	</script>
</body>
</html>
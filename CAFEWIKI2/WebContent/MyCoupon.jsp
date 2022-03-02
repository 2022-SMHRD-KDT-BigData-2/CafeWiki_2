<%@page import="java.util.ArrayList"%>
<%@page import="Model.CouponVO"%>
<%@page import="Model.CafeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Indie+Flower&family=Lobster&family=Noto+Sans:ital,wght@1,700&family=Source+Sans+Pro:wght@700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/customerManage2.css">
<script src="https://kit.fontawesome.com/8c9374f376.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="header">
			<div class="logo">
				<img id="img" src="./image/login/coffee.png">
				<p id="title">Cafe Wiki</p>
				<button class="btn" id="btn" type="button" onclick="location.href='logout.do">로그아웃</button>
			</div>
		</div>

	<%
	List<CafeVO> clist = (List<CafeVO>) session.getAttribute("clist");
	List<CouponVO> slist = (List<CouponVO>) session.getAttribute("slist");
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
	
	for (int i = 0; i < CafeName.size(); i++) {
	%>
	<h3 class ="btn"><%=CafeName.get(i)%></h3>
	<h4 class ="btn">적립된 쿠폰 수 = <%=CouponSum[i]%></h4>
	<%}%>
	
	<div class="footer">
			<div id="btn_group">
				<button class="btn" id="btn1" type="button" onclick="location.href='cafe.do'">마이페이지</button>

				<button class="btn" id="btn2" type="button"
					onclick="location.href='BarcodeScan.jsp'">쿠폰 관리</button>

				<button class="btn" id="btn3" type="button"
					onclick="location.href='customerManage.do'">내 회원 관리</button>

				<button class="btn" id="btn4" type="button" onclick="location.href='Update.jsp'">정보
					수정</button>
			</div>
		</div>


</body>
</html>
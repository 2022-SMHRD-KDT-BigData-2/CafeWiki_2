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
@font-face {
	font-family: '3OF9_NEW';
	src: url("./font2/3OF9_NEW.TTF");
}
</style>
</head>
<body>

	<%
		MemberVO vo = (MemberVO) session.getAttribute("vo");
	List<CafeVO> clist = (List<CafeVO>) session.getAttribute("clist");
	List<CouponVO> slist = (List<CouponVO>) session.getAttribute("slist");
	%>
	<a onclick="location.href='logout.do'">로그아웃</a>
	<h1>회원main입니다.</h1>
	<%
		if (vo != null) {
	%>
	<h1><%=vo.getName()%>님 환영합니다.
	</h1>
	<%
		}
	%>

	<h1 style="font-family: '3OF9_NEW';"><%="*" + vo.getU_num() + "*"%></h1>
	<h3><%=vo.getU_num()%></h3>

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

	<li id="name<%=i + 1%>"><a href="CafeMain.do?store=<%=CafeName2[i]%>"><%=CafeName2[i]%></a>
		보유 쿠폰수 : <%=CouponSum[i]%><a id="hide<%=i%>" onclick="dis()"> <img
			src="./image/plus.png"></a><br> <%
 	int i2 = CouponSum[i] % 10;
 int i3 = CouponSum[i] / 10;
 %> <img id="dis<%=i%>"
		src="./Stamp/Stamp<%=i2%>.png" width="500" height="300"
		style="display: none;"> <%
 	if (i3 > 0) {
 	for (int j = 1; j <= i3; j++) {
 %> <img id="dis<%=j%><%=i%>" src="./Stamp/Stamp10.png" width="500"
		height="300" style="display: none;"> <%
 	}
 }
 %></li>
	<%
		}
	%>
	<%
		} else {
	for (int i = 0; i < 3; i++) {
	%>

	<li id="name<%=i + 1%>">
	<a href="CafeMain.do?store=<%=CafeName2[i]%>"> <%=CafeName2[i]%> </a>
		보유 쿠폰수 : <%=CouponSum[i]%>
		<a id="hide<%=i%>" onclick="dis()">
		<img src="./image/plus.png"></a><br> <%
 	int i2 = CouponSum[i] % 10;
 int i3 = CouponSum[i] / 10;
 %> <img id="dis<%=i%>"
		src="./Stamp/Stamp<%=i2%>.png" width="500" height="300"
		style="display: none;"> <%
 	if (i3 > 0) {
 	for (int j = 1; j <= i3; j++) {
 %> <img id="dis<%=j%><%=i%>" src="./Stamp/Stamp10.png" width="500"
		height="300" style="display: none;"> <%
 	}
 }
 %></li>
	<%
		}
	}
	%>



	<br>
	<a href="UserMain.jsp">My Page</a>
	<a href="SearchMain.jsp">카페 검색</a>
	<a href="mycoupon.do?id=<%=vo.getId()%>">내 쿠폰 관리</a>
	<a href="Update.jsp">정보수정</a>

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

		$(function() {
			$("#hide0").click(function() {
				$("#dis10").toggle();
			});
		});

		$(function() {
			$("#hide1").click(function() {
				$("#dis11").toggle();
			});
		});

		$(function() {
			$("#hide2").click(function() {
				$("#dis12").toggle();
			});
		});

		$(function() {
			$("#hide0").click(function() {
				$("#dis20").toggle();
			});
		});

		$(function() {
			$("#hide1").click(function() {
				$("#dis21").toggle();
			});
		});

		$(function() {
			$("#hide2").click(function() {
				$("#dis22").toggle();
			});
		});
	</script>

</body>
</html>
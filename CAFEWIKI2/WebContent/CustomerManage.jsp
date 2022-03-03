<%@page import="java.util.ArrayList"%>
<%@page import="Model.CouponVO"%>
<%@page import="java.util.List"%>
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
<link rel="stylesheet" type="text/css" href="./css/customerManage2.css">
<script src="https://kit.fontawesome.com/8c9374f376.js"
	crossorigin="anonymous"></script>
<title></title>
</head>
<body>
	<%
		List<CouponVO> clist = (List<CouponVO>) request.getAttribute("cusvo");

	ArrayList<String> id = new ArrayList<String>();

	for (CouponVO cusvo : clist) {
		if (!id.contains(cusvo.getId())) {
			id.add(cusvo.getId());
		}
	}

	int[] CouponSum = new int[id.size()];
	for (int i = 0; i < id.size(); i++) {
		for (int j = 0; j < clist.size(); j++) {
			if (id.get(i).equals(clist.get(j).getId())) {
		CouponSum[i] += clist.get(j).getStamp();
			}
		}

	}
	%>
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



		<!-- main part -->
		<div class="Main">
			<%
				for (int i = 0; i < id.size(); i++) {
			%>
			<form class="customer">
				<div class="tablewrap">
					<table class="table1">
						<tr>
							<td id="user" rowspan="2"><img src="./image/user.png">
							</td>
						</tr>
						<tr>
							<td id="accu">

								<p class="btn">
									ID :
									<%=id.get(i)%><br> 보유 스탬프 수 :
									<%=CouponSum[i]%></p>

							</td>
							<td id="plus" rowspan="2"><a id="hide<%=i%>"
								onclick="dis()"> <img src="./image/plus.png"></a></td>
						</tr>
					</table>
				</div>
				<span style="display: none;" id="dis<%=i%>">
					<table class="table2">

						<h3 class="btn">최근 내역</h3>

						<tr class="btn">
							<th>적립/사용</th>
							<th>개수</th>
							<th>날짜</th>
						</tr>
						<%
							for (CouponVO cusvo : clist) {
							if ((id.get(i)).equals(cusvo.getId())) {
						%>
						<tr class="btn">
							<td>
								<%
									int a = cusvo.getStamp();
								if (a > 0) {
								%>적립 <%
									} else if (a < 0) {
								%> 사용 <%
									} else {
								%> 쿠폰생성 <%
									}
								%>
							</td>
							<td>
								<%
									if (a < 0) {
								%> <%=-cusvo.getStamp()%> <%
 	} else {
 %> <%=cusvo.getStamp()%> <%
 	}
 %>
							
							<td><%=cusvo.getS_Date()%></td>
						</tr>
						<%
							}
						}
						%>
					</table>
				</span>
			</form>
			<%
				}
			%>
		</div>
		<!-- footer & menu part -->
		<div class="footer">
			<div id="btn_group">
				<button class="btn" id="btn1" type="button"
					onclick="location.href='cafe.do'">마이페이지</button>

				<button class="btn" id="btn2" type="button"
					onclick="location.href='BarcodeScan.jsp'">쿠폰 관리</button>

				<button class="btn" id="btn3" type="button"
					onclick="location.href='customerManage.do'">내 회원 관리</button>

				<button class="btn" id="btn4" type="button"
					onclick="location.href='Update.jsp'">정보 수정</button>
			</div>
		</div>
		<!-- footer & menu part -->

	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript"> 
    <%for (int i = 0; i < id.size(); i++) {%>
    $(function (){
        $("#hide<%=i%>").click
        (function (){
          $("#dis<%=i%>").toggle();
			});
		})
	<%}%>
		
	</script>
</body>
</html>
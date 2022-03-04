<%@page import="java.util.ArrayList"%>
<%@page import="Model.CouponVO"%>
<%@page import="Model.CafeVO"%>
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
<link rel="stylesheet" type="text/css" href="./css/MyCoupon4.css">
<script src="https://kit.fontawesome.com/8c9374f376.js"
	crossorigin="anonymous"></script>
<style>
a {
   text-decoration-line: none;
   color : #784748;
}
</style>
</head>
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
	%>


	<div class="Main">
		<%
			for (int i = 0; i < CafeName.size(); i++) {
		%><div class="coupon">
			<table>
				<tr class="btn">
					<td rowspan="2"><img id="img" src="./image/mug.png"></td>
					<td align="center"><a href = "CafeMain.do?store=<%=CafeName2[i]%>"><%=CafeName2[i]%></a></td>
				</tr>

				</td>
				<tr class="btn">
					<td align="center">보유 스탬프 수 = <%=CouponSum[i]%></td>
					<td id="plus" rowspan="2">
					<a id="hide<%=i %>" onclick="dis()">
					<img src="./image/plus.png"></a>
					</td>
			</table>
			<%int i2 =  CouponSum[i]%10; 
              	int i3= CouponSum[i]/10;%>           
           <span style="display: none;" id ="dis<%=i %>">
           <%if(i2!=0){ %>           
         <img src="./Stamp/Stamp<%=i2 %>.png" width="300" height="200" id= "img<%=i%>" >
         <%} %>          
          <%if(i3>0){ 
         for(int j=1;j<=i3;j++){
        	 %>   
             <img src="./Stamp/Stamp10.png" width="300" height="200">
         <%}  
         }%>
		</span>
		</div>
		<%
			}
		%>
	</div>


	<!-- footer & menu part -->
	<div class="footer">
		<div id="btn_group">
			<button class="btn" id="btn1" type="button"
				onclick="location.href='UserMain.jsp'">마이페이지</button>

			<button class="btn" id="btn2" type="button"
				onclick="location.href='SearchMain.jsp'">카페 검색</button>

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
<%for(int i = 0; i < CafeName.size(); i++){%>
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
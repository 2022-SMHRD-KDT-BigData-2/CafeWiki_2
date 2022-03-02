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
<title>����������</title>
<link rel="stylesheet" href="./css/mypage.css">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
   rel="stylesheet">
<style type="text/css">
@font-face {
   font-family: '3OF9_NEW';
   src: url("./font2/3OF9_NEW.TTF");
}

a {
	text-decoration-line: none;
	color : brown;
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
                <button id="btn" type="button" onclick="location.href='login.jsp'">�α׾ƿ�</button>
            </div>
        </div>



    <!-- main part -->

        <div class="Main"> 
            <ul id="bar">
                <li id="welcome"><%=vo.getName()%>�� ȯ���մϴ�.</li>
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
           <li id="name<%=i + 1%>"><a href="CafeMain.do?store=<%=CafeName2[i]%>"><%=CafeName2[i]%></a>
      ���� ������ : <%=CouponSum[i]%><a id="hide<%=i %>" onclick="dis()">
         <img src="./image/plus.png"></a><br></li>
         <%int i2 =  CouponSum[i]%10; 
             int i3= CouponSum[i]/10;%>           
         <span style="display: none;" id ="dis<%=i %>">
         <img src="./Stamp/Stamp<%=i2 %>.png" width="500" height="300"  >
         
         <%if(i3>0){ 
            for(int j=1;j<=i3;j++){
               %>   
                <img src="./Stamp/Stamp10.png" width="500" height="300">
      <%     }
          }%>
         </span>
         <%
            }%>
<%       
   } else {
   for (int i = 0; i < 3; i++) {
      %>

      <li id="name<%=i + 1%>"><a href="CafeMain.do?store=<%=CafeName2[i]%>"><%=CafeName2[i]%></a>
      ���� ������ : <%=CouponSum[i]%><a id="hide<%=i %>" onclick="dis()">
      <img src="./image/plus.png"></a><br></li>
      <%int i2 =  CouponSum[i]%10; 
          int i3= CouponSum[i]/10;%>           
      <span style="display: none;" id ="dis<%=i %>">
      <img src="./Stamp/Stamp<%=i2 %>.png" width="500" height="300"  >
      
      <%if(i3>0){ 
         for(int j=1;j<=i3;j++){
            %>   
             <img src="./Stamp/Stamp10.png" width="500" height="300">
   <%     }
       }%>
      </span>
      <%
         }
   }
   %> 
            </ul>
        </div>




    <!-- footer & menu part -->
        <div class="footer">
			<div id="btn_group">
				<button id="btn1" type="button" onclick="location.href='cafe.do'">����������</button>

				<button id="btn2" type="button"
					onclick="location.href='SearchMain.jsp'">ī�� �˻�</button>

				<button id="btn3" type="button"
					onclick="location.href='MyCoupon.jsp'">�� ���� ����</button>

				<button id="btn4" type="button" onclick="location.href='Update.jsp'">����
					����</button>
			</div>
		</div>
        <!-- footer & menu part -->
        
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript"> 
    
    $(function (){
       $("#hide0").click
       (function (){
         $("#dis0").toggle();
      });
    })
    
    $(function (){
       $("#hide1").click
       (function (){
         $("#dis1").toggle();
      });
    })
    
    $(function (){
       $("#hide2").click
       (function (){
         $("#dis2").toggle();
      });
    })
     

        </script>
</body>
</html>
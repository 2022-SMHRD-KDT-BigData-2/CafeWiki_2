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
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Indie+Flower&family=Lobster&family=Noto+Sans:ital,wght@1,700&family=Source+Sans+Pro:wght@700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/usercorrection.css">
    <script src="https://kit.fontawesome.com/8c9374f376.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
    <!-- header part -->
    <div class="container">
        <div class="header">
            <div class="logo">
                <img id="img" src="./image/login/coffee.png">
                <p id="title">Cafe Wiki</p>
                <button id="btn" type="button" onclick="location.href='login.jsp'">�α׾ƿ�</button>
            </div>
        </div>

		<%MemberVO vo =  (MemberVO)session.getAttribute("vo");%>

        <!-- main part -->


        <div class="Main">
            <h1> ȸ������ ����</h1>
            <div>
                <h2 class="join_title">
                 	   ������ ȸ�� : <%=vo.getName() %>
                </h2>

            </div>
		<form action="update.do" method="post">
            <div>
                <h3 class="join_title"><label for="pswd1">��й�ȣ</label></h3>
                <span class="box int_pass">
                    <input type="password" name="pw" id="pswd1" class="int" maxlength="20" placeholder="��й�ȣ �Է�">
                    <span id="alertTxt">���Ұ�</span>
                </span>
                <span class="error_next_box"></span>
            </div>


            <!-- MOBILE -->
            <div>
                <h3 class="join_title"><label for="phoneNo">��ȭ��ȣ</label></h3>
                <span class="box int_mobile">
                    <input type="tel" name="tel" id="mobile" class="int" maxlength="16" placeholder="��ȭ��ȣ �Է�">
                </span>
                <span class="error_next_box"></span>
            </div>
            
            <!-- EMAIL -->
            <div>
                <h3 class="join_title"><label for="email">�̸���<span class="optional"></span></label></h3>
                <span class="box int_email">
                    <input type="text" name="email" id="email" class="int" maxlength="100" placeholder="�̸��� �Է�">
                </span>
            </div>
            
            <div class="btn_area">
                <button type="submit" id="btnJoin2">
                    <span>����</span>
                </button>

                <button onclick="location.href='delet.do'" type="button" id="btnJoin">
                    <span>ȸ��Ż��</span>
                </button>
            </div>
		</form>
        </div>





        <%if(vo.getO_num()!= null){ %>
        <!-- footer & menu part -->
        <div class="footer">
			<div id="btn_group">
				<button id="btn1" type="button" onclick="location.href='cafe.do'">����������</button>

				<button id="btn2" type="button"
					onclick="location.href='BarcodeScan.jsp'">����
					����</button>

				<button id="btn3" type="button"
					onclick="location.href='customerManage.do'">�� ȸ�� ����</button>

				<button id="btn4" type="button" onclick="location.href='Update.jsp'">����
					����</button>
			</div>
		</div>
        <!-- footer & menu part -->
        <%}else{ %>
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
        <%} %>

    </div>
</body>
</html>
<%@page import="Model.CouponVO"%>
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
    <link rel="stylesheet" type="text/css" href="./css/couponManage2.css">
    <script src="https://kit.fontawesome.com/8c9374f376.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<% CouponVO svo = (CouponVO)request.getAttribute("svo"); %>


    <!-- header part -->
    <div class="container">
        <div class="header">
            <div class="logo">
                <img id="img" src="./image/login/coffee.png">
                <p id="title">Cafe Wiki</p>
                <button class="btn" id="btn" type="button" onclick="location.href='logout.do'">�α׾ƿ�</button>
            </div>
        </div>



        <!-- main part -->
        <div class="Main">
            <div class="userwrap">
                <div class="icons">
                    <b><%=svo.getId() %>��</b>
                </div>
                    
                <div class="coupon">
                    <form id = "text" action="couponUpdate.do?id=<%=svo.getId()%>" method="post">
                        <input id="plus1" type="radio"  name="update" value="plus">
                        <label for="plus1"><span>����</span></label> 
                        <input id="minus1" type="radio" name="update" value="minus">
                        <label for="minus1" ><span>���</span></label><br>

                        <input id="input1" type="text" name="stamp">
                        <input class="btn" id="input2" type="submit" value="����" onclick="say()">
                    </form>
                </div>

        </div>


        </div>




         <!-- footer & menu part -->
        <div class="footer">
			<div id="btn_group">
				<button class="btn" id="btn1" type="button" onclick="location.href='cafe.do'">����������</button>

				<button class="btn" id="btn2" type="button"
					onclick="location.href='BarcodeScan.jsp'">����
					����</button>

				<button class="btn" id="btn3" type="button"
					onclick="location.href='customerManage.do'">�� ȸ�� ����</button>

				<button class="btn" id="btn4" type="button" onclick="location.href='Update.jsp'">����
					����</button>
			</div>
		</div>
        <!-- footer & menu part -->

    </div>

</body>
<script type="text/javascript">
function say(){
	var textBox = document.getElementById("input1");	
	if(textBox != null ){
		alert(<%=svo.getId()%>+"�Կ���"+textBox.value+"���� ����/����Ͻðڽ��ϱ�?");
		}		
	}
</script >
</html>
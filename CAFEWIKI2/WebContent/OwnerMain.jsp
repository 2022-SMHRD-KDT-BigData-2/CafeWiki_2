<%@page import="Model.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="Model.CafeVO"%>
<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
<link
	href="https://fonts.googleapis.com/css2?family=Jua&amp;display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Indie+Flower&amp;family=Lobster&amp;family=Noto+Sans:ital,wght@1,700&amp;family=Source+Sans+Pro:wght@700&amp;display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/ceocafe4.css">
<script src="https://kit.fontawesome.com/8c9374f376.js"
	crossorigin="anonymous"></script>
</head>
<body>

<%
		MemberVO vo = (MemberVO) session.getAttribute("vo");
	List<CafeVO> clist = (List<CafeVO>) request.getAttribute("cvo");
	List<BoardVO> blist = (List<BoardVO>) request.getAttribute("bvo");
	// blist : ����ڹ�ȣ�� ~�� ����Ʈ
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

<%
		for (CafeVO cvo : clist) {
	%>
        <div class="Main">
            <div class="Cafe">
                <div id="cafetitle"><%=cvo.getStore()%></div>
                <div id="picture">
                    <img src="<%=cvo.getPicture()%>">
                </div>
                <div id="location">
                    <img src="./image/location.png">
                    <p><%=cvo.getLocation()%></p>
                    <img src="./image/tel.png">
                    <p><%=cvo.getC_tel()%></p>
                    <img src="./image/time.png">
                    <p><%=cvo.getTime()%></p>

                </div>
            </div>


            <!--  �������� view  -->
            <div class="board">
                <h1 class="d-none">��������</h1>
                <div class="review-btn">
                    <button class="btn" id="review-btn1" type="button" onclick="location.href='writeBoard.jsp?o_num=<%=vo.getO_num()%>'">�ۼ�</button>
                </div>
                <div class="cafeboard">
                    <table class="table">
                        <thead class="thead">
                            <tr>
                                <td>����</td>
                                <td>��¥</td>
                            </tr>

                        </thead>
                        <tbody class="tbody">
                        <%
				for (BoardVO bvo : blist) {
			%>
			<tr>
				<td><a href="viewBoard.do?b_num=<%=bvo.getB_num()%>"><%=bvo.getB_title()%></a></td>
				<td><%=bvo.getB_date().split(" ")[0]%></td>
			</tr>
			<%
				}
			%>
                        </tbody>
                    </table>
                </div>
            </div>


	<%String[] review = cvo.getReview().split(","); %>
            <!--  �湮�� ����  -->
            <div class="review">
                <h1 class="r-none">�湮�� ����</h1>
                <table class="table">
                    <%for(int i=0;i<review.length;i++){ %>
                    <tbody class="tbody1">
                        <tr>
                            <td></td>
                            <td rowspan="2">
                                <i class="fa-solid fa-user"></i>
                            </td>
                            <td><%=review[i]%></td>
                        </tr>
                        <%} %>
                    </tbody>
                  
                </table>
                <%} %>
            </div>

        </div>




        <!-- footer & menu part -->
        <div class="footer">
            <div id="btn_group">
                <button class="btn" id="btn1" type="button" onclick="location.href='cafe.do'">����������</button>
                <button class="btn" id="btn2" type="button" onclick="location.href='BarcodeScan.jsp'">�������� </button>
                <button class="btn" id="btn3" type="button" onclick="location.href='customerManage.do'">ȸ������ </button>
                <button class="btn" id="btn4" type="button" onclick="location.href='Update.jsp'">�������� </button>
            </div>
        </div>
        <!-- footer & menu part -->

    </div>
</body>
</html>
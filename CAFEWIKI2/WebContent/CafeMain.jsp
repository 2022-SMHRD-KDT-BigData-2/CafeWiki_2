<%@page import="java.util.List"%>
<%@page import="Model.BoardVO"%>
<%@page import="Model.CafeVO"%>
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
    <link rel="stylesheet" type="text/css" href="./css/usercafe4.css">
    <script src="https://kit.fontawesome.com/8c9374f376.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
	<%
	CafeVO vo = (CafeVO)request.getAttribute("cvo");
	List<BoardVO> Blist = (List<BoardVO>)request.getAttribute("bvo");
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
        <div class="Main">
            <div class="Cafe">
                <div id="cafetitle"><%=vo.getStore()%></div>
                <div id="picture">
                    <img src="<%=vo.getPicture() %>">
                </div>
                <div id="location">
                    <img src="./image/location.png">
                    <p><%=vo.getLocation() %></p>
                    <img src="./image/tel.png">
                    <p><%=vo.getC_tel() %></p>
                    <img src="./image/time.png">
                    <p><%=vo.getTime() %></p>

                </div>
            </div>


            <!--  공지사항 view  -->
            <div class="board">
                <h1 class="d-none">게시판</h1>
                <div class="cafeboard">
                    <table class="table">
                        <thead class="thead">
                            <tr>
                                <td>제목</td>
                                <td>날짜</td>
                            </tr>

                        </thead>
                <%
				for (BoardVO bvo : Blist) {
				%>
                        <tbody class="tbody">
                            <tr>
                                <td><a href="viewBoard.do?b_num=<%=bvo.getB_num()%>"><%=bvo.getB_title()%></a></td>
                                <td><%=bvo.getB_date().split(" ")[0]%></td>
                            </tr>
                        </tbody>
                <%
				}
				%>
                    </table>
                </div>
            </div>


			<%String[] review = vo.getReview().split(","); %>
            <!--  방문자 리뷰  -->
            <div class="review">
                <h1 class="r-none">방문자 리뷰</h1>
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
            </div>

        </div>




        <!-- footer & menu part -->
        <div class="footer">
			<div id="btn_group">
				<button class ="btn" id="btn1" type="button" onclick="location.href='UserMain.jsp'">마이 페이지</button>

				<button class ="btn" id="btn2" type="button"
					onclick="location.href='SearchMain.jsp'">카페 검색</button>

				<button class ="btn" id="btn3" type="button"
					onclick="location.href='MyCoupon.jsp'">내 쿠폰 관리</button>

				<button class ="btn" id="btn4" type="button" onclick="location.href='Update.jsp'">정보
					수정</button>
			</div>
		</div>
        <!-- footer & menu part -->

    </div>
</body>
</html>
<%@page import="org.apache.ibatis.executor.ReuseExecutor"%>
<%@page import="Model.CafeVO"%>
<%@page import="Model.MemberVO"%>
<%@page import="Model.BoardVO"%>
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
    <link rel="stylesheet" type="text/css" href="./css/viewBoard.css">
    <script src="https://kit.fontawesome.com/8c9374f376.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<%		HttpSession session1 = request.getSession();
		MemberVO vo = (MemberVO)session1.getAttribute("vo");
		BoardVO bvo = (BoardVO)request.getAttribute("bvo");
		CafeVO cvo = (CafeVO)request.getAttribute("cvo");
	
	%>
    <!-- header part -->
    <div class="container">
        <div class="header">
            <div class="logo">
                <img id="img" src="./image/login/coffee.png">
                <p id="title">Cafe Wiki</p>
                <button id="btn" type="button" onclick="location.href='login.jsp'">로그아웃</button>
            </div>
        </div>



        <!-- main part -->

        <div class="Main">
            <div id="board">
                <h1>
                    <%=cvo.getStore() %>
                </h1>
                <table id="list" >
                    <tr>
                        <td id="veiwtitle">
                            <%=bvo.getB_title() %>
                        </td>
                        <td id="date">
                            <%=bvo.getB_date() %>
                    </tr>

                    <tr height="200px">
                        <td id="cont" colspan="2">
                            <%=bvo.getB_cont() %>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">

                            <img alt="" src="img/<%=bvo.getB_file()%>">

                        </td>
                    </tr>
                    <tr>
                        <td id="veiwbtn" colspan="2">
                            <button id="btnJoin" type="button" onclick="location.href='cafe.do'">뒤로가기</button>
                        </td>
                    </tr>

                </table>
            </div>
        </div>



	<%if(vo.getO_num()!= null){ %>
        <!-- footer & menu part -->
        <div class="footer">
			<div id="btn_group">
				<button id="btn1" type="button" onclick="location.href='cafe.do'">마이페이지</button>

				<button id="btn2" type="button"
					onclick="location.href='BarcodeScan.jsp'">쿠폰
					관리</button>

				<button id="btn3" type="button"
					onclick="location.href='customerManage.do'">내 회원 관리</button>

				<button id="btn4" type="button" onclick="location.href='update.do'">정보
					수정</button>
			</div>
		</div>
        <!-- footer & menu part -->
        <%}else{ %>
         <!-- footer & menu part -->
        <div class="footer">
			<div id="btn_group">
				<button id="btn1" type="button" onclick="location.href='cafe.do'">마이페이지</button>

				<button id="btn2" type="button"
					onclick="location.href='SearchMain.jsp'">카페 검색</button>

				<button id="btn3" type="button"
					onclick="location.href='MyCoupon.jsp'">내 쿠폰 관리</button>

				<button id="btn4" type="button" onclick="location.href='Update.jsp'">정보
					수정</button>
			</div>
		</div>
        <!-- footer & menu part -->
        <%} %>

    </div>
</body>
</html>
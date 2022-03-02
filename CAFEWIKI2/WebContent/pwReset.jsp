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
    <link rel="stylesheet" type="text/css" href="./css/pwsearch.css">
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



        <!-- main part -->

        <div class="Main">
            <div class="wrapmain">
                <h1> PW�缳��</h1>
                <form action="pwReset.do" method="post">
                <div class="id">
                    <h3 class="join_title">
                        <label for="id">PW</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" name="pw" id="id" class="int" maxlength="20" placeholder="���ο� ��й�ȣ�� �Է����ּ���">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <div class="btn_area">
                    <button onclick="location.href='pwSearch.jsp'" type="button" id="btnJoin2">
                        <span url="">����</span>
                    </button>
                    <button type="submit" id="btnJoin">
                        <span>����</span>
                    </button>
                </div>
                </form>
            </div>

        </div>



        <!-- footer & menu part -->
        <div class="footer">
            <div id="btn_group">
                <button id="btn1" type="button" onclick="location.href='Mypage.html'">����������</button>
                <button id="btn2" type="submit">�������� </button>
                <button id="btn3" type="submit">ȸ������ </button>
                <button id="btn4" type="submit">�������� </button>
            </div>
        </div>
        <!-- footer & menu part -->

    </div>
</body>
</html>
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
<div class="container">
        <div class="header">
            <div class="logo">
                <img id="img" src="./image/login/coffee.png">
                <p id="title">Cafe Wiki</p>
                <button id="btn" type="button" onclick="location.href='logout.do'">로그아웃</button>
            </div>
        </div>
<div class="Main">
			<div class="wrapmain">
				<h1>PW찾기</h1>
				<form action="pwsearch.do" method="post">
					<div class="id">
						<h3 class="join_title">
							<label for="id">아이디</label>
						</h3>
						<span class="box int_id"> <input name="id" type="text" placeholder="id를 입력하세요" class="int" style="width: 300px; margin: 0 auto;"><br>
						</span> <span class="error_next_box"></span>
					</div>
					
					<div class="tel">
						<h3 class="join_title">
							<label for="tel">전화번호</label>
						</h3>
						<span class="box int_tel"> <input name="tel" type="text" placeholder="tel를 입력하세요" class="int" style="width: 300px; margin: 0 auto;"><br>
						</span> <span class="error_next_box"></span>
					</div>

					<!-- EMAIL -->
					<div class="email">
						<h3 class="join_title">
							<label for="email">이메일<span class="optional"></span></label>
						</h3>
						<span class="box int_email"> <input name="email" type="text" placeholder="email를 입력하세요" class="int" style="width: 300px; margin: 0 auto;"><br>
						</span>
					</div>

					<div class="btn_area">
						<button onclick="location.href='login.jsp'" type="button"
							id="btnJoin2">
							<span url="">이전</span>
						</button>
						<span>
						<button type="submit" id="btnJoin2">다음</button>
						</span>
					</div>
				</form>
			</div>

		</div>


	</div>
</body>
</html>
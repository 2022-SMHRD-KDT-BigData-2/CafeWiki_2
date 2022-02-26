<%@page import="Model.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="Model.CafeVO"%>
<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		MemberVO vo = (MemberVO) session.getAttribute("vo");
	List<CafeVO> clist = (List<CafeVO>) request.getAttribute("cvo");
	List<BoardVO> blist = (List<BoardVO>) request.getAttribute("bvo");
	// blist : 사업자번호가 ~인 리스트
	%>
<h1>Cafe Wiki</h1>
<button type="button" onclick="location.href='logoutCon'">로그아웃</button>


	<%
		for (CafeVO cvo : clist) {
	%>

	<h1><%=cvo.getStore()%></h1>
	<h1>이이남 스튜디오</h1>

	<div id="picture">
		<img src="<%=cvo.getPicture()%>">
	</div>

	<div id="location">주소</div>
	<p>
		광주 남구 제중로 47번길 10 이이남 스튜디오
		<%=cvo.getLocation()%></p>

	<p>
		전화번호
		<%=cvo.getC_tel()%></p>

	<!-- split(영업시간) -->
	<p>
		영업시간
		<%=cvo.getTime()%></p>


	<div id="board">


		<h3>게시판</h3>
		<a href="writeBoard.jsp?o_num=<%=vo.getO_num()%>">작성</a>

		<table id="list">
			<tr>
				<td>제목</td>
				<td>날짜</td>
			</tr>

				<%
					for (BoardVO bvo : blist) {
				%>
				<tr>
				<td><a href="viewBoard.do?b_num=<%=bvo.getB_num() %>"><%=bvo.getB_title()%></a></td>
				<td><%=bvo.getB_date().split(" ")[0]%></td>	
				</tr>
				<%
					}
				%>
		

		</table>


		<h3>방문자 리뷰</h3>
		<table>
			<tr>
				<td rowspan="2">img</td>
				<td>ID</td>
			</tr>
			<tr>
				<td></td>
				<td><%=cvo.getReview().split(",")[0] %></td>
			</tr>
			<tr>
				<td rowspan="2">img</td>
				<td>ID</td>
			</tr>
			<tr>
				<td></td>
				<td>지금까지 이런맛은 없었다!</td>
			</tr>

		</table>
		<%
			}
		%>
		<button type="button" onclick="location.href='cafe.do'">My Page</button>

		<button type="button" onclick="location.href='BarcodeScan.jsp?o_num=<%=vo.getO_num()%>'">쿠폰 관리</button>

		<button type="button" onclick="location.href='customerManager.do'">내 회원 관리</button>

		<button type="button" onclick="location.href='Update.jsp'">정보 수정</button>
</body>
</html>
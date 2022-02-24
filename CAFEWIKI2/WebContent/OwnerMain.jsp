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
	//List<BoardVO> Blist = (List<BoardVO>)request.getAttribute("Blist");
	%>


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
	<a href="writerBoard.jsp">작성</a>
		<table id="list">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>시간</td>
			</tr>

		</table>


		<h3>방문자 리뷰</h3>
		<table>
			<tr>
				<td rowspan="2">img</td>
				<td>ID</td>
			</tr>
			<tr>
				<td></td>
				<td>지금까지 이런맛은 없었다!</td>
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
		<button type="button" onclick="location.href='#'">My Page</button>

		<button type="button" onclick="location.href='#'">주변 카페</button>

		<button type="button" onclick="location.href='#'">내 쿠폰 관리</button>

		<button type="button" onclick="location.href='#'">정보 수정</button>

</body>
</html>
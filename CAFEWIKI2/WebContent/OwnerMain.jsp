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
	MemberVO vo = (MemberVO)session.getAttribute("vo");

	%>
	
		<h2>이이남 스튜디오</h2>
	<table>
		<tr>
			<td rowspan="3">img</td>
			<td>광주 남구</td>
		</tr>
		<tr>
			<td></td>
			<td>0507-1414</td>
		</tr>
		<tr>
			<td></td>
			<td>영업시간</td>
		</tr>
	</table>


	<h3>공지사항</h3>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>날짜</th>

		</tr>
		<tr>
			<td>1</td>
			<td>오늘</td>
			<td>2022-02-21</td>
		</tr>
		<tr>
			<td>2</td>
			<td>쉽니다</td>
			<td>2022-02-20</td>
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


			<a href="#"><div>My Page</div></a>
			<a href="#"><div>주변 카페<div></a>
			<a href="#"><div>내 쿠폰 관리<div></a>
			<a href="#"><div>정보 수정<div></a>


	
	
	
</body>
</html>
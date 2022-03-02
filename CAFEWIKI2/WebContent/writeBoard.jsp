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
<link rel="stylesheet" type="text/css" href="./css/writeboard.css">
<script src="https://kit.fontawesome.com/8c9374f376.js"
	crossorigin="anonymous"></script>
<style media="all" id="fa-v4-font-face"></style>
<title>�Խ����ۼ�</title>
</head>
<body>
	<%
		MemberVO vo = (MemberVO) session.getAttribute("vo");
	%>

	<div id="board">
		<form action="write.do?o_num=<%=vo.getO_num()%>" method="post"
			enctype="multipart/form-data">
			<table id="list">
				<tr>
					<td>����</td>
					<td><input type="text" name="b_title"></td>
				</tr>

				<tr>
					<td colspan="2">����</td>
				</tr>
				<tr>
					<td colspan="2"><input name="b_file" type="file"
						style="float: right;"> <textarea name="b_cont" rows="10"
							style="resize: none;"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="reset" value="�ٽ��ۼ�"> <input
						type="submit" value="�ۼ�"></td>
				</tr>
			</table>
		</form>
	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>
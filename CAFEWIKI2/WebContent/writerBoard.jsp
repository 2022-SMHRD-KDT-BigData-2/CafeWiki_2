<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

			<div id = "board">
				<form action="write.do" method="post" enctype="multipart/form-data">
				<table id="list">
					<tr>
						<td>����</td>
						<td><input type="text" name="b_title"> </td>
					</tr>
					<tr>
						<td>�ۼ���</td>
						<td><input  type="text" name="o_num" > </td>
					</tr>
					<tr>
						<td colspan="2">����</td>
					</tr>
					<tr>
						<td colspan="2">
							<input name="file" type="file" style="float: right;">
							<textarea name="content" rows="10" style="resize: none;"></textarea>			
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="�ٽ��ۼ�">
							<input type="submit" value="�ۼ�">
						</td>
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
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CouponVO"%>
<%@page import="java.util.List"%>
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
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Indie+Flower&family=Lobster&family=Noto+Sans:ital,wght@1,700&family=Source+Sans+Pro:wght@700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/customManage.css">
<script src="https://kit.fontawesome.com/8c9374f376.js"
	crossorigin="anonymous"></script>
<title></title>
</head>
<body>
	<%
		List<CouponVO> clist = (List<CouponVO>) request.getAttribute("cusvo");

	ArrayList<String> id = new ArrayList<String>();

	for (CouponVO cusvo : clist) {
		if (!id.contains(cusvo.getId())) {
			id.add(cusvo.getId());
		}
	}

	int[] CouponSum = new int[id.size()];
	for (int i = 0; i < id.size(); i++) {
		for (int j = 0; j < clist.size(); j++) {
			if (id.get(i).equals(clist.get(j).getId())) {
		CouponSum[i] += clist.get(j).getStamp();
			}
		}

	}
	%>

	<p>
		<%
			for (int i = 0; i < id.size(); i++) {
		%>ID :
		<%=id.get(i)%>
		���� ������ �� :
		<%=CouponSum[i]%>
	</p>
	
	<table>
		<tr>
			<th>����/���</th>
			<th>����</th>
			<th>��¥</th>
		</tr>
		<%
			for (CouponVO cusvo : clist) {
			if ((id.get(i)).equals(cusvo.getId())) {
		%>
		<tr>
			<td>
				<%
					int a = cusvo.getStamp();
				if (a > 0) {
				%>���� <%
					} else {
				%> ��� <%
					}
				%>
			</td>

			<td>
				<%
					if (a < 0) {
				%> <%=-cusvo.getStamp()%> <%
 	} else {
 %> <%=cusvo.getStamp()%> <%
 	}
 %>
			</td>
			<td><%=cusvo.getS_Date()%></td>
		</tr>
		<%
			}
		}
		%>
	</table>
	<%
		}
	%>
	</div>
	<div class="footer">
		<div id="btn_group">
			<button id="btn1" type="button" onclick="location.href='Mypage.html'">����������</button>
			<button id="btn2" type="submit">��������</button>
			<button id="btn3" type="submit">ȸ������</button>
			<button id="btn4" type="submit">��������</button>
		</div>
	</div>
	<!-- footer & menu part -->

	</div>
</body>
</html>
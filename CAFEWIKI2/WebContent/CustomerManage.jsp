<%@page import="Model.CouponVO"%>
<%@page import="java.util.List"%>
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
	List<CouponVO> clist = (List<CouponVO>) request.getAttribute("cusvo");
	%>

	<h1></h1>
	<table>
		<tr>
			<th>ID</th>
			<th>적립/사용</th>
			<th>개수</th>
			<th>날짜</th>
		</tr>
		<%
		for (CouponVO cusvo : clist) {
		%>
		<tr>
			<td><%=cusvo.getId()%></td>
			<td>
				<%int a = cusvo.getStamp();
				if(a>0){
				%>적립 <%}else{%>
				 사용 <% }%>
			
			<td>
				<% if(a<0) { %>
				<%=-cusvo.getStamp()%>
				<%}else{%>
				<%=cusvo.getStamp() %>
				<% }%>
			</td>
			<td><%=cusvo.getS_Date()%></td>
		</tr>

		<%
		}
		%>
	</table>
</body>
</html>
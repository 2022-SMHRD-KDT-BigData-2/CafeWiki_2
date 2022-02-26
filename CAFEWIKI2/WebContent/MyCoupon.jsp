<%@page import="java.util.ArrayList"%>
<%@page import="Model.CouponVO"%>
<%@page import="Model.CafeVO"%>
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
	List<CafeVO> clist = (List<CafeVO>) session.getAttribute("clist");
	List<CouponVO> slist = (List<CouponVO>) session.getAttribute("slist");
	List<String> CafeName = new ArrayList<String>();
	for (CafeVO cvo : clist) {
		if (!CafeName.contains(cvo.getStore())) {
			CafeName.add(cvo.getStore());
		}
	}

	int[] CouponSum = new int[CafeName.size()];
	for (int i = 0; i < CafeName.size(); i++) {
		for (int j = 0; j < clist.size(); j++) {
			if (CafeName.get(i).equals(clist.get(j).getStore())) {
		CouponSum[i] += slist.get(j).getStamp();
			}
		}

	}
	for (int i = 0; i < CafeName.size(); i++) {
	%>
	<h3><%=CafeName.get(i)%></h3>
	<h4>적립된 쿠폰 수 = <%=CouponSum[i]%></h4>
	<%}%>


</body>
</html>
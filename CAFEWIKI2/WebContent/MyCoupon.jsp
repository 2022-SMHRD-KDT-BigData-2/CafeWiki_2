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

	String[] CafeName2 = new String[CafeName.size()];
	for (int i = 0; i < CafeName.size(); i++) {
		CafeName2[i] = CafeName.get(i);
	}
	
	int[] CouponSum = new int[CafeName.size()];
	for (int i = 0; i < CafeName.size(); i++) {
		for (int j = 0; j < clist.size(); j++) {
			if (CafeName.get(i).equals(clist.get(j).getStore())) {
		CouponSum[i] += slist.get(j).getStamp();
			}
		}

	}
	
	int temp;
	String stemp;
	for (int i = 0; i < CafeName.size(); i++) {
		for (int j = i + 1; j < CafeName.size(); j++) {
			if (CouponSum[j] > CouponSum[i]) {
		temp = CouponSum[i];
		CouponSum[i] = CouponSum[j];
		CouponSum[j] = temp;
		stemp = CafeName2[i];
		CafeName2[i] = CafeName2[j];
		CafeName2[j] = stemp;
			}
		}
	}
	
	for (int i = 0; i < CafeName.size(); i++) {
	%>
	<h3><%=CafeName.get(i)%></h3>
	<h4>������ ���� �� = <%=CouponSum[i]%></h4>
	<%}%>
	
	<a href="UserMain.jsp">My Page</a>
	<a href="SearchMain.jsp">ī�� �˻�</a>
	<a href="MyCoupon.jsp">�� ���� ����</a>
	<a href="Update.jsp">��������</a>


</body>
</html>
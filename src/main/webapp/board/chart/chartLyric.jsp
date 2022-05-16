<%@page import="chart.ChartBean"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="chartMgr" class="chart.ChartMgr"/>
<%
	String title = request.getParameter("title");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		ChartBean bean = new ChartBean();
		bean = chartMgr.getDetaile(title); 
	%>
	<div><%= bean.getLyric()%></div>
</body>
</html>
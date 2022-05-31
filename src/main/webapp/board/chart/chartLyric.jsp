<%@page import="chart.ChartBean"%>
<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="chartMgr" class="chart.ChartMgr"/>
<%
	int chnum = Integer.parseInt(request.getParameter("chnum"));
	ChartBean bean = new ChartBean();
	bean = chartMgr.getDetaile(chnum); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=bean.getTitle() %>&nbsp;의 가사</title>
</head>
<body>
	<div><%= bean.getLyric()%></div>
</body>
</html>
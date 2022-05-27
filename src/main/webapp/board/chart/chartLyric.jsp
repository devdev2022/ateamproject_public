<%@page import="chart.ChartBean"%>
<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="chartMgr" class="chart.ChartMgr"/>
<%
	String title = request.getParameter("title");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=title %>&nbsp;의 가사</title>
</head>
<body>
	<%
		ChartBean bean = new ChartBean();
		bean = chartMgr.getDetaile(title); 
	%>
	<div><%= bean.getLyric()%></div>
</body>
</html>
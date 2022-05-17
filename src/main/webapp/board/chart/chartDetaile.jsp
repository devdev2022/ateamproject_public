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
<title>Insert title here</title>
</head>
<body>
	<%
		ChartBean bean = new ChartBean();
		bean = chartMgr.getDetaile(title); 
	%>
	<%
	out.print(bean.getVideo());	
	if(bean.getVideo() == null){
	%>
	<div>뮤직비디오 정보가 없습니다.</div>
	<%}else{ %>
	<div>
		<iframe style="width:100%; height:100%; position : absolute;top:0; left:0" id="frame_video_" scrolling="no" src="https://www.melon.com/video/player.htm?mvId=<%=bean.getVideo() %>
		&amp;menuId=&amp;autoPlay=Y" frameborder="0" allowfullscreen="true" webkitallowfullscreen="true" mozallowfullscreen="true"></iframe>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div>
		<%=bean.getVideoInfo() %>
	</div>
	<%} %>
</body>
</html>

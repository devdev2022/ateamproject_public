<%@page contentType="text/html; charset=UTF-8"%>
<%


%>

<head>
<link href="../jsplayout/css/layoutInt.css" rel="stylesheet">
</head>

<body class="body">
<%@ include file="../jsplayout/top.jsp" %>
	<div class="ateam_columns">
		<%@ include file="../jsplayout/left.jsp" %>
		
		<div class="ateam_contents w-col w-col-8" style="overflow:auto">
			<!-- ==============���댁� �댁�� ����============= -->
			
			<%@ include file="../jspmember/logoutContents.jsp" %>

			<!-- ==============���댁� �댁�� ��============== -->
		</div>
		
		<%@ include file="../jsplayout/right.jsp" %>
		
	</div>
<%@ include file="../jsplayout/bottom.jsp" %>
	
</body>
</html>

<%@page contentType="text/html; charset=UTF-8"%>
<%
	String topId = (String)session.getAttribute("idKey");
%>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

	
	<header class="header_title wf-section" style="font-family: 'Roboto', sans-serif;">
		<div class="ateam_header_div">
			<img src="../icons/like_gray.png">
		</div>
		<div class="ateam_header_btns w-row">
		<%if(topId==null){%> 
			<div class="w-col w-col-6"><a href="../jspmember/login.jsp">LOGIN</a></div>
			<div class="w-col w-col-6"><a href="../jspmember/join.jsp">JOIN</a></div>
			<%}else{%>
			<div class="w-col w-col-6"><a href="../jspmember/logout.jsp">LOGOUT</a></div>
			<div class="w-col w-col-6"></div>
			<%}%>
		</div>
	</header>
	<header class="ateam_headbar wf-section" style="font-family: 'Roboto', sans-serif;">
		<div class="ateam_header_navbar" style="display: flex; justify-content: space-evenly;">
			<div class="ateam_header_nav_btn"></div>
			<div class="ateam_header_nav_btn"><a href="../jsphome/home.jsp">HOME</a></div>
			<div class="ateam_header_nav_btn">About</div>
			<div class="ateam_header_nav_btn"><a href="../boardList.jsp">Hip-Hop</div></a>
			<div class="ateam_header_nav_btn"><a href="../boardList.jsp">R&B</div></a>
			<div class="ateam_header_nav_btn"><a href="../boardList.jsp">Pop</div></a>
			<div class="ateam_header_nav_btn"><a href="../boardList.jsp">EDM</div></a>
			<div class="ateam_header_nav_btn"><a href="../jspmember/myPageIndex.jsp">My Page</a></div>
			<!-- 수정사항 : 로그인되어 있지 않으면, jsplogin/login.jsp로. 로그인되어 있으면, myPageIndex.jsp로.  -->
			<div class="ateam_header_nav_btn"></div>
		</div>
	</header>


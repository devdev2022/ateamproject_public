<%@page contentType="text/html; charset=UTF-8"%>
<%
	String topId = (String)session.getAttribute("idKey");
%>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Koulen&family=Roboto&display=swap" rel="stylesheet">
<script type="text/javascript">
	function boardListFrm(bValue) {
		document.boardListFrm.bValue.value = bValue;
		document.boardListFrm.action = "../jspboard/boardList.jsp";
		document.boardListFrm.submit();
	}
</script>
	
	<header class="header_title wf-section" style="font-family: 'Roboto', sans-serif;">
		<div class="ateam_header_div">
			<img src="../icon/logo.png" style="max-height: 5vh;">
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
	<header class="ateam_headbar wf-section" style="font-family: 'Koulen', cursive;">
	<form style="margin: 0px;" method="get" action="../jspboard/boardList.jsp" name="boardListFrm">
		<div class="ateam_header_navbar" style="font-family: 'Koulen', cursive; display: flex; justify-content: space-evenly;">
				<div class="ateam_header_nav_btn"></div>
				<div class="ateam_header_nav_btn"><a href="../jsphome/home.jsp">HOME</a></div>
				<div class="ateam_header_nav_btn">About</div>
				<div class="ateam_header_nav_btn"><a href="javascript:boardListFrm('Hip-Hop')">Hip-Hop</a></div>
				<div class="ateam_header_nav_btn"><a href="javascript:boardListFrm('RnB')">RnB</a></div>
				<div class="ateam_header_nav_btn"><a href="javascript:boardListFrm('Pop')">Pop</a></div>
				<div class="ateam_header_nav_btn"><a href="javascript:boardListFrm('EDM')">EDM</a></div>
			<input type="hidden" name="bValue" value="">
			
			<div class="ateam_header_nav_btn"><a href="../jspmember/myPageIndex.jsp">My Page</a></div>
			<!-- 수정사항 : 로그인되어 있지 않으면, jsplogin/login.jsp로. 로그인되어 있으면, myPageIndex.jsp로.  -->
			<div class="ateam_header_nav_btn"></div>
		</div>
		</form>
	</header>


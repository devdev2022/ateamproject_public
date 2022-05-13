<%@page contentType="text/html; charset=UTF-8"%>
<%
	String id = (String)session.getAttribute("idKey");
	

%>





	<div class="sidebar w-col w-col-2">
		<!-- 로그인 정보 받아오기. -->
		<div class="side_profile_img"
			style="background-image: url(../icon/profile_def.png); background-size: cover; background-repeat: no-repeat"></div>
			
		<div class="side_profile_text" style="text-align: center; color: white;">
			<%if(id==null){//로그인 안 된 상태에서 직접적으로 치고 들어온때%> 
				로그인하세요.
			<%}else{%>
				<%=id%>님,환영합니다.	
			<%}%>
		</div>
		<div class="side_profile_iconbar w-row">
			<div class="side_profile_editicon w-col w-col-4"
				style="background-image: url(../icon/edit_gray.png); background-repeat: no-repeat"></div>
			<div class="side_profile_likeicon w-col w-col-4"
				style="background-image: url(../icon/like_gray.png); background-repeat: no-repeat"></div>
			<div class="side_profile_saveicon w-col w-col-4" 
				style="background-image: url(../icon/save_gray.png); background-repeat: no-repeat"></div>
		</div>
		<div class="side_chart" style="background-color: ivory"></div>
	</div>



<%@page contentType="text/html; charset=UTF-8"%>
<%
	String id = (String)session.getAttribute("idKey");
%>

	<div class="sidebar w-col w-col-2">
		
		<%if(id==null){%> 
			<div class="side_profile_img"
				style="background-image: url(../icon/profile_def.png); background-size: cover; background-repeat: no-repeat">
			</div>
		<%}else{%>
			<div class="side_profile_img"
				style="background-image: url(../icon/profile_def.png); background-size: cover; background-repeat: no-repeat">
			</div>	
		<%}%>
		
			
		<div class="side_profile_text" style="text-align: center; color: white;">
			<%if(id==null){%> 
				로그인하세요.
			<%}else{%>
				<%=id%>님,환영합니다.	
			<%}%>
		</div>
		<div class="side_profile_iconbar w-row">
			<a href="#">
			<div class="side_profile_editicon w-col w-col-4"
				style="background-image: url(../icon/edit_gray.png); background-repeat: no-repeat"></div>
				</a>
			<a href="../jspmember/memberLikes.jsp">
			<div class="side_profile_likeicon w-col w-col-4"
				style="background-image: url(../icon/like_gray.png); background-repeat: no-repeat"></div>
			</a>
			<a href="../jspmember/memberSaved.jsp">
			<div class="side_profile_saveicon w-col w-col-4" 
				style="background-image: url(../icon/save_gray.png); background-repeat: no-repeat"></div>
			</a>
		</div>
		<div class="side_chart" style="background-color: ivory"></div>
	</div>



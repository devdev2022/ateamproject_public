<%@page contentType="text/html; charset=UTF-8"%>
<%
	String leftId = (String)session.getAttribute("idKey");
%>

	<div class="sidebar w-col w-col-2">
		
		<%if(leftId==null){%> 
			<div class="side_profile_img"
				style="background-image: url(../icon/profile_def.png); background-size: cover; background-repeat: no-repeat">
			</div>
		<%}else{%>
			<div class="side_profile_img"
				style="background-image: url(../icon/profile_def.png); background-size: cover; background-repeat: no-repeat">
			</div>	
		<%}%>
		
			
		<div class="side_profile_text" style="text-align: center; color: white;">
			<%if(leftId==null){%> 
				로그인하세요.
			<%}else{%>
				<%=leftId%>님,환영합니다.
				<%if(true){%>
					<br><u><a href="../jspadmin/memberList.jsp">회원 관리 페이지로 이동</a></u> 
				<%}%>
			<%}%>
		</div>
		
		<div class="side_profile_iconbar">
			<a href="#">
				<div class="side_profile_editicon w-col w-col-4">
					<img src= "../icon/edit_gray.png">
				</div>
			</a>
			<a href="../jspmember/memberLikes.jsp">
				<div class="side_profile_likeicon w-col w-col-4">
						<img src= "../icon/like_gray.png">
				</div>
			</a>
			<a href="../jspmember/memberSaved.jsp">
				<div class="side_profile_saveicon w-col w-col-4">
					<img src= "../icon/save_gray.png">
				</div>
			</a>
		</div>
		<div class="side_chart" style="background-color: ivory"></div>
	</div>



<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr1"/>
<jsp:useBean id="bean" class="member.MemberBean1"/>
<%
	String leftId = (String)session.getAttribute("idKey");
	bean = mgr.getMember(leftId);	
%>

	<div class="sidebar w-col w-col-2">
		<%boolean imgFound = (bean.getImgname()!=null);
		if(imgFound){
			String url = "../photo/" + bean.getImgname();%> 
			<a href="#" class="side_profile_img" style="background-image: url('<%=url%>'); border-color: white; border-width: thick; border-radius: 70%; background-size: cover; background-repeat: no-repeat"></a>
		<%}else{%>
			<div class="side_profile_img" style="background-image: url('../icon/profile_blank.png'); background-size: cover; background-repeat: no-repeat">
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
			<a href="../jspmember/joinupdate.jsp">
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



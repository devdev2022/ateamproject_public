<%@page import="org.apache.tomcat.util.bcel.Const"%>
<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="leftMgr" class="member.MemberMgr1"/>
<jsp:useBean id="leftBean" class="member.MemberBean1"/>
<%
	String leftId = (String)session.getAttribute("idKey");
	leftBean = leftMgr.getMember(leftId);	
	String leftGrade = ""; 
	if(leftId!=null)
		leftGrade = (leftBean.getGrade()).trim(); 
%>

	<div class="sidebar w-col w-col-2">
		<%boolean imgFound = (leftBean.getImgname()!=null);
		if(imgFound){
			String url = "../photo/" + leftBean.getImgname();%> 
			<a href="#" class="side_profile_img" style="background-image: url('<%=url%>'); border-color: white; border-width: thick; border-radius: 70%; background-size: cover; background-repeat: no-repeat"></a>
		<%}else{%>
			<div class="side_profile_img" style="background-image: url('../icon/profile_blank.png'); background-size: cover; background-repeat: no-repeat">
			</div>
		<%}%>
		
			
		<div class="side_profile_text" style="text-align: center; color: white; margin-bottom: 0.5vw; white-space: nowrap;">
			
			<%if(leftId==null){%> 
				로그인하세요.
			<%}else{%>
				<%=leftId%>님,환영합니다.
				<%if(leftGrade.equals("1")){%>
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
			<a href="../chart/chart.jsp"><font size="25px" color="green">인기차트 100</font></a>
	</div>



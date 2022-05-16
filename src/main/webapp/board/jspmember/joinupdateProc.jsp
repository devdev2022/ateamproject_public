<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr1"/>
<%

	// <jsp:setProperty property="id" name="bean"/>
	
	// 나머지 모두 id, name, 11개가 모두 밑 하나로 됨.
	//<jsp:setProperty property="*" name="bean"/>
	boolean result=mgr.updateMember(request);
	String msg="회원 수정이 실패 했습니다.!!";
	String url="joinupdate.jsp";
	
	if(result){
		msg="회원 수정이 성공됐습니다.";
		url="login.jsp";
		response.sendRedirect(url);
	}
%>

<script>
 alert("<%=msg%>");
 location.href="<%=url%>";
</script>















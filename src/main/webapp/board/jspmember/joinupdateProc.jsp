<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr1"/>
<!-- 빈즈의 디폴트 생성자를 호출 -->
<jsp:useBean id="bean" class="member.MemberBean1"/>

<jsp:setProperty property="*" name="bean"/>
<%

	// <jsp:setProperty property="id" name="bean"/>
	
	// 나머지 모두 id, name, 11개가 모두 밑 하나로 됨.
	//<jsp:setProperty property="*" name="bean"/>
	boolean result=mgr.updateMember(request);
	String msg="회원 수정이 실패 했습니다.!!";
	String url="join.jsp";
	
	if(result){
		msg="회원 수정이 성공됐습니다.";
		url="login.jsp";
		// 회원가입과 동시에 로그인이 되는 것.밑
		
		session.setAttribute("idKey", bean.getId());
	}
%>

<script>
 alert("<%=msg%>");
 location.href="<%=url%>";
</script>















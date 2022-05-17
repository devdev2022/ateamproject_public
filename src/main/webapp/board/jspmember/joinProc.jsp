<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr1"/>
<!-- 빈즈의 디폴트 생성자를 호출 -->
<jsp:useBean id="bean" class="member.MemberBean1"/>
<jsp:setProperty property="*" name="bean"/>
<%

	// <jsp:setProperty property="id" name="bean"/>
	
	// 나머지 모두 id, name, 11개가 모두 밑 하나로 됨.
	//<jsp:setProperty property="*" name="bean"/>
	boolean result=mgr.insertMember(request);
	String msg="회원가입이 정상처리되지 못했습니다. 관리자에게 문의해주세요.";
	String url="join.jsp";
	if(result){
		msg="가입을 환영합니다.";
		url="login.jsp";
		// 회원가입과 동시에 로그인이 되는 것.밑
		session.setAttribute("idKey", bean.getId());
	}
%>

<script>
 alert("<%=msg%>");
 location.href="<%=url%>";
</script>















<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr1"/>
<%
		String emailaddr=request.getParameter("emailaddr");
		boolean result=mgr.findId(emailaddr);	
		//out.println(result);
		
		String msg="이메일주소를 잘못 입력했습니다";
		if(result){
			mgr.sendNum(emailaddr);
			msg="이메일 주소가 맞습니다. 인증번호가 전송되었습니다.";
		}		
		

		
		
%>
<script type="text/javascript">
 	alert("<%=msg%>");
</script>





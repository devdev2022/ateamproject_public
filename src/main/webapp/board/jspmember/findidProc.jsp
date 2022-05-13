<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr1"/>
<%
		String emailaddr=request.getParameter("emailaddr");
		//out.println(num);
		boolean result=mgr.findId(emailaddr);	 //mgr.findId
		//out.println(result);
		
		String msg="이메일주소를 잘못 입력했습니다";
		if(result){
	//mgr.sendNum(emailaddr);의 리턴은 int형이므로, 여기서도 int형으로 대입 받아야
		
			int num = mgr.sendNum(emailaddr);  //mgr.sendNum
			session.setAttribute("conNum", Integer.toString(num));
			session.setAttribute("emailaddr", emailaddr);
			msg="이메일 주소가 맞습니다. 인증번호가 전송되었습니다.";
		}		
%>
<script type="text/javascript">
 	alert("<%=msg%>");
 	location.href = "search.jsp";
</script>





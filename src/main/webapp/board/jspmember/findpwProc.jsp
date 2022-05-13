<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr1"/>
<%
		String emailaddr2=request.getParameter("emailaddr2");
		String id=request.getParameter("findid");
		//out.println(num);
		
		boolean result1=mgr.findId2(id, emailaddr2);
		boolean result=mgr.findId(emailaddr2);	
		//out.println(result);
		
		String msg="아이디가 틀리거나 이메일주소를 잘못 입력했습니다";
		
	    if(result1){
		  if(result){
			int num = mgr.sendNum(emailaddr2);
			session.setAttribute("conNum2", Integer.toString(num));
			session.setAttribute("emailaddr2", emailaddr2);
			msg="이메일 주소가 맞습니다. 인증번호가 전송되었습니다.";
		}//if(result)	
		}
%>
<script type="text/javascript">
 	alert("<%=msg%>");
 	location.href = "../jspsearch/search.jsp";
</script>





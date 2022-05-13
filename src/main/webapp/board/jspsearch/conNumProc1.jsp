<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr1"/>
<%
		boolean flag=false;
		String numfield2 = request.getParameter("numfield2");
		String emailaddr2 = (String)session.getAttribute("emailaddr2");
		String num = (String)session.getAttribute("conNum2");
		String pwd = "";
		String msg ="인증번호를 잘못 입력했습니다";
		
		if(numfield2.equals(num)){ 
			msg = " : 회원님의 패스워드입니다.";
			pwd=mgr.showPwd(emailaddr2);
		}
%>

<script type="text/javascript">
 	//alert("<%=pwd + " : "+ msg%>");
 	alert("<%=pwd%> <%=msg%>");
 	location.href = "../jspmember/login.jsp";
</script>


<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr1"/>
<%
		boolean flag=false;
		String numfield = request.getParameter("numfield");
		
		String emailaddr = (String)session.getAttribute("emailaddr");
		String num = (String)session.getAttribute("conNum");
		String id = "";
		String msg ="인증번호를 잘못 입력했습니다";
		if(numfield.equals(num)){ 
			msg = ": 회원님의 아이디입니다.";
			id=mgr.showId(emailaddr);
		}
		//else
			//response.sendRedirect("search.jsp");
%>

<script type="text/javascript">
 	//alert("<%=id + " : "+ msg%>");
 	alert("<%=id%> <%=msg%>");
 	location.href = "../jspmember/login.jsp";
</script>


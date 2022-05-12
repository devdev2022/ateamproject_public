<%@page contentType="text/html; charset=EUC-KR"%>

<%
	boolean flag=false;
		String num1=(String)session.getAttribute("conNum");
		out.println(num1);
		
		if(num1!=null) 
			flag=true;
		else
			response.sendRedirect("login.jsp");
		
		String msg1="인증번호를 잘못 입력했습니다";
		String num=request.getParameter("numfield");
		//out.println(num);
		if(num !=null){
			session.setAttribute("conNum", num);
		}
		else
			response.sendRedirect("login.jsp"	);
%>

<script type="text/javascript">
 	alert("인증번호가 맞습니다!!");
</script>


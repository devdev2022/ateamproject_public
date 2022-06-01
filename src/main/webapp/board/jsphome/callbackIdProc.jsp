<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>

<%
String nvId=request.getParameter("nvId");
boolean result=mgr.checkId(nvId);

if(result){
	session.setAttribute("idKey", nvId);
	response.sendRedirect("../jsphome/home.jsp");
}
%>
<script>
	window.close();
</script>

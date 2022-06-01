<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>

<%
String nvId=request.getParameter("nvId");
boolean result=mgr.checkId(nvId);
%>
<script>
	opener.result = <%=result%>;
	window.close();
</script>

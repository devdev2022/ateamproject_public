<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr1"/>
<!-- 빈즈의 디폴트 생성자를 호출 -->
<jsp:useBean id="bean" class="member.MemberBean1"/>
<jsp:setProperty property="*" name="bean"/>
<%
	String delId = request.getParameter("id");
	boolean result=mgr.deleteMember(delId);
	String msg="삭제처리 과정에서 문제가 발생했습니다. 담당자에게 문의하시기 바랍니다.";
	String url="memberList.jsp";
	if(result){
		msg="삭제되었습니다.";
	}
%>

<script>
 alert("<%=msg%>");
 location.href="<%=url%>";
</script>




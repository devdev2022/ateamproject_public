<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr1"/>
<!-- 빈즈의 디폴트 생성자를 호출 -->
<jsp:useBean id="bean" class="member.MemberBean1"/>
<jsp:setProperty property="*" name="bean"/>
<%
	String delId = request.getParameter("delId");
	boolean result=mgr.deleteMember(delId);
	String msg="삭제처리 과정에서 문제가 발생했습니다. 담당자에게 문의하세요.";
	String url="memberList.jsp";
	if(result){
		msg="삭제되었습니다.";
	}
%>

<script type="text/javascript">
 alert("<%=msg%>");
 location.href="<%=url%>";
</script>




<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr1"/>
<!-- 빈즈의 디폴트 생성자를 호출 -->
<jsp:useBean id="bean" class="member.MemberBean1"/>
<jsp:setProperty property="*" name="bean"/>
<%
	String idList = request.getParameter("idList");
	String delId = request.getParameter("delId");
	String msg="삭제처리 과정에서 문제가 발생했습니다. 담당자에게 문의하세요.";
	String url="memberList.jsp";
	
	if(idList!=null){
		String[] delArr = idList.split(",");
		msg = "";
		for(int i=0; i<delArr.length; i++){
			boolean result=mgr.deleteMember(delArr[i]);
			if(result){
				msg="탈퇴처리가 완료되었습니다.";
			}		
		}

	}else{
		boolean result=mgr.deleteMember(delId);
		if(result){
			msg="탈퇴처리가 완료되었습니다.";
		}		
	}
	
%>

<script type="text/javascript">
 alert("<%=msg%>");
 location.href="<%=url%>";
</script>




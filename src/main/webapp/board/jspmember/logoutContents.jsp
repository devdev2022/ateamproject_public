<%@page contentType="text/html; charset=UTF-8"%>
<%
		
		session.invalidate();
// 밑은 '알림창'없이 그냥 로그인 확인 이도. 그 밑은 js로 알림창 띄우는 것.
		//response.sendRedirect("login.jsp");
%>

<script>
 alert("로그아웃이 되었습니다.");
 location.href="login.jsp";
</script>


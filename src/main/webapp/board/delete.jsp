<!-- delete.jsp -->
<%@page import="board.BoardBean"%>
<%@page import="board.UtilMgr"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="board.BoardMgr"/>
<%
		String nowPage = request.getParameter("nowPage");
		int num = UtilMgr.parseInt(request, "num");
		//비번 입력양식과 비번 일치후 삭제 기능 
		if(request.getParameter("pass")!=null){
			//세션에 저장한 게시물을 가져옴
			BoardBean bean = (BoardBean)session.getAttribute("bean");
			//delete.jsp에서 사용자가 입력한 비번
			String inPass = request.getParameter("pass");
			//db에 저장된 비번
			String dbPass = bean.getPass();
			if(dbPass.equals(inPass)){
				//삭제
				mgr.deleteBoard(num, bean.getFilename());
				String url = "list.jsp?nowPage?"+nowPage;
				response.sendRedirect(url);
			}else{//비번일치 않는 경고%>
				<script type="text/javascript">
					alert("입력하신 비밀번호가 아닙니다.");
					history.back();
				</script>
		<%}
		}else{//비번을 입력받기 위함 form
%>
<!DOCTYPE html>
<html>
<head>
<title>JSP Board</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function check() {
		if (document.delFrm.pass.value == "") {
			alert("패스워드를 입력하세요.");
			document.delFrm.pass.focus();
			return;
		}
		document.delFrm.submit();
	}
</script>
</head>
<body bgcolor="#FFFFCC">
<div align="center"><br/><br/>
	<table width="50%" cellspacing="0" cellpadding="3">
		<tr>
			<td bgcolor=#dddddd height="21" align="center">
				사용자의 비밀번호를 입력해주세요.
			</td>
		</tr>
	</table>
	<form name="delFrm" method="post">
		<table width="70%" cellspacing="0" cellpadding="2">
			<tr>
				<td align="center">
					<table width=80%>
						<tr>
							<td align="center">
								<input type="password" name="pass" size="17" maxlength="15">
							</td>
						</tr>
						<tr>
							<td><hr size="1" color="#eeeeee"/></td>
						</tr>
						<tr>
							<td align="center">
								<input type="button" value="삭제완료" onClick="check()"> 
								<input type="reset" value="다시쓰기">
								<input type="button" value="뒤로" onClick="history.go(-1)">
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<input type="hidden" name="nowPage" value="<%=nowPage%>"> 
		<input type="hidden" name="num" value="<%=num%>">
	</form>
</div>
</body>
</html>
<%}%>		








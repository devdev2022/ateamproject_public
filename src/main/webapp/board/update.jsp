<!-- update.jsp -->
<%@page import="board.UtilMgr"%>
<%@page import="board.BoardBean"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="board.BoardMgr"/>
<%
		//update.jsp?nowPage=1&numPerPage=10&num=2
		String nowPage = request.getParameter("nowPage");
		String numPerPage = request.getParameter("numPerPage");
		int num = UtilMgr.parseInt(request, "num");
		//���ǿ� ����� bean �̿����� �ʰ� getBoard �޼ҵ� ���
		BoardBean bean = mgr.getBoard(num);
		String subject = bean.getSubject();
		String name = bean.getName();
		String content = bean.getContent();
		String filename = bean.getFilename();
%>		
<!DOCTYPE html>
<html>
<head>
<title>JSP Board</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
	function check() {
	   if (document.updateFrm.pass.value == "") {
		 alert("������ ���� ��й�ȣ�� �Է��ϼ���.");
		 document.updateFrm.pass.focus();
		 return false;
		 }
	   document.updateFrm.submit();
	}
</script>
</head>
<body bgcolor="#FFFFCC">
<div align="center"><br/><br/>
<table width="600" cellpadding="3">
  <tr>
   <td bgcolor="#FF9018"  height="21" align="center">�����ϱ�</td>
  </tr>
</table>
<form name="updateFrm" method="post" action="boardUpdate" enctype="multipart/form-data">
<table width="600" cellpadding="7">
 <tr>
  <td>
   <table>
    <tr>
     <td width="20%">�� ��</td>
     <td width="80%">
	  <input name="name" value="<%=name%>" size="30" maxlength="20">
	 </td>
	</tr>
	<tr>
     <td>�� ��</td>
     <td>
	  <input name="subject" size="50" value="<%=subject%>" maxlength="50">
	 </td>
    <tr>
     <td>�� ��</td>
     <td>
	  <textarea name="content" rows="10" cols="50"><%=content%></textarea>
	 </td>
    </tr>
    <tr>
    <td>÷������</td>
     <td>
     	<%=filename!=null?filename:"÷�ε� ������ �����ϴ�."%>
     	<input type="file" name="filename" size="50" maxlength="50">
     </td>
    </tr>
	<tr>
     <td>��� ��ȣ</td> 
     <td><input type="password" name="pass" size="15" maxlength="15">
      ���� �ÿ��� ��й�ȣ�� �ʿ��մϴ�.</td>
    </tr>
	<tr>
     <td colspan="2" height="5"><hr/></td>
    </tr>
	<tr>
     <td colspan="2">
	  <input type="button" value="�����Ϸ�" onClick="check()">
      <input type="reset" value="�ٽü���"> 
      <input type="button" value="�ڷ�" onClick="history.go(-1)">
	 </td>
    </tr> 
   </table>
  </td>
 </tr>
</table>
 <input type="hidden" name="nowPage" value="<%=nowPage%>">
 <input type="hidden" name="num" value="<%=num%>">
 <input type="hidden" name="numPerPage" value="<%=numPerPage%>">
</form> 
</div>
</body>
</html>









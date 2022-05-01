<!-- read.jsp -->
<%@page import="java.util.Vector"%>
<%@page import="board.BCommentBean"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="board.BoardBean"%>
<%@page import="board.UtilMgr"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="board.BoardMgr"/>
<jsp:useBean id="cmgr" class="board.BCommentMgr"/>
<%
	//read.jsp?nowPage=1&numPerPage=10&keyField=&keyWord=&num=3
	//���������� ������ list.jsp�� �ѱ� �����̹Ƿ� ���� ������ ��ȯ �ʿ����.
	String nowPage = request.getParameter("nowPage");
	String numPerPage = request.getParameter("numPerPage");
	String keyField = request.getParameter("keyField");
	String keyWord = request.getParameter("keyWord");
	int num = UtilMgr.parseInt(request, "num");
	
	//��� ���� �� ������ �ʿ��� '���а�'.
	//flag!=null�� �� ���� �� ������ ����.
	String flag = request.getParameter("flag");
	if(flag!=null){
		if(flag.equals("insert")){
			BCommentBean cbean = new BCommentBean();
			cbean.setNum(num);
			cbean.setName(request.getParameter("cName"));
			cbean.setComment(request.getParameter("comment"));
			cmgr.insertComment(cbean);
		}else if(flag.equals("delete")){
			//��� ����
			cmgr.deleteBComment(UtilMgr.parseInt(request,"cnum"));
		}
	}else{
		//flag�� null�̸� list.jsp �Խù��� ����
		//��ȸ�� ����
		mgr.upCount(num);
	}
	
	
	//�Խù� �ϱ�
	BoardBean bean = mgr.getBoard(num);
	String name = bean.getName();
	String subject = bean.getSubject();
	String content = bean.getContent();
	String regdate =bean.getRegdate();
	String filename = bean.getFilename();
	int filesize = bean.getFilesize();
	String ip = bean.getIp();
	int count = bean.getCount();
	//�о�� �Խù��� ������ ������ ���� ��������
	session.setAttribute("bean", bean);
%>		
<!DOCTYPE html>
<html>
<head>
<title>JSP Board</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function down(filename) {
		document.downFrm.filename.value=filename;
		document.downFrm.submit();
	}
	
	function list() {
		document.listFrm.action = "list.jsp";
		document.listFrm.submit();
	}
	
	function cInsert() {
		if(document.cFrm.comment.value==""){
			alert("����� �Է��ϼ���.");
			document.cFrm.comment.focus();
			return;
		}
		document.cFrm.submit();
	}
	
	function cDel(cnum) {
		document.cFrm.cnum.value=cnum;
		document.cFrm.flag.value="delete";
		document.cFrm.submit();
	}
</script>
</head>
<body bgcolor="#FFFFCC">
<br/><br/>
<table align="center" width="600" cellspacing="3">
 <tr>
  <td bgcolor="#9CA2EE" height="25" align="center">���б�</td>
 </tr>
 <tr>
  <td colspan="2">
   <table cellpadding="3" cellspacing="0" width="100%"> 
    <tr> 
  <td align="center" bgcolor="#DDDDDD" width="10%"> �� �� </td>
  <td bgcolor="#FFFFE8"><%=name%></td>
  <td align="center" bgcolor="#DDDDDD" width="10%"> ��ϳ�¥ </td>
  <td bgcolor="#FFFFE8"><%=regdate%></td>
 </tr>
 <tr> 
    <td align="center" bgcolor="#DDDDDD"> �� ��</td>
    <td bgcolor="#FFFFE8" colspan="3"><%=subject%></td>
   </tr>
   <tr> 
     <td align="center" bgcolor="#DDDDDD">÷������</td>
     <td bgcolor="#FFFFE8" colspan="3">
	    <%if(filename!=null&&!filename.equals("")){%>
	    	<a href="javascript:down('<%=filename%>')"><%=filename%></a>                       
	    	<font color="blue">(<%=UtilMgr.intFormat(filesize)%>bytes)</font>              
	    <%}else{out.println("÷�ε� ������ �����ϴ�.");}%>	
     </td>
   </tr>
   <tr> 
    <td colspan="4"><br/><pre><%=content %></pre><br/></td>
   </tr>
   <tr>
    <td colspan="4" align="right">
     <%=ip%>�� ���� ���� ����̽��ϴ�. /  ��ȸ��   <%=count %>
    </td>
   </tr>
   </table>
   </td>
   <tr>
   <td colspan="2" align="center">
   
   <!-- Comment Form Start -->
   	<form method="post" name="cFrm">
		<table>
			<tr align="center">
				<td width="50">�� ��</td>
				<td align="left">
					<input name="cName" size="10" value="aaa">
				</td>
			</tr>
			<tr align="center">
				<td>�� ��</td>
				<td>
				<input name="comment" size="50"> 
				<input type="button" value="���" onclick="cInsert()"></td>
			</tr>
		</table>
	 <input type="hidden" name="flag" value="insert">	
	 <input type="hidden" name="num" value="<%=num%>">
	 <input type="hidden" name="cnum"> 
	 <!-- (����)�̰� �ڵ������Ǵ� ���̴ϱ� ��� �� �� ������... ���߿� '����'�� �� �ʿ��ؿ�. -->
    <input type="hidden" name="nowPage" value="<%=nowPage%>">
    <input type="hidden" name="numPerPage" value="<%=numPerPage%>">
   <%if(!(keyWord==null||keyWord.equals(""))){ %>
    <input type="hidden" name="keyField" value="<%=keyField%>">
    <input type="hidden" name="keyWord" value="<%=keyWord%>">
	<%}%>
	</form>
   <!-- Comment Form End -->
   <hr>
   <!-- Comment List Start -->
   <%
   	Vector<BCommentBean> cvlist = cmgr.listComment(num);
   	if(!cvlist.isEmpty()){
   %>
   <table>
   	<%
   		for(int i=0; i<cvlist.size(); i++){
   			BCommentBean cbean = cvlist.get(i);
   			int cnum = cbean.getCnum();
   			String cname = cbean.getName();
   			String comment = cbean.getComment();
   			String cregdate = cbean.getRegdate();
	%>
	<tr>
		<td colspan="3" width="600"><b><%=cname%></b></td>
	</tr>
	<tr>
		<td>���:<%=comment%></td>
		<td align="right"><%=cregdate%></td>
		<td align="center" valign="middle">
		<input type="button" value="����" onclick="cDel('<%=cnum%>')">
		</td>
	</tr>
	<tr>
		<td colspan="3"><br></td>
	</tr>
	<%}%>
   </table>
   
   <hr>
   <%
   	}//cvlist-if��
   %>
   <!-- Comment List End -->
   <hr>
   
   [ <a href="javascript:list()">����Ʈ</a> |
   <a href="update.jsp?nowPage=<%=nowPage%>
	&numPerPage=<%=numPerPage%>&num=<%=num%>">�� ��</a> |
   <a href="reply.jsp?nowPage=<%=nowPage%>
	&numPerPage=<%=numPerPage%>">�� ��</a> |
   <a href="delete.jsp?nowPage=<%=nowPage%>
	&num=<%=num%>">�� ��</a> ]
  </td>
 </tr>
</table>	

<form method="post" name="downFrm" action="download.jsp">
	<input type="hidden" name="filename">
</form>

<form name="listFrm">
	<input type="hidden" name="nowPage" value="<%=nowPage%>">
	<input type="hidden" name="numPerPage" value="<%=numPerPage%>">
	<%if(!(keyWord==null||keyWord.equals(""))){ %>
		<input type="hidden" name="keyField" value="<%=keyField%>">
		<input type="hidden" name="keyWord" value="<%=keyWord%>">
	<%}%>
</form>
</body>
</html>























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
	//정수이지만 계산없이 list.jsp로 넘길 목적이므로 굳이 정수로 변환 필요없음.
	String nowPage = request.getParameter("nowPage");
	String numPerPage = request.getParameter("numPerPage");
	String keyField = request.getParameter("keyField");
	String keyWord = request.getParameter("keyWord");
	int num = UtilMgr.parseInt(request, "num");
	
	//댓글 저장 및 삭제에 필요한 '구분값'.
	//flag!=null일 때 저장 및 삭제를 실행.
	String flag = request.getParameter("flag");
	if(flag!=null){
		if(flag.equals("insert")){
			BCommentBean cbean = new BCommentBean();
			cbean.setNum(num);
			cbean.setName(request.getParameter("cName"));
			cbean.setComment(request.getParameter("comment"));
			cmgr.insertComment(cbean);
		}else if(flag.equals("delete")){
			//댓글 삭제
			cmgr.deleteBComment(UtilMgr.parseInt(request,"cnum"));
		}
	}else{
		//flag가 null이면 list.jsp 게시물을 리딩
		//조회수 증가
		mgr.upCount(num);
	}
	
	
	//게시물 일기
	BoardBean bean = mgr.getBoard(num);
	String name = bean.getName();
	String subject = bean.getSubject();
	String content = bean.getContent();
	String regdate =bean.getRegdate();
	String filename = bean.getFilename();
	int filesize = bean.getFilesize();
	String ip = bean.getIp();
	int count = bean.getCount();
	//읽어온 게시물을 수정과 삭제를 위해 세션저장
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
			alert("댓글을 입력하세요.");
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
  <td bgcolor="#9CA2EE" height="25" align="center">글읽기</td>
 </tr>
 <tr>
  <td colspan="2">
   <table cellpadding="3" cellspacing="0" width="100%"> 
    <tr> 
  <td align="center" bgcolor="#DDDDDD" width="10%"> 이 름 </td>
  <td bgcolor="#FFFFE8"><%=name%></td>
  <td align="center" bgcolor="#DDDDDD" width="10%"> 등록날짜 </td>
  <td bgcolor="#FFFFE8"><%=regdate%></td>
 </tr>
 <tr> 
    <td align="center" bgcolor="#DDDDDD"> 제 목</td>
    <td bgcolor="#FFFFE8" colspan="3"><%=subject%></td>
   </tr>
   <tr> 
     <td align="center" bgcolor="#DDDDDD">첨부파일</td>
     <td bgcolor="#FFFFE8" colspan="3">
	    <%if(filename!=null&&!filename.equals("")){%>
	    	<a href="javascript:down('<%=filename%>')"><%=filename%></a>                       
	    	<font color="blue">(<%=UtilMgr.intFormat(filesize)%>bytes)</font>              
	    <%}else{out.println("첨부된 파일이 없습니다.");}%>	
     </td>
   </tr>
   <tr> 
    <td colspan="4"><br/><pre><%=content %></pre><br/></td>
   </tr>
   <tr>
    <td colspan="4" align="right">
     <%=ip%>로 부터 글을 남기셨습니다. /  조회수   <%=count %>
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
				<td width="50">이 름</td>
				<td align="left">
					<input name="cName" size="10" value="aaa">
				</td>
			</tr>
			<tr align="center">
				<td>내 용</td>
				<td>
				<input name="comment" size="50"> 
				<input type="button" value="등록" onclick="cInsert()"></td>
			</tr>
		</table>
	 <input type="hidden" name="flag" value="insert">	
	 <input type="hidden" name="num" value="<%=num%>">
	 <input type="hidden" name="cnum"> 
	 <!-- (정정)이건 자동증가되는 값이니까 없어도 될 거 같지만... 나중에 '삭제'할 때 필요해요. -->
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
		<td>댓글:<%=comment%></td>
		<td align="right"><%=cregdate%></td>
		<td align="center" valign="middle">
		<input type="button" value="삭제" onclick="cDel('<%=cnum%>')">
		</td>
	</tr>
	<tr>
		<td colspan="3"><br></td>
	</tr>
	<%}%>
   </table>
   
   <hr>
   <%
   	}//cvlist-if문
   %>
   <!-- Comment List End -->
   <hr>
   
   [ <a href="javascript:list()">리스트</a> |
   <a href="update.jsp?nowPage=<%=nowPage%>
	&numPerPage=<%=numPerPage%>&num=<%=num%>">수 정</a> |
   <a href="reply.jsp?nowPage=<%=nowPage%>
	&numPerPage=<%=numPerPage%>">답 변</a> |
   <a href="delete.jsp?nowPage=<%=nowPage%>
	&num=<%=num%>">삭 제</a> ]
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
























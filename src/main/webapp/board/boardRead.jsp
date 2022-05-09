<%@page import="board.CommentBean"%>
<%@page import="java.util.Vector"%>
<%@page import="board.UpFileBean"%>
<%@page import="board.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String loginId = "aaa";
	
%>
<jsp:useBean id="bMgr" class="board.BoardMgr"/>
<jsp:useBean id="cMgr" class="board.CommentMgr"/>
<jsp:useBean id="lMgr" class="board.LikesMgr"/>
<jsp:useBean id="cLMgr" class="board.CmtLikesMgr"/>



<!DOCTYPE html>
<head>

<!-- 부트스트랩 요소 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
	
<script type="text/javascript">
	function down(filename) {
		document.downFrm.filename.value=filename;
		document.downFrm.submit();
	}
	
	function insertLike(insertLikes) {
		document.likeFrm.action = insertLikes;
		document.likeFrm.submit();
	}
	
	function deleteLike(deleteLikes) {
		document.likeFrm.action = deleteLikes;
		document.likeFrm.submit();
	}
</script>

<!-- webflow 요소 -->
<style>

.layout-top {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  margin-top: 5vw;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
  -webkit-box-pack: start;
  -webkit-justify-content: flex-start;
  -ms-flex-pack: start;
  justify-content: flex-start;
  -webkit-box-align: start;
  -webkit-align-items: flex-start;
  -ms-flex-align: start;
  align-items: flex-start;
  grid-auto-columns: 1fr;
  grid-column-gap: 16px;
  grid-row-gap: 16px;
  -ms-grid-columns: 1fr 1fr;
  grid-template-columns: 1fr 1fr;
  -ms-grid-rows: auto auto;
  grid-template-rows: auto auto;
}

.layout-lower-bottom {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: end;
  -webkit-justify-content: flex-end;
  -ms-flex-pack: end;
  justify-content: flex-end;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  grid-column-gap: 1vw;
}

.post-main {
  min-height: 4vw;
  margin-top: 1vw;
  margin-bottom: 2vw;
  padding-top: 0%;
}

.columns {
  margin-top: 5vw;
  margin-right: 5vw;
  margin-left: 5vw;
}

.column {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
}

.column-2 {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: end;
  -webkit-justify-content: flex-end;
  -ms-flex-pack: end;
  justify-content: flex-end;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
}

.columns-2 {
  width: 100%;
  margin-right: 0px;
  margin-left: 0px;
}

.post-subject {
  -webkit-box-flex: 1;
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
}

.post-type {
  background-color: #361c1c;
}

.div-block {
  background-color: #1f1010;
}

.div-block-2 {
  background-color: #251414;
}

.layout-upper-bottom {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  grid-column-gap: 0vw;
}

.list {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
}

.list-2 {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  grid-column-gap: 3vw;
}



.post-comment-container {
	padding-right: 2vw;
	padding-left: 2vw;
	list-style-type: none;
}

.list-item {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	margin-bottom: 1vw;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
}

.list-3 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
}

.list-4 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	padding-left: 0px;
	list-style-type: none;
}

.list-item-2 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
}

.comment-user-info {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	margin-bottom: 0px;
}

.list-item-3 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
}

.list-4 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	padding-left: 0px;
	list-style-type: none;
}

.comment-data {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	margin-bottom: 0px;
	padding-left: 0px;
	list-style-type: none;
	grid-column-gap: 1vw;
}

.post-comment {
	margin-top: 1vw;
}

.comment-section-header {
	margin-top: 5vw;
}

.comment-write-container {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
	margin-bottom: 5vw;
}


@media screen and (max-width: 991px) {
  .page {
    padding-right: 2vw;
    padding-left: 2vw;
  }
}
</style>

</head>
<body class="page">
	<%
		bMgr.upCount(num);
		BoardBean bBean = bMgr.getBoard(num);
		Vector<UpFileBean> fVlist = bMgr.getOneBoardFileAll(num);
		int fCount = fVlist.size();
	%>
	<div class="layout-top w-container">
		<div><b><%=bBean.getType_board() %></b> <font color="#E83038"><%=bBean.getType_cat() %></font></div>
		<div><h2><%=bBean.getSubject() %></h2></div>
		<div><img src="icon/profile_def.png" width="20vw"> <%=bBean.getId() %> | <%=bBean.getRegdate() %> | 조회수 <%=bBean.getCount() %> </div>
	</div>
	<!-- 첨부파일영역 -->
	<div class="w-col w-col-2 w-col-small-2 w-col-tiny-2">
		<div class="dropdown" align="right">
			<input class="btn btn-outline-secondary dropdown-toggle" type="text" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false" name="numPerPage" value="첨부파일 (<%=fCount %>)" size="10">
			<ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
			<%	
				for(int i=0; i<fCount; i++){ 
					
					UpFileBean fBean = fVlist.get(i);
					String fileN = fBean.getFilename();
			%>
					<%if(fileN != null && !fileN.equals("")){ %>
							<li><a class="dropdown-item active" href="javascript:down('<%=fBean.getFilename()%>')"><%= fBean.getFilename()%></a></li>
					<%}else{ %>
							<li>첨부파일이 없습니다.</li>
					<%} %>
			<%} %>
			</ul>
		</div>
	</div>
	<!-- 첨부파일영역 -->
	<div class="post-main w-container">
		<%=bBean.getContent() %>
		<%	
			for(int i=0; i<fCount; i++){ 
				UpFileBean fBean = fVlist.get(i);
		%>
				<img src="../uploadimg/<%=fBean.getFilename()%>">
		<%} %>
	</div>
	<div class="layout-upper-bottom w-container">
		<ul role="list" class="list-2 w-list-unstyled">
			<li>
				<form name="likeFrm" action="" method="post">
					<table>
						<tr>
						<%if(!lMgr.selectLikes(num, loginId)){	%>
							<td><a href="javascript:insertLike('insertLikes')"><img src="icon/like_before.jpg"></a></td>
						<%}else{ %>
							<td><a href="javascript:deleteLike('deleteLikes')"><img src="icon/like_after.jpg"></a></td>
						<%} %>
						</tr>
						<tr>
							<% int totalLike = lMgr.countLike(num);	%>
							<td align="center"><%=totalLike %></td>
						</tr>
					</table>
					<input type="hidden" name="loginId" value="<%=loginId%>">
					<input type="hidden" name="num" value=<%=num %>>	
				</form>
			</li>
			<li>
				<table>
					<tr>
						<td><img src="icon/save_post.png"></td>
					</tr>
					<tr>
						<td align="center">0</td>
					</tr>
				</table>	
			</li>
			<li>
				<table>
					<tr>
						<td><img src="icon/share_post.png"></td>
					</tr>
					<tr>
						<td></td>
					</tr>
				</table>	
			</li>
		</ul>
	</div>
	
	<div class="layout-lower-bottom w-container">
		<button id="replybtn" type="button" class="btn btn-dark">답글</button>
		<button id="listbtn" type="button" class="btn btn-dark" onclick="javascript:location.href='boardList.jsp'">목록</button>
	</div>
	<%
		Vector<CommentBean> cVlist = cMgr.commentList(num);
		int cCount = cVlist.size();
	%>
		<div class="comment-section-header w-container">
		<div>댓글 [<%=cCount %>]</div>
	</div>
	<%
		for(int i=0; i<cCount; i++){
			CommentBean cBean = cVlist.get(i);
	%>
	<script type="text/javascript">
		function insertCmtLike(insertCmtLikes) {
			document.cmtLikeFrm<%=i%>.action = insertCmtLikes;
			document.cmtLikeFrm<%=i%>.submit();
		}
		
		function deleteCmtLike(deleteCmtLikes) {
			document.cmtLikeFrm<%=i%>.action = deleteCmtLikes;
			document.cmtLikeFrm<%=i%>.submit();
		}
	</script>
	<div class="post-comment w-container">
		<ul role="list" class="post-comment-container">
			<li class="list-item"><ul role="list" class="comment-user-info w-list-unstyled">
				<li class="list-item-3">
						<img src="icon/profile_def.png" width="20vw">
				</li>
				<li>
					<%=loginId %>
				</li>
				<li></li>
			</ul>
				<form name="cmtLikeFrm<%=i%>"action="" method="post">
					<ul role="list" class="comment-data w-list-unstyled">
						<%int totalCmtLikes = cLMgr.countCmtLikes(num, cBean.getCnum()); %>
						<%if(!cLMgr.selectCmtLikes(num, cBean.getCnum(), loginId)){	%>
							<li><a href="javascript:insertCmtLike('insertCmtLikes')"><img src="icon/like_before.jpg"></a>&nbsp;<%=totalCmtLikes %>개</li>
						<%}else{ %>
							<li><a href="javascript:deleteCmtLike('deleteCmtLikes')"><img src="icon/like_after.jpg"></a>&nbsp;<%=totalCmtLikes %>개</li>
						<%} %>
						<li><%=cBean.getRegdate() %></li>
						
					</ul>
					<input type="hidden" name="loginId" value="<%=loginId%>">
					<input type="hidden" name="num" value=<%=num %>>
					<input type="hidden" name="cnum" value=<%=cBean.getCnum() %>>
				</form>
			</li>
				
			<li class="comment-contents"><%=cBean.getComment() %></li>
		</ul>
		
	</div>
	<%} %>
	<form name="commentFrm" action="commentPost" method="post">
		<div class="comment-write-header w-container">
			<div>
				<b>댓글</b> ex) loginId : aaa
			</div>
			
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2" name="cComment">
				<input class="btn btn-outline-secondary" type="submit" id="button-addon2" value="등록">
				<input type="hidden" name="loginId" value="aaa">
				<input type="hidden" name="num" value=<%=num %>>
			</div>
		</div>
	</form>
	<form method="post" name="downFrm" action="download.jsp">
		<input type="hidden" name="filename">
	</form>

</body>
</html>

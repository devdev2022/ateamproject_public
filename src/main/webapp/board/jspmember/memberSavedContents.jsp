<%@page import="board.SavePostBean"%>
<%@page import="board.UpFileBean"%>
<%@page import="board.BoardBean"%>
<%@page import="board.LikesBean"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="bMgr" class="board.BoardMgr"/>
<jsp:useBean id="sMgr" class="board.SavePostMgr"/>
<%
	String loginId = "aaa";

	int totalRecord = 0; //총 게시물 수
	int numPerPage = 8; //페이지당 레코드 개수
	int pagePerBlock = 10; //블럭당 페이지 개수
	int totalPage = 0; //총 페이지 개수
	int totalBlock = 0; //총 블럭 개수
	int nowPage = 1; //현재 페이지
	int nowBlock = 1; //현재 블럭
	
	Vector<SavePostBean> sCVlist = sMgr.getAllNumSavePost(loginId);
	totalRecord = sCVlist.size();
	
	//페이지 클릭 또는 다른페이지 에서 호출
	if(request.getParameter("nowPage")!=null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	
	// SQL문 limit에 들어가는 변수 선언
	int start = (nowPage * numPerPage) - numPerPage;
	int cnt = numPerPage; 
	
// 전체 페이지 개수
	totalPage = (int)Math.ceil((double)totalRecord/numPerPage);
//	전체 블럭 개수
	totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);
// 현재 블럭
	nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock);

	if(request.getParameter("numPerPage")!=null){
		numPerPage = Integer.parseInt(request.getParameter("numPerPage"));
	}
	
%>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<script type="text/javascript">

function block(block) {
	document.readFrm.nowPage.value=<%=pagePerBlock%>*(block - 1) + 1;
	document.readFrm.submit();
}

function pageing(page) {
	document.readFrm.nowPage.value=page;
	document.readFrm.submit();
}

function openBoardRead(num) {
	url = "../jspboard/boardRead.jsp?num=" + num;
	window.open(url, "../jspboard/boardRead.jsp?num="+num,"width=1000,height=1000,scrollbars=yes");
}
</script>

<style>
.grid-upper {
	background-size: contain;
	background-repeat: no-repeat;
}

.w-layout-grid {
	display: -ms-grid;
	display: grid;
	grid-auto-columns: 1fr;
	-ms-grid-columns: 1fr 1fr;
	grid-template-columns: 1fr 1fr;
	-ms-grid-rows: auto auto;
	grid-template-rows: auto auto;
	grid-row-gap: 16px;
	grid-column-gap: 16px;
}

.grid {
	padding-top: 0px;
	-ms-grid-columns: 20% 20% 20% 20%;
	grid-template-columns: 20% 20% 20% 20%;
	-ms-grid-rows: 100% 100% 100%;
	grid-template-rows: 100% 100% 100%;
}

.panel {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	grid-auto-columns: 1fr;
	grid-column-gap: 16px;
	grid-row-gap: 16px;
	-ms-grid-columns: 1fr 1fr 1fr;
	grid-template-columns: 1fr 1fr 1fr;
	-ms-grid-rows: auto auto auto;
	grid-template-rows: auto auto auto;
}

.grid_container {
	display: -ms-grid;
	display: grid;
	padding-top: 0%;
	grid-auto-columns: 1fr;
	grid-column-gap: 16px;
	grid-row-gap: 16px;
	-ms-grid-columns: 1fr 1fr 1fr 1fr;
	grid-template-columns: 1fr 1fr 1fr 1fr;
	-ms-grid-rows: 1fr auto auto;
	grid-template-rows: 1fr auto auto;
	background-color: transparent;
}

.grid_item {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	width: 15vw;
	height: 15vw;
	padding: 0.5vw;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: stretch;
	-webkit-align-items: stretch;
	-ms-flex-align: stretch;
	align-items: stretch;
	background-color: #4b4343;
}

.grid_upper {
	height: 60%;
	background-color: #fff;
}

.grid_lower {
	display: -ms-grid;
	display: grid;
	height: 40%;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	grid-auto-columns: 1fr;
	grid-column-gap: 0px;
	grid-row-gap: 0px;
	-ms-grid-columns: 1fr 1fr;
	grid-template-columns: 1fr 1fr;
	-ms-grid-rows: auto auto auto;
	grid-template-rows: auto auto auto;
	background-color: #080808;
	padding-left: 0.5vw;
	font-size: 0.8vw;
	color: white;
}

.grid_main {
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	justify-items: center;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-align-content: center;
	-ms-flex-line-pack: center;
	align-content: center;
	-ms-grid-row-align: center;
	align-self: center;
	-ms-grid-columns: 1fr 1fr 1fr 1fr;
	grid-template-columns: 1fr 1fr 1fr 1fr;
	-ms-grid-rows: 0.25fr 0.25fr 0.25fr;
	grid-template-rows: 0.25fr 0.25fr 0.25fr;
}

</style>

</head>
<div class="panel" style="display:flex; flex-direction: column; margin-top: 5vw; margin-bottom: 5vw;  margin-left: 3vw; margin-right: 3vw; ">
	
	<%Vector<SavePostBean> sVlist = sMgr.getAllNumSavePostBoard(loginId, start, cnt);%>
	<div><h3>내가 저장한 게시글 <img src="../icon/save_post_after.png"></h3> <hr> 총 <%=totalRecord %>개의 게시물</div>

	<div class="w-layout-grid grid_main">
	<%
		for(int i=0; i<sVlist.size(); i++){
			if(i == sVlist.size()){
				break;
			}
			SavePostBean lBean = sVlist.get(i);
			int num = lBean.getNum();
			BoardBean bBean = bMgr.getAllBoardByNum(num);
			String subject = bBean.getSubject();
			int count = bBean.getCount();
			String id = bBean.getId();
			UpFileBean fBean = bMgr.getBoardFile(num);
			String filename = fBean.getFilename();
			int bLCount = sMgr.countSavePost(num);
			
	%>		
	<%	if(sVlist.isEmpty()){%>
				<div>게시물이 없습니다</div>
	</div>
			
	<%	}else{%>
		
		<div class="grid_item">
			<div class="grid_upper">
			<%if(filename == null){ %>
					<img src="../icon/noimg_square.jpg" style="width: 100%; height: 100%; object-fit: cover;">
			<%}else{ %>
			<%
//				파일 확장자 구분
				int point = filename.lastIndexOf( "." );
				String ext = filename.substring(point + 1 );
			%>	
					<%if(ext.trim().equals("jpg") || ext.trim().equals("gif") || ext.trim().equals("jpeg") || ext.trim().equals("bmp") || ext.trim().equals("png") || ext.trim().equals("tif") || ext.trim().equals("tga") || ext.trim().equals("rle") || ext.trim().equals("dib") || ext.trim().equals("tiff") || ext.trim().equals("raw")){ %>
						<img src="../../UpLoadFiles/<%=filename%>" style="width: 100%; height: 100%; object-fit: cover;">
				<%}else{ %>
						<img src="../icon/noimg_square.jpg" style="width: 100%; height: 100%; object-fit: cover;">
				<%} %>
			<%} %>
			</div>
			<div class="grid_lower">
				<ul style="list-style: none; padding: 0.3vw;">
					<li>
						<font color="white"><a href="javascript:openBoardRead('<%=num%>')"><%=subject %></a></font>
					</li>
					<li>
						<font color="white"><a href="javascript:openBoardRead('<%=num%>')"><%=id %></a></font>
					</li>
					<li>
						<img src="../icon/save_gray.png" width="12vw"><font color="white"> <a href="javascript:openBoardRead('<%=num%>')"></a><%=bLCount%> | 조회수 <%= count%></font>
					</li>
				</ul> 
			</div>
		</div>
		<%} %>
	<%} %>
	</div>
		



	<div class="btn-toolbar" role="toolbar"
		aria-label="Toolbar with button groups" style="margin-top: 3vw; display: flex; justify-content: center;">
		<div class="btn-group me-2" role="group" aria-label="First group">
		<!-- 이전블록 -->
			<% if(nowBlock > 1) {%>
				<a href="javascript:block('<%=nowBlock - 1%>')"><input type="text" class="btn btn-secondary" value="<" size="1"></a>
			<%}	%>
		</div>
		<div class="btn-group me-2" role="group" aria-label="Second group">
			<!-- 블록번호 -->
			<%
				int pageStart = (nowBlock - 1) * pagePerBlock + 1;
				int pageEnd = (pageStart + pagePerBlock) < totalPage ? pageStart + pagePerBlock : totalPage + 1; 
				for(;pageStart<pageEnd;pageStart++){
			%>
				<a href="javascript:pageing('<%=pageStart%>')">
				<input type="text" class="btn btn-secondary" value="<%=pageStart %>" size="1">
				</a>
			<%} %>
		</div>
		<div class="btn-group me-2" role="group" aria-label="Third group">
			<!-- 다음블록 -->
			<% if(nowBlock < totalBlock) {%>
					<a href="javascript:block('<%=nowBlock + 1%>')">
						<input type="text" class="btn btn-secondary" value=">" size="1"> 
					</a>
			<%}	%>
		</div>
	</div>
		<form name="readFrm" method="get">
			<input type="hidden" name="nowPage" value="<%=nowPage%>">
			<input type="hidden" name="numPerPage" value="<%=numPerPage%>">
			<input type="hidden" name="num" >
		</form>

</div>

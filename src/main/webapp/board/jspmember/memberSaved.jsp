<%@page import="board.UpFileBean"%>
<%@page import="board.BoardBean"%>
<%@page import="board.LikesBean"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="bMgr" class="board.BoardMgr"/>
<jsp:useBean id="lMgr" class="board.LikesMgr"/>
<%
	String loginId = "aaa";
%>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

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
	font-size: 0.5vw;
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
	
	<%Vector<LikesBean> lVlist = lMgr.getAllNumLikes(loginId);%>
	<div><h3>내가 저장한 게시글 <img src="icon/save_post_before.png"></h3> <hr> 총 <%=lVlist.size() %>개의 게시물</div>

	<div class="w-layout-grid grid_main">
	<%
		for(int i=0; i<lVlist.size(); i++){
			LikesBean lBean = lVlist.get(i);
			int num = lBean.getNum();
			BoardBean bBean = bMgr.getAllBoardByNum(num);
			String subject = bBean.getSubject();
			int count = bBean.getCount();
			String id = bBean.getId();
			UpFileBean fBean = bMgr.getBoardFile(num);
			String filename = fBean.getFilename();
			int bLCount = lMgr.countLike(num);
			
	%>		
	<%	if(lVlist.isEmpty()){%>
				<div>게시물이 없습니다</div>
	</div>
			
	<%	}else{%>
	
		<div class="grid_item">
			<%if(filename == null){ %>
				<div class="grid_upper" style="background-image: url('test/1.jpg')">
			<%}else{ %>
				<div class="grid_upper" style="background-image: url('uploadimg/<%=fBean.getFilename()%>')">
			<%} %>
			</div>
			<div class="grid_lower">
				<table>
					<tr>
						<td><font color="white"><%=subject %></font></td>
					</tr>
					<tr>
						<td><font color="white"><%=id %></font></td>
					</tr>
					<tr>
						<td><img src="../icon/like_after.jpg"><font color="white"><%=bLCount%>| 조회수 <%= count%></font></td>
					</tr>
				</table>
			</div>
		</div>
		<%} %>
	<%} %>
	</div>



	<div class="btn-toolbar" role="toolbar"
		aria-label="Toolbar with button groups" style="margin-top: 3vw; display: flex;
  justify-content: center;">
		<div class="btn-group me-2" role="group" aria-label="First group">
			<button type="button" class="btn btn-secondary"><</button>
		</div>
		<div class="btn-group me-2" role="group" aria-label="Second group">
			<button type="button" class="btn btn-dark">1</button>
			<button type="button" class="btn btn-dark">2</button>
			<button type="button" class="btn btn-dark">3</button>
			<button type="button" class="btn btn-dark">4</button>
			<button type="button" class="btn btn-dark">5</button>
			<button type="button" class="btn btn-dark">6</button>
			<button type="button" class="btn btn-dark">7</button>
			<button type="button" class="btn btn-dark">8</button>
			<button type="button" class="btn btn-dark">9</button>
			<button type="button" class="btn btn-dark">10</button>
		</div>
		<div class="btn-group me-2" role="group" aria-label="Third group">
			<button type="button" class="btn btn-secondary">></button>
		</div>
	</div>


</div>

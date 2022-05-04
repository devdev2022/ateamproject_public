<%@page contentType="text/html; charset=EUC-KR"%>
<%

%>

<!DOCTYPE html>
<!-- This site was created in Webflow. http://www.webflow.com -->
<!-- Last Published: Wed May 04 2022 05:27:50 GMT+0000 (Coordinated Universal Time) -->
<html data-wf-domain="6832s-dandy-site.webflow.io"
	data-wf-page="6271f01e889d5b745d71a96b"
	data-wf-site="6271f01e889d5b73f171a96a">
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

<!-- webflow 요소 -->
<style>
#post-title{
	margin-top: 5vw;
}

.layout-top {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: start;
  -webkit-justify-content: flex-start;
  -ms-flex-pack: start;
  justify-content: flex-start;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
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
  -webkit-box-pack: center;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  grid-column-gap: 3vw;
}

.post-main {
  min-height: auto;
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


.layout-upper-bottom {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: start;
  -webkit-justify-content: flex-start;
  -ms-flex-pack: start;
  justify-content: flex-start;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  grid-column-gap: 3vw;
}
</style>
</head>
<body>
	<div id="post-title"><h2>새 게시글 작성</h2></div>
	<div class="layout-top w-container">
		<div class="post-subject">
			<input class="form-control" type="text" placeholder="제목을 입력하세요." aria-label="default input example">
		</div>
		<div class="post-type">
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton1" data-bs-toggle="dropdown"
					aria-expanded="false">일반</button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					<li><a class="dropdown-item" href="#">일반</a></li>
					<li><a class="dropdown-item" href="#">유형1</a></li>
					<li><a class="dropdown-item" href="#">유형2</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="post-main w-container">
		<div class="mb-3">
			
			<textarea class="form-control" id="exampleFormControlTextarea1"
				rows="12"></textarea>
		</div>
	</div>

	<div class="layout-upper-bottom w-container">
		<div id="fileupload" class="mb-3">
			<label for="formFile" class="form-label">
				첨부파일
			</label> <input class="form-control" type="file" id="formFile">
		</div>
	</div>
	<div class="layout-lower-bottom w-container">
		<button type="button" class="btn btn-dark">저장</button>
		<button type="button" class="btn btn-dark">취소</button>

	</div>
	
</body>
</html>

<%@page contentType="text/html; charset=EUC-KR"%>
<%
	
%>


<head>
<style>

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

.homebanner {
  width: 100vw;
  height: 20vw;
  background-color: #3a2a2a;
}

.grid {
  -ms-grid-columns: 1fr 1fr 1fr;
  grid-template-columns: 1fr 1fr 1fr;
}

.topsgrid {
  width: 90vw;
  margin-right: 0vw;
  margin-left: 0vw;
  -ms-grid-columns: 1fr 1fr 1fr;
  grid-template-columns: 1fr 1fr 1fr;
  -ms-grid-rows: auto auto auto;
  grid-template-rows: auto auto auto;
}

.tops-see-more-btn {
  display: inline-block;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
}

.body {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
}

.topslbl {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  width: 90vw;
  height: 5vw;
  margin-top: 3vw;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
}
</style>
</head>
<body class="body">
	<div class="homebanner wf-section"></div>
	<div class="topslbl wf-section">
		<div class="top100">TOP 100 | BEST</div>
	</div>
	<div class="w-layout-grid topsgrid"></div>
	<a href="#" class="tops-see-more-btn w-button">Melon에서 더보기</a>
	
</body>
</html>

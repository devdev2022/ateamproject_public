<%@page import="chart.ChartBean"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="chartMgr" class="chart.ChartMgr"/>

<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function goDetile(title) {
		document.chartFrm.title.value = title;
		document.chartFrm.action = "boardRead.jsp";
		document.chartFrm.submit();
	}
	function openchartDetaile(title) {
		url = "chartDetaile.jsp?title=" + title;
		window.open(url, "chartDetaile.jsp?title="+title,"width=750,height=750,scrollbars=yes");
	}
	function openchartLyric(title) {
		url = "chartLyric.jsp?title=" + title;
		window.open(url, "chartLyric.jsp?title="+title,"width=750,height=750,scrollbars=yes");
	}
</script>
</head>
<body>
<form action="" name="chartFrm" method="get">
	<div align="center">
		<table border="1" style="width: 80%" >
			<caption>인기차트 100</caption>
			<colgroup>
				<!-- 순위 -->
				<col style="width: 20px">
				<!-- 앨범사진 -->
				<col style="width: 80px">
				<!-- 타이틀 -->
				<col>
				<!-- 아티스트 -->
				<col style="width: 250px">
				<!-- 앨범명 -->
				<col style="width: 300px">
				<!-- 가사 -->
				<col style="width: 100px">
				<!-- 상세정보 -->
				<col style="width: 100px">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">
						<div>
							<span>순위</span>
						</div>
					</th>
					<th scope="col">
						<div>
							<span></span>
						</div>
					</th>
					<th scope="col">
						<div>
							<span>타이틀</span>
						</div>
					</th>
					<th scope="col">
						<div>
							<span>아티스트</span>
						</div>
					</th>
					<th scope="col" >
						<div>
							<span>앨범명</span>
						</div>
					</th>
					<th scope="col">
						<div>
							<span>가사보기</span>
						</div>
					</th>
					<th scope="col">
						<div>
							<span>상세정보</span>
						</div>
					</th>
				</tr>
			</thead>
			<tbody>
				<%Vector<ChartBean> chartVlist = chartMgr.getAllChart(); %>
				<%int chartSize = chartVlist.size();%>
				<%for(int i=0; i<chartSize; i++){ %>
				<%ChartBean chBean = chartVlist.get(i);%>
					<tr>
						<!-- 순위 -->
						<td>
							<div align="center"><%=chBean.getRanking() %></div>
						</td>
						<td>
							<!-- 앨범사진 -->
							<div align="center"><img src="<%=chBean.getAlbumImg() %>"></div>
						</td>
						<td>
							<!-- 타이틀 -->
							<div align="center"><%=chBean.getTitle() %></div>
						</td>
						<td>
							<!-- 아티스트 -->
							<div align="center"><%=chBean.getArtist() %></div>
						</td>
						<td>
							<!-- 앨범명 -->
							<div align="center"><%=chBean.getAlbumName()%></div>
						</td>
						<td>
							<!-- 가사 -->
							<div align="center"><a href="javascript:openchartLyric('<%=chBean.getTitle() %>')"><img src="../icon/detail.png"></a></div>
						</td>
						<td>
							<!-- 상세정보 -->
							<div align="center"><a href="javascript:openchartDetaile('<%=chBean.getTitle() %>')"><img src="../icon/detail.png"></a></div>
						</td>
					</tr>
				<%} %>
			</tbody>
		</table>
	</div>
	<input type="hidden" name="title" value="">
</form>
</body>
</html>
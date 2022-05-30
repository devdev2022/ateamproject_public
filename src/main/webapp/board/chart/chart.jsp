<%@page import="chart.getChart"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="chart.ChartBean"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="chartMgr" class="chart.ChartMgr" />

<%

	Calendar cal = Calendar.getInstance();
	
	String year = Integer.toString(cal.get(Calendar.YEAR));
	String month = Integer.toString(cal.get(Calendar.MONTH)+1);
	String day = Integer.toString(cal.get(Calendar.DATE));
	
	String realYear = Integer.toString(cal.get(Calendar.YEAR));
	String realMonth = Integer.toString(cal.get(Calendar.MONTH)+1);
	String realDay = Integer.toString(cal.get(Calendar.DATE));
	String realHour = Integer.toString(cal.get(Calendar.HOUR));
	String realMinute= Integer.toString(cal.get(Calendar.MINUTE));
	String realSecond = Integer.toString(cal.get(Calendar.SECOND));
	String realTime = realHour + ":" + realMinute;
	
	int maxDay = 31;
	
	
	if(cal.get(Calendar.MONTH)+1 < 10){
		Integer.toString(cal.get(Calendar.MONTH)+1);
		month = "0" + month;
	}
	if(cal.get(Calendar.MONTH)+1 < 10){
		Integer.toString(cal.get(Calendar.MONTH)+1);
		realMonth = "0" + realMonth;
	}
	if(cal.get(Calendar.DATE) < 10){
		Integer.toString(cal.get(Calendar.DATE));
		realDay = "0" + realDay;
	}
	if(cal.get(Calendar.DATE) < 10){
		Integer.toString(cal.get(Calendar.DATE));
		day = "0" + day;
	}
	
	if(request.getParameter("nowYearRead")!=null){
		year =request.getParameter("nowYearRead");
	}
	if(request.getParameter("nowMonthRead")!=null){
		month =request.getParameter("nowMonthRead");
	}
	if(request.getParameter("nowDayRead")!=null){
		day =request.getParameter("nowDayRead");
	}
	
	String nowDate = year + "-" + month + "-"  +day;
	String nowTime = Integer.toString(cal.get(Calendar.HOUR_OF_DAY));
	String realNowDate = realYear + "-" + realMonth + "-"  +realDay;
	
	if(cal.get(Calendar.HOUR_OF_DAY)+1 < 10){
		Integer.toString(cal.get(Calendar.MONTH)+1);
		nowTime = "0" + nowTime;
	}

	
	if(request.getParameter("nowTimeRead")!=null){
		nowTime =request.getParameter("nowTimeRead");
	}
	
	String DateTime = nowDate + " " + nowTime;
	if(month.equals("02")){
		maxDay = 28;
	}else if(month.equals("01") || month.equals("03") || month.equals("05") || month.equals("07") || month.equals("08") || month.equals("10") || month.equals("12") ){
		maxDay = 31;
	}else{
		maxDay = 30;
	}
//	차트 매시 정각에 가져오기
//	if(realTime.equals("0:01") || realTime.equals("1:01") || realTime.equals("2:01") || realTime.equals("4:01") || realTime.equals("3:01") || realTime.equals("5:01") || realTime.equals("6:01") || realTime.equals("7:01") || realTime.equals("9:01") || realTime.equals("8:01") || realTime.equals("10:01") || realTime.equals("11:01")){
//		getChart newChart = new getChart();
//	}
//	if(realTime.equals("3:22")){
//		getChart newChart = new getChart();
//		newChart.getChart();
//	}
%>
<!DOCTYPE html>
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!------ Include the above in your HEAD tag ---------->
<head>
<meta charset="UTF-8">
<title>멜론 인기차트 Top 100</title>
<!-- 부트스트랩 요소 -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script type="text/javascript">
	function goDetile(title) {
		document.chartFrm.title.value = title;
		document.chartFrm.action = "boardRead.jsp";
		document.chartFrm.submit();
	}
	function openchartDetaile(title) {
		url = "chartDetailes.jsp?title=" + title;
		window.open(url, "chartDetailes.jsp?title=" + title, "width=950,height=900,scrollbars=yes");
	}
	function openchartLyric(title) {
		url = "chartLyric.jsp?title=" + title;
		window.open(url, "chartLyric.jsp?title=" + title, "width=250,height=550,scrollbars=yes");
	}
	function setNowTime(time) {
		document.chartFrm.nowTime.value = time;
		document.chartFrm.nowTimeRead.value = time;
		document.chartFrm.submit();
	}
	function setNowYear(year) {
		document.chartFrm.nowYear.value = year;
		document.chartFrm.nowYearRead.value = year;
		document.chartFrm.submit();
	}
	function setNowMonth(month) {
		document.chartFrm.nowMonth.value = month;
		document.chartFrm.nowMonthRead.value = month;
		document.chartFrm.submit();
	}
	function setNowDay(day) {
		document.chartFrm.nowDay.value = day;
		document.chartFrm.nowDayRead.value = day;
		document.chartFrm.submit();
	}
	
</script>
<style type="text/css">
.wrapper{
  float:left;
  width:100%;
  padding-top:65px;
  min-height:250px;
}
.navigation{
    float: left;
    width: 100%;
    text-align: center;
}
.navigation ul{
    margin: 0;
    padding: 0;
    float: none;
    width: auto;
    list-style: none;
    display: inline-block;
}
.navigation ul li{
    float: left;
    width: auto;
    margin-right: 60px;
    position: relative;
}
.navigation ul li:last-child{
    margin: 0;
}
.navigation ul li a{
    float: left;
    width: 100%;
    color: #333;
    padding: 16px 0;
    font-size: 16px;
    line-height: normal;
    text-decoration:none;
    box-sizing:border-box;
    text-transform: uppercase;
    font-family: 'Montserrat', sans-serif;      -webkit-transition:color 0.3s ease;
    transition:color 0.3s ease;
}
.navigation .children {
	-ms-overflow-style: none; /* IE and Edge */
    scrollbar-width: none; /* Firefox */
	overflow-y:scroll;
	height:250px;
    position: absolute;
    top: 100%;
    z-index: 1000;
    margin: 0;
    padding: 0;
    left: 0;
    min-width: 240px;
    background-color: #fff;
    border: solid 1px #dbdbdb;
    opacity: 0;
    -webkit-transform-origin: 0% 0%;
    transform-origin: 0% 0%;
    -webkit-transition: opacity 0.3s, -webkit-transform 0.3s;
    transition: opacity 0.3s, -webkit-transform 0.3s;
    transition: transform 0.3s, opacity 0.3s;
    transition: transform 0.3s, opacity 0.3s, -webkit-transform 0.3s;
}
.navigation .children::-webkit-scrollbar {
    display: none; /* Chrome, Safari, Opera*/
}
.navigation ul li .children  {
    -webkit-transform-style: preserve-3d;
    transform-style: preserve-3d;
    -webkit-transform: rotateX(-75deg);
    transform: rotateX(-75deg);
    visibility: hidden;
}
.navigation ul li:hover > .children  {
    -webkit-transform: rotateX(0deg);
    transform: rotateX(0deg);
    opacity: 1;
    visibility: visible;
}
.navigation ul li .children .children{
	left: 100%;
	top: 0;
}
.navigation ul li.last .children{
	right: 0;
	left: auto;
}
.navigation ul li.last .children .children{
	right: 100%;
	left: auto;
}
.navigation ul li .children li{
	float: left;
	width: 100%;
  margin:0;
}
.navigation ul li .children  a {  
    display: block;
    font-family: "Montserrat", sans-serif;
    text-transform: uppercase;
    font-weight: 700;
    font-size: 11px;
    color: #333;
    text-align: left;
    line-height: 1.5em;
    padding: 16px 30px;
    letter-spacing: normal;
    border-bottom: 1px solid #dbdbdb;
    -webkit-transition: background-color 0.3s ease;
    transition: background-color 0.3s ease;
}
.navigation ul li .children  a:hover{
	color: #fff;
  background-color:goldenrod;
}
.navigation ul li a:hover{
  color:goldenrod;
}
</style>
</head>
<body>
	<div align="center">
		<a href="../jsphome/home.jsp"><img src="../icon/melon.png" width="30vw"> <b><font size="3vw" color="green">인기차트100</font></b></a>
	</div>
	<form name="chartFrm" method="get">
    <div class="wrapper">
<nav class="navigation">
	<ul>
		<li class="active">
			<a href="#">
				<font style="font-size: 40px">
					<input type="button" name="nowYear" value="<%=year%>" style="background: transparent; border: 0;">년  
				</font>
			</a>
			<input type="hidden" value="<%=year %>" name="nowYearRead" >
			<ul class="children sub-menu">
				<%for(int j =2000; j<(cal.get(Calendar.YEAR)+1); j++){ %>
						<li>
							<a href="javascript:setNowYear('<%=j%>')"><font style="font-size: 15px" ><%=j%></font></a>
						</li>
				<%} %>
			</ul>
		</li>
		<li class="active">
			<a href="#">
				<font style="font-size: 40px">
					<input type="button" name="nowMonth" value="<%=month%>" style="background: transparent; border: 0;">월 
				</font>
			</a>
			<input type="hidden" value="<%=month %>" name="nowMonthRead" >
			<ul class="children sub-menu">
				<%if(realYear.equals(year)){ %>
					<%for(int j =1; j<(cal.get(Calendar.MONTH)+2); j++){ %>
							<%if(j < 10){ %>
								<li>
									<a href="javascript:setNowMonth('0<%=j%>')"><font style="font-size: 15px" >0<%=j%></font></a>
								</li>
						<%}else{ %>
								<li>
									<a href="javascript:setNowMonth('<%=j%>')"><font style="font-size: 15px" ><%=j%></font></a>
								</li>
						<%} %>
					<%} %>
				<%}else{ %>
					<%for(int j =1; j<13; j++){ %>
							<%if(j < 10){ %>
								<li>
									<a href="javascript:setNowMonth('0<%=j%>')"><font style="font-size: 15px" >0<%=j%></font></a>
								</li>
						<%}else{ %>
								<li>
									<a href="javascript:setNowMonth('<%=j%>')"><font style="font-size: 15px" ><%=j%></font></a>
								</li>
						<%} %>
					<%} %>
				<%} %>
			</ul>
		</li>
		<li class="active">
			<a href="#">
				<font style="font-size: 40px">
					<input type="button" name="nowDay" value="<%=day%>" style="background: transparent; border: 0;">일 
				</font>
			</a>
			<input type="hidden" value="<%=day %>" name="nowDayRead" >
			<ul class="children sub-menu">
				<%if((realYear + "-" + realMonth).equals(year + "-" + month)){ %>
					<%for(int j =1; j<(cal.get(Calendar.DATE)+1); j++){ %>
						<%if(j < 10){ %>	
							<li>
								<a href="javascript:setNowDay('0<%=j%>')"><font style="font-size: 15px" >0<%=j%></font></a>
							</li>
						<%}else{ %>
							<li>
								<a href="javascript:setNowDay('<%=j%>')"><font style="font-size: 15px" ><%=j%></font></a>
							</li>
						<%} %>
					<%} %>
				<%}else{ %>
					<%for(int j =1; j<maxDay + 1; j++){ %>
						<%if(j < 10){ %>	
							<li>
								<a href="javascript:setNowDay('0<%=j%>')"><font style="font-size: 15px" >0<%=j%></font></a>
							</li>
						<%}else{ %>
							<li>
								<a href="javascript:setNowDay('<%=j%>')"><font style="font-size: 15px" ><%=j%></font></a>
							</li>
						<%} %>
					<%} %>
				<%} %>
			</ul>
		</li>
		<li class="active">
			<a href="#">
				<font style="font-size: 40px">
					<input type="button" name="nowTime" value="<%=nowTime%>" style="background: transparent; border: 0;">시
				</font>
			</a>
			<input type="hidden" value="<%=nowTime %>" name="nowTimeRead" >
			<ul class="children sub-menu">
				<%if(realNowDate.equals(year + "-" + month + "-" + day)){ %>
					<%for(int j =0; j<(cal.get(Calendar.HOUR_OF_DAY)+1); j++){ %>
						<%if(j < 10){ %>	
							<li>
								<a href="javascript:setNowTime('0<%=j%>')"><font style="font-size: 15px" >0<%=j%></font></a>
							</li>
						<%}else{ %>
							<li>
								<a href="javascript:setNowTime('<%=j%>')"><font style="font-size: 15px"><%=j%></font></a>
							</li>
						<%} %>
					<%} %>
				<%}else{ %>
					<%for(int j =0; j<24; j++){ %>
						<%if(j < 10){ %>	
							<li>
								<a href="javascript:setNowTime('0<%=j%>')"><font style="font-size: 15px" >0<%=j%></font></a>
							</li>
						<%}else{ %>
							<li>
								<a href="javascript:setNowTime('<%=j%>')"><font style="font-size: 15px"><%=j%></font></a>
							</li>
						<%} %>
					<%} %>
				<%}%>
			</ul>
		</li>
	</ul>
</nav>
<!--Navigation End-->
</div>
	
		<div align="center">
			<table border="1" style="width: 80%">
				<colgroup>
					<!-- 순위 -->
					<col style="width: 50px" >
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
					<tr align="center">
						<th scope="col" align="center">
							<div>
								<span>순위</span>
							</div>
						</th>
						<th scope="col" align="center">
							<div>
								<span></span>
							</div>
						</th>
						<th scope="col" align="center">
							<div>
								<span>타이틀</span>
							</div>
						</th>
						<th scope="col" align="center">
							<div>
								<span>아티스트</span>
							</div>
						</th>
						<th scope="col" align="center">
							<div>
								<span>앨범명</span>
							</div>
						</th>
						<th scope="col" align="center">
							<div>
								<span>가사보기</span>
							</div>
						</th>
						<th scope="col" align="center">
							<div>
								<span>상세정보</span>
							</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<%Vector<ChartBean> chartVlist = chartMgr.getAllChartByTime(DateTime);%>
					<%int chartSize = chartVlist.size();%>
					<%if(chartSize != 0){ %>
						<%for (int i = 0; i < chartSize; i++) {%>
						<%ChartBean chBean = chartVlist.get(i);%>
							<tr>
								<!-- 순위 -->
								<td>
									<div align="center"><%=chBean.getRanking()%></div>
								</td>
								<td>
									<!-- 앨범사진 -->
									<div align="center">
										<img src="<%=chBean.getAlbumImg()%>">
									</div>
								</td>
								<td>
									<!-- 타이틀 -->
									<div align="center"><%=chBean.getTitle()%></div>
								</td>
								<td>
									<!-- 아티스트 -->
									<div align="center"><%=chBean.getArtist()%></div>
								</td>
								<td>
									<!-- 앨범명 -->
									<div align="center"><%=chBean.getAlbumName()%></div>
								</td>
								<td>
									<!-- 가사 -->
									<div align="center">
										<a href="javascript:openchartLyric('<%=chBean.getTitle()%>')"><img
											src="../icon/detail.png"></a>
									</div>
								</td>
								<td>
									<!-- 상세정보 -->
									<div align="center">
										<a href="javascript:openchartDetaile('<%=chBean.getTitle()%>')"><img
											src="../icon/detail.png"></a>
									</div>
								</td>
							</tr>
						<%} %>
					<%}else{ %>
						<tr>
							<td colspan="7" align="center">
								<div><font style="font-size: 30px">받아온 정보가 없습니다.</font></div>
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
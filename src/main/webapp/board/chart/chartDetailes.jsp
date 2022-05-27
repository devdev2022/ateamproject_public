<%@page import="chart.ChartBean"%>
<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="chartMgr" class="chart.ChartMgr"/>
<%
	String title = request.getParameter("title");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=title %>&nbsp;의 정보</title>
</head>
<body>
	<div align="center">
		<div>
			<h2>영상 정보</h2>
		</div>
		<div style="width:1008px;height:568px;">
		<%
				ChartBean bean = new ChartBean();
				bean = chartMgr.getDetaile(title); 
		%>
		<%
			if(bean.getVideo() == "뮤비 정보가 없습니다."){
			%>
			<div style="position: relative; padding-top: 56.25%">뮤직비디오 정보가 없습니다.</div>
			<%}else{ %>
			<div style="position: relative; padding-top: 56.25%">
				<iframe style="width:100%; height:100%; position : absolute;top:0; left:0" id="frame_video_" scrolling="no" src="https://www.melon.com/video/player.htm?mvId=<%=bean.getVideo() %>
				&amp;menuId=&amp;autoPlay=Y" frameborder="0" allowfullscreen="true" webkitallowfullscreen="true" ></iframe>
			</div>
			<%} %>
		<!-- 영상 상세 -->
			<div>
				<div>
					<font style="color:maroon; ; font-size: 30px;">
						[MV] <%=title %>
					</font>
				</div>
					<div>
						<div>
							<div>
								<h3>아티스트</h3>
								<div>
									<font style="color:maroon;"><%=bean.getArtist() %></font>
								</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 영상소개 -->
			<div>
				<div>
					<h3>비디오소개</h3>
				</div>
				<div>
					<div>
						<font style="color:maroon;"><%=bean.getVideoInfo() %></font>
					</div>
					<!-- //앨범소개글 -->
				</div>
			</div>
			<!-- //영상소개 -->
	
		</div>
	</div>
</body>
</html>

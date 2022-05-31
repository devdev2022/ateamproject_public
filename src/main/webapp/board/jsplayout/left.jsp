<%@page import="chart.ChartBean"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html; charset=UTF-8"%>

<%@page import="org.apache.tomcat.util.bcel.Const"%>
<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="leftMgr" class="member.MemberMgr1" />
<jsp:useBean id="leftBean" class="member.MemberBean1" />
<jsp:useBean id="leftChartMgr" class="chart.ChartMgr" />
<%
String leftId = (String) session.getAttribute("idKey");
leftBean = leftMgr.getMember(leftId);
String leftGrade = "";
if (leftId != null && leftBean.getGrade() != null){
	leftGrade = (leftBean.getGrade()).trim();
}
	
%>

<style>
.sidebar{
align-item: center;
}

.left-chart tr td{
	font-size: 0.5vw;
	color: white;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    -webkit-box-orient: vertical;
}​
</style>
<script type="text/javascript">
	function loginCheck(url, leftId) {
		if(leftId == null){
			alert("로그인이 필요합니다.");
			location.href="../jspmember/login.jsp";
		}else{
			location.href=url;
		}
	}
</script>

<div class="sidebar w-col w-col-2">
	<%
	boolean imgFound = (leftBean.getImgname() != null);
	if (imgFound) {
		String url = "../photo/" + leftBean.getImgname();
	%>
	<a href="#" class="side_profile_img"
		style="background-image: url('<%=url%>'); border-color: white; border-width: thick; border-radius: 70%; background-size: cover; background-repeat: no-repeat"></a>
	<%
	} else {
	%>
	<div class="side_profile_img"
		style="background-image: url('../icon/profile_blank.png'); background-size: cover; background-repeat: no-repeat">
	</div>
	<%
	}
	%>


	<div class="side_profile_text"
		style="text-align: center; color: white; margin-bottom: 0.5vw; white-space: nowrap;">

		<%
		if (leftId == null) {
		%>
		<a href="../jspmember/login.jsp">로그인하세요.</a>
		<%
		} else {
		%>
		<%=leftId%>님,환영합니다.
		<%
		if (leftGrade.equals("1")) {
		%>
		<br> <u><a href="../jspadmin/memberList.jsp">회원 관리 페이지로
				이동</a></u>
		<%
		}
		%>
		<%
		}
		%>
	</div>

	<div class="side_profile_iconbar">
		<a href="../jspmember/joinupdate.jsp">
			<div class="side_profile_editicon w-col w-col-4">
				<img src="../icon/edit_gray.png">
			</div>
		</a> 
		<a href="../jspmember/memberLikes.jsp">
			<div class="side_profile_likeicon w-col w-col-4">
				<img src="../icon/like_gray.png">
			</div>
		</a> 
		<a href="../jspmember/memberSaved.jsp">
			<div class="side_profile_saveicon w-col w-col-4">
				<img src="../icon/save_gray.png">
			</div>
		</a>
	</div>

	<div style="width:15vw; margin-top: 1vw; display: flex; flex-direction: column;">

		<div style="display: flex; align-itmes: center;">
			<a href="../chart/chart.jsp"> <img src="../icon/melon.png"
				width="30vw"> <b><font size="2vw" color="green">인기차트
						TOP 10</font></b></a>
			
		</div>

		<table border="1"  style="margin-top: 1vw; max-width: 3vw;">
			<tbody class="left-chart">
				<%
					Vector<ChartBean> chartVlist = leftChartMgr.getAllChart();
					int chartSize = chartVlist.size();
					if(chartSize > 11){

					for (int i = chartSize - 1; i > chartSize - 11; i--) {
						ChartBean chBean = chartVlist.get(i);
						%>
						<tr>
							<!-- 순위 -->
							<td>
								<div align="center"><%=chBean.getRanking()%></div>
							</td>
							<td style="min-width:20px">
								<div align="center"><img src="<%=chBean.getAlbumImg()%>"></div>
							</td>
							<td>
								<!-- 아티스트 -->
								<div align="center"><%=chBean.getArtist()%><br>
									<%=chBean.getTitle()%></div>
							</td>
		
						</tr>
				<%		}
					}
					%>
			</tbody>
		</table>

	</div>
</div>



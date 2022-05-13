<%@page contentType="text/html; charset=UTF-8"%>
<%
	
%>

<!-- player.js 경로 참조 -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jplayer/2.6.4/jquery.jplayer/jquery.jplayer.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jplayer/2.6.4/add-on/jplayer.playlist.min.js"></script>
<script src="player.js"></script>

<!-- player.css 경로 참조 -->
<link href="player.css" rel="stylesheet">

<div>
	<a href="https://codepen.io/mustafaismail22/pen/Baqxbp">템플릿 원본</a>
</div>

<div class="music-player">
	<!-- 이미지 파일 위치 -->
	<div
		style="background-image: url(https://upload.wikimedia.org/wikipedia/en/a/a3/Tha-doggfather.jpg); background-size: cover;"
		class="album">

		<div class="info">

			<div class="left">
				<a href="javascript:;" class="icon-shuffle"></a>
			</div>

			<div class="center">
				<div class="jp-playlist">
					<ul>
						<li></li>
					</ul>
				</div>
			</div>

			<div class="right">
				<a href="javascript:;" class="icon-repeat"></a> <a
					href="javascript:;" class="icon-share"></a>
			</div>

			<div class="progress"></div>

		</div>

		<div class="controls">
			<div class="current jp-current-time">00:00</div>
			<div class="play-controls">
				<a href="javascript:;" class="icon-previous jp-previous"
					title="previous"></a> <a href="javascript:;"
					class="icon-play jp-play" title="play"></a> <a href="javascript:;"
					class="icon-pause jp-pause" title="pause"></a> <a
					href="javascript:;" class="icon-next jp-next" title="next"></a>
			</div>
			<div class="volume-level">
				<a href="javascript:;" class="icon-volume-up" title="max volume"></a>
				<a href="javascript:;" class="icon-volume-down" title="mute"></a>
			</div>
		</div>

		<div id="jquery_jplayer" class="jp-jplayer"></div>

	</div>
</div>
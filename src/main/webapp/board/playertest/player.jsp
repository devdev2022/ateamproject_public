<%@page contentType="text/html; charset=UTF-8"%>
<%
	
%>

<!-- player.js 경로 참조 -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jplayer/2.6.4/jquery.jplayer/jquery.jplayer.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jplayer/2.6.4/add-on/jplayer.playlist.min.js"></script>
<script>
$(document).ready(function(){


	  var playlist = [{
		  /*제목, 아티스트, 음악*/
	      title:"Ghetto funk Mix",
	      artist:"DJ Todokki",
	      mp3:"../sample/sample.mp3",
	      poster: "https://i.imgur.com/sCbrzQa.png"
	    },{
	      title:"Cro Magnon Man",
	      artist:"The Stark Palace",
	      mp3:"http://www.jplayer.org/audio/mp3/TSP-01-Cro_magnon_man.mp3",
	      poster: "https://i.imgur.com/lXvsuBu.png"
	    },{
	      title:"Bubble",
	      m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
	      poster: "https://i.imgur.com/klJKSVZ.jpg"
	  }];
	  
	  var cssSelector = {
	    jPlayer: "#jquery_jplayer",
	    cssSelectorAncestor: ".music-player"
	  };
	  
	  var options = {
	    swfPath: "https://cdnjs.cloudflare.com/ajax/libs/jplayer/2.6.4/jquery.jplayer/Jplayer.swf",
	    supplied: "ogv, m4v, oga, mp3",
	    volumechange: function(event) {
	      $( ".volume-level" ).slider("value", event.jPlayer.options.volume);
	    },
	    timeupdate: function(event) {
	      $( ".progress" ).slider("value", event.jPlayer.status.currentPercentAbsolute);
	    }
	  };
	  
	  var myPlaylist = new jPlayerPlaylist(cssSelector, playlist, options);
	  var PlayerData = $(cssSelector.jPlayer).data("jPlayer");
	  
	  
	  // Create the volume slider control
	  $( ".volume-level" ).slider({
	     animate: "fast",
			max: 1,
			range: "min",
			step: 0.01,
			value : $.jPlayer.prototype.options.volume,
			slide: function(event, ui) {
				$(cssSelector.jPlayer).jPlayer("option", "muted", false);
				$(cssSelector.jPlayer).jPlayer("option", "volume", ui.value);
			}
	  });
	  
	  // Create the progress slider control
	  $( ".progress" ).slider({
			animate: "fast",
			max: 100,
			range: "min",
			step: 0.1,
			value : 0,
			slide: function(event, ui) {
				var sp = PlayerData.status.seekPercent;
				if(sp > 0) {
					// Move the play-head to the value and factor in the seek percent.
					$(cssSelector.jPlayer).jPlayer("playHead", ui.value * (100 / sp));
				} else {
					// Create a timeout to reset this slider to zero.
					setTimeout(function() {
						 $( ".progress" ).slider("value", 0);
					}, 0);
				}
			}
		});

	  
	});
</script>

<!-- player.css 경로 참조 -->
<link href="player.css" rel="stylesheet">

<div>
	<a href="https://codepen.io/mustafaismail22/pen/Baqxbp">템플릿 원본</a>
</div>

<!-- 플레이어 시작 -->
<div class="music-player">
	<!-- 이미지 파일 위치 -->
	<div
		style="background-image: url(https://c0.wallpaperflare.com/preview/176/478/441/amplifier-close-up-console-control-thumbnail.jpg); background-repeat: no-repeat; background-size: auto;"
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
<!-- 플레이어 끝 -->
<a>timestamp</a>
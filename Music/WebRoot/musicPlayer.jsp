<!-- 音乐播放器控件 -->

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
		<!--音乐播放控件-->
		<div class="player buttonLight">
			<audio id="myplayer" src="https://amonsblog-1255946565.cos.ap-guangzhou.myqcloud.com/%E5%92%8C%E7%94%B0%E5%85%89%E5%8F%B8%20-%20Butter-Fly%20-tri.Version-.mp3" controls="true" style="width: 200px;" hidden="true" loop="loop">
				你的浏览器不支持HTML5
			</audio>

			<div class="player_panel">
				<!--自定义控件面板-->
				<div class="music_play"></div>
				<div class="scrolltext">
					<marquee>
						<font color=red>和田光司 - Butter-Fly -tri.Version-(数码宝贝)</font>
					</marquee>
				</div>
				<!--<input type="button" class="music_pause"  onclick="document.getElementById('myplayer').pause()" value='暂停'/>-->
			</div>

		</div>
		<script type="text/javascript" src="js/amonsMusicPlayer.js" ></script>

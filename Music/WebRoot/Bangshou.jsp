<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Bangshou.jsp' starting page</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

		<link rel="stylesheet" href="font/css/font-awesome.css" />
		<link rel="shortcut icon" href="img/timg.png">
		<link rel="stylesheet" href="font/css/font-awesome.css" />
		<link rel="stylesheet" href="css/index.css" />
		<!--<embed src="acc/Nigel Silin - Sakura Tears.mp3" hidden="false" autostart="true" loop="true">-->  
		<style>
			* {
				padding: 0px;
				margin: 0px;
			}
			
			.body {
				margin: 0 auto;
				width: 1020px;
				overflow: hidden;
			}
			
			.left {
				margin-top: 10px;
				margin: 0 auto;
				float: left;
				border: 1px solid #D3D3D3;
			}
			
			.biaotu {
				width: 210px;
				height: 40px;
				line-height: 40px;
				padding-left: 10px;
			}
			
			.chir {
				list-style-type: none;
				width: 220px;
				height: 33px;
			}
			
			.chirtitle {
				font-size: 14px;
			}
			
			.one {
				margin-top: 9px;
				margin-left: 20px;
				margin-right: 10px;
				margin-bottom: -3px;
			}
			
			.icon-angle-down {
				margin-left: 105px;
			}
			
			.icon-angle-up {
				margin-left: 105px;
			}
			
			.right {
				float: right;
				width: 780px;
			}
			
			.biaoti {
				font-size: 25px;
				font-weight: 500px;
				width: 300px;
				height: 50px;
				line-height: 30px;
			}
			
			.date {
				font-size: 15px;
				width: 200px;
				height: 30px;
				line-height: 30px;
			}
			
			.btn {
				/*border:none;*/
				box-shadow: none;
				height: 50px;
				width: 200px;
				float: right;
				background: royalblue;
				color: white;
				font-size: 20px;
				border-radius: 10px;
			}
			
			.kugobiaotu {
				height: 80px;
			}
			
			.lity {
				list-style-type: none;
				margin: 15px 20px;
				padding: 14px;
			}
			
			.lity:hover {
				background: #D3D3D3;
			}
			
			.line {
				border: 1px dotted lightgray;
				width: 400xp;
			}
			
			.checkbox {
				margin-right: 20px;
				size: 20px;
			}
			
			.quan {
				margin-left: 20px;
			}
			
			.geticon {
				padding-right: 50px;
				width: 100px;
				height: 20px;
				float: right;
			}
			
			.times {
				margin-left: 20px;
				float: right;
			}
			
			.iconone {
				background: red;
			}
			
			.icontwo {
				background: red;
			}
			
			.icontre {
				background: red;
			}
			
			.icon-play {
				color: #FFFFFF;
				margin-left: 10px;
			}
			
			.icon-download-alt {
				color: #FFFFFF;
				margin-left: 10px;
			}
			
			.icon-external-link {
				color: #FFFFFF;
				margin-left: 10px;
			}
		</style>
	</head>

	<body  onselectstart="return false">
		<!--logo&头部 和导航条-->
		<%@include file="headPage.jsp" %>

		<div class="body">
			<div class="left">
				<div class="biaotu"><span>热门榜单&nbsp;&nbsp;</span><span id="ged" class="icon-angle-down"></span></div>
				<ul class="chirpre">
					<li class="chir"><img class="one" src="img/20130807185439172736.png" />
						<a class="chirtitle">酷狗飙升榜</a> <img src="img/20170907172623922000.png" /> </li>
					<li class="chir"><img class="one" src="img/20130807185450567609.png" />
						<a class="chirtitle">酷狗TOP500</a><img src="img/20170907172623922000.png" /></li>
					<li class="chir"><img class="one" src="img/wlhg.png" />
						<a class="chirtitle">网络红歌榜</a>
					</li>
					<li class="chir"><img class="one" src="img/20160119110054378246.jpg" />
						<a class="chirtitle">DJ热歌榜</a>
					</li>
					<li class="chir"><img class="one" src="img/20171120102326715438.jpg" />
						<a class="chirtitle">华语新歌榜</a>
					</li>
					<li class="chir"><img class="one" src="img/20171120102536373818.jpg" />
						<a class="chirtitle">欧美新歌榜</a>
					</li>
					<li class="chir"><img class="one" src="img/20171120102907761563.jpg" />
						<a class="chirtitle">韩国新歌榜</a>
					</li>
					<li class="chir"><img class="one" src="img/20171120103030215744.jpg" />
						<a class="chirtitle">日本新歌榜</a><img src="img/20180504194301264650.png" /> </li>
					<li class="chir"><img class="one" src="img/20180420154851242485.jpg" />
						<a class="chirtitle">创造101榜</a><img src="img/20180504194301264650.png" /> </li>
					<li class="chir"><img class="one" src="img/20180427144715470197.jpg" />
						<a class="chirtitle">嗨，唱起来！榜</a><img src="img/20180504194301264650.png"/></li>
						<li class="chir"><img class="one" src="img/20180504194011970410.jpg" />
							<a class="chirtitle">2018跨界歌王榜</a>
						</li>
						<li class="chir"><img class="one" src="img/20170913193636466991.jpg" />
							<a class="chirtitle">腾讯音乐人原创榜</a>
						</li>
						<li class="chir"><img class="one" src="img/20171120103438764503.jpg" />
							<a class="chirtitle">粤语新歌榜</a>
						</li>
						<li class="chir"><img class="one" src="img/20131025103853305845.png" />
							<a class="chirtitle">酷狗分享榜</a>
						</li>
						<li class="chir"><img class="one" src="img/20160504171514518791.png" />
							<a class="chirtitle">5sing音乐榜</a>
						</li>
						<li class="chir"><img class="one" src="img/20140109170934390969.png" />
							<a class="chirtitle">繁星音乐榜</a>
						</li>
				</ul>
				<div class="biaotu"><span>特色音乐榜</span><span id="ged" class="icon-angle-down"></span></div>
				<ul class="chirpre">
					<li class="chir"><img class="one" src="img/20160108180453655920.png" />
						<a class="chirtitle">洗脑神曲</a>
					</li>
					<li class="chir"><img class="one" src="img/20151222143059932587.png" />
						<a class="chirtitle">百大DJ</a>
					</li>
					<li class="chir"><img class="one" src="img/20160805174132122112.png" />
						<a class="chirtitle">伤感网络情歌</a>
					</li>
					<li class="chir"><img class="one" src="img/20151222142813590494.png" />
						<a class="chirtitle">KTV</a>
					</li>
					<li class="chir"><img class="one" src="img/20151222143034989298.png" />
						<a class="chirtitle">影视金曲</a>
					</li>
					<li class="chir"><img class="one" src="img/20160728182722980092.png" />
						<a class="chirtitle">纯音乐</a>
					</li>

				</ul>
				<div class="biaotu"><span>全球榜&nbsp;&nbsp;&nbsp;&nbsp;</span><span id="ged" class="icon-angle-down"></span></div>
				<ul class="chirpre">
					<li class="chir"><img class="one" src="img/20130807192258314669.png" />
						<a class="chirtitle">美国BillBoard榜</a>
					</li>
					<li class="chir"><img class="one" src="img/20161013180833243081.png" />
						<a class="chirtitle">英国单曲榜</a>
					</li>
					<li class="chir"><img class="one" src="img/20151222142442217161.png" />
						<a class="chirtitle">日本公信榜</a>
					</li>
					<li class="chir"><img class="one" src="img/20130807193303334739.png" />
						<a class="chirtitle">韩国M-net音乐榜</a>
					</li>
					<li class="chir"><img class="one" src="img/20140827151250799981.png" />
						<a class="chirtitle">中国TOP排行榜</a>
					</li>
				</ul>
			</div>
			<div class="right">
				<div class="kugobiaotu">
					<span class="biaoti">酷狗飙升榜</span>
					<span class="date">2018-5-8 更新</span>
					<input class="btn" type="button" value="播放全部" />
				</div>
				<hr class="line" />
				<div>
					<div class="quan">
						<input class="t" type="checkbox" /><span>全选</span>
					</div>
					<div id="gedan">
						<ul>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--尾部-->
		<%@include file="footPage.jsp" %>
		
		</div>
		</div>	
		<!--回到顶部-->
		<a id="goToTop" href="#"></a>
	
	<%	Object obj=request.getAttribute("login_type");
		String login_type="none";
		if(obj!=null){
			login_type="block";
		}
	
	 %>
	<!-- 遮罩层 -->
	<div class="cover" style="display:<%=login_type%>"></div>
	<!-- 弹出登录小窗口 -->
	<div class="mini_login" id="mini_login"  style="display:<%=login_type%>">
		<div>
			<div class="cancle"></div>
			<div class="clear"></div>
		</div>
		<div class="login_text">登录酷狗音乐</div>
		<form method="post" onsubmit="false" action="LoginServlet">
			<div class="userinfo">
				<input type="text" class="ip_right" name="userName"
					placeholder="账号：邮箱/用户名/手机" />
				<label class="umes" style="color: red;">&nbsp&nbsp用户名格式有误！</label>
				<input type="password" class="ip_right" name="password"
					placeholder="密码：请输入密码" />
				<label class="pmes" style="color: red;">&nbsp&nbsp密码格式有误！</label>
			</div>
			<div style="margin-top: 20px;" class="rempwd">
				<input type="checkbox" class="pwdcheckbox" style="margin-top: 10px;" />
				<label> 记住密码</label>
			</div>
			<div>
				<input type="submit" class="submit" id="submit" />
			</div>
			<div class="login_foot_text">
				<a href="#">用户协议</a>
				<a href="#">隐私政策</a>
				<a href="#" style="float: right;">注册用户</a>
			</div>
		</form>
	</div>

		<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="js/Marquee.js"></script>
		<script type="text/javascript" src="js/data.js"></script>
		<script type="text/javascript" src="js/index.js"></script>
		<script type="text/javascript" src="js/gedan.js"></script>

	</body>
</html>

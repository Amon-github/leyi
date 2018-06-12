<%@page import="com.kugou.entify.Songs"%>
<%@ page language="java"
	import="java.util.*,com.kugou.entify.Parners,com.kugou.entify.FriLinks,com.kugou.entify.Songs"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<title>酷狗音乐</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="img/timg.png">
<link rel="stylesheet" href="css/index.css" />
<link rel="stylesheet" href="font/css/font-awesome.min.css" />
</head>

<body onselectstart="return false">
	<!--刚加载界面的内容-->
	<div class="con">
		<!--logo&头部 和导航条-->
		<%@include file="headPage.jsp" %>

		<!--banner-->
		<div class="box" style="width:1320px;overflow: hidden;">
			<div class="banner"
				style="width:1920px;height: 446px;margin-left:-250px;">
				<ul>
					<li>
						<img src="img/banner1.jpg" />
					</li>
					<li>
						<img src="img/banner2.jpg" />
					</li>
					<li>
						<img src="img/banner3.jpg" />
					</li>
					<li>
						<img src="img/banner4.jpg" />
					</li>
				</ul>
			</div>
			<div id="goR"></div>
			<div id="goL"></div>
			<div id="nav">
				<ul id="marqueeNav"></ul>
			</div>
		</div>


		<!--内容-->
		<div class="content">
			<div class="part1">
				<!--精选歌单&热门榜单-->
				<div class="part1_left">
					<div class="text_jxgd">
						<span class="text_left">
							<a>精选</a>
							歌单
						</span>
						<span class="text_right">
							<a href="#">更多</a>
						</span>
					</div>
					<div class="con_jxgd">
						<div class="jxgd_pic_left filtershow">
							<div class="text_shedow">
								<span>一场雨，一滴泪，一段故事，一句诗</span>
							</div>
							<div class="filter"></div>
						</div>

						<div class="jxgd_pic_right">
							<img src="img/jxgd02.jpg" style="margin:0 8px 8px 0;" />
							<img src="img/jxgd03.jpg" />
							<div class="clear"></div>
							<img src="img/jxgd04.jpg" style="margin:0 8px 8px 0;" />
							<img src="img/jxgd05.jpg" />
						</div>
					</div>
				</div>
				<div class="part1_right">
					<div class="text_rmbd">
						<span class="text_left">
							<a>热门</a>
							榜单
						</span>
						<span class="text_right">
							<a href="#">更多</a>
						</span>
					</div>
					<div class="con_rmbd">
						<!--热门榜单，待完工-->
						<div class="con_rmbd filtershow">
							<div class="con_rmbd_pic rmbd_pic1"></div>
							<div class="con_rmbd1_text">酷狗飙升榜</div>
							<div class="arr"></div>
							<div class="filter"></div>
						</div>
						<div class="con_rmbd filtershow">
							<div class="con_rmbd_pic rmbd_pic2"></div>
							<div class="con_rmbd1_text">Top500</div>
							<div class="arr"></div>
							<div class="filter"></div>
						</div>
						<div class="con_rmbd filtershow">
							<div class="con_rmbd_pic rmbd_pic3"></div>
							<div class="con_rmbd1_text">网络红歌榜</div>
							<div class="arr"></div>
							<div class="filter"></div>
						</div>

					</div>
				</div>
			</div>
			<div class="clear"></div>
			

			<div class="part2" style="margin-top:20px;">
				<!--热门电台-->
					<div class="song_picker">
					<div class="text_jxgd">
						<div style="border-bottom: 1px solid darkgray;padding:0 0 5px 0 ">
							<span class="text_left">
								<a>新歌</a>
								首发
							</span>
							<span class="text_follow">
								<ul class="ul_for_border ">
									<li class="getli" onmouseover="tag(this)">华语</li>
									<li onmouseover="tag(this)">欧美</li>
									<li onmouseover="tag(this)">韩国</li>
									<li onmouseover="tag(this)">日本</li>
								</ul>
							</span>
						</div>
						<div class="itemContent">
							<div class="tabC">
								<ul class="change activity">

									<%
										Object obj1 = request.getAttribute("song_hy");
										if (obj1 != null) {
											List<Songs> list = (ArrayList<Songs>) obj1;
											for (Songs s : list) {
									%>
									<li>
										<a href="<%=s.getSongurl()%>">
											<span class="songName"><%=s.getSongName()%></span>
											<%--  <span class="songTips"><%=s.getSongTips()%></span> --%>
											<span class="songTime"><%=s.getSongTime()%></span>
										</a>
									</li>
									<%
										}
										}
									%>

								</ul>
								<ul class="change">

									<%
										Object obj2 = request.getAttribute("song_om");
										if (obj2 != null) {
											List<Songs> list = (ArrayList<Songs>) obj2;
											for (Songs s : list) {
									%>
									<li>
										<a href="<%=s.getSongurl()%>">
											<span class="songName"><%=s.getSongName()%></span>
											<%--  <span class="songTips"><%=s.getSongTips()%></span> --%>
											<span class="songTime"><%=s.getSongTime()%></span>
										</a>
									</li>
									<%
										}
										}
									%>

								</ul>
								<ul class="change">

									<%
										Object obj3 = request.getAttribute("song_hg");
										if (obj3 != null) {
											List<Songs> list = (ArrayList<Songs>) obj3;
											for (Songs s : list) {
									%>
									<li>
										<a href="<%=s.getSongurl()%>">
											<span class="songName"><%=s.getSongName()%></span>
											<%--  <span class="songTips"><%=s.getSongTips()%></span> --%>
											<span class="songTime"><%=s.getSongTime()%></span>
										</a>
									</li>
									<%
										}
										}
									%>

								</ul>
								<ul class="change">

									<%
										Object obj4 = request.getAttribute("song_rb");
										if (obj4 != null) {
											List<Songs> list = (ArrayList<Songs>) obj4;
											for (Songs s : list) {
									%>
									<li>
										<a href="<%=s.getSongurl()%>">
											<span class="songName"><%=s.getSongName()%></span>
											<%--  <span class="songTips"><%=s.getSongTips()%></span> --%>
											<span class="songTime"><%=s.getSongTime()%></span>
										</a>
									</li>
									<%
										}
										}
									%>

								</ul>
							</div>
						</div>
					</div>
					<div class="xgsf_pages" style="margin-top:290px">
						<a class="prev" onmousedown="pre(this)"></a>
						<div class="page">
							<span class="currentPage">1</span>
							/
							<span class="allPage"><%=request.getAttribute("pagesize")%></span>
						</div>
						<a class="next" onmousedown="next(this)"></a>
					</div>

				</div>
				<div class="part2_right" style="width:322px;float:right;margin:10px 0">
					<div class="text_rmbd" style="width:322px;">
						<span class="text_left">
							<a>推荐</a>
							MV
						</span>
						<span class="text_right">
							<a href="#">更多</a>
						</span>
					</div>
					<div style="width: 322px;height: 322px; background-image: url(img/MV.PNG);background-size: 100%;background-repeat: no-repeat;"></div>
				</div>
			</div>
			<div class="clear"></div>
			<div class="part3">
				<!--合作伙伴-->
				<div class="text_jxgd">
					<span class="text_left">
						<a>合作</a>
						伙伴
					</span>
					
				</div>
				<ul>
					<!--<li><img src="img/友情01.jpg"/></li>-->
					<%
						List<Parners> a = (ArrayList<Parners>) request
								.getAttribute("plist");
						for (Parners p : a) {
					%>
					<li>
						<img src="<%=p.getP_url()%>" />
					</li>
					<%
						}
					%>
				</ul>

			</div>

			<div class="part4">
				<!--友情链接-->
				<div class="text_jxgd">
					<span class="text_left">
						<a>友情</a>
						链接
					</span>
					<span class="text_right">
						<a href="#">更多</a>
					</span>
				</div>
				<ul>
					<!--<li><a href="#">爱美网</a></li>-->
					<%
						List<FriLinks> b = (ArrayList<FriLinks>) request
								.getAttribute("flist");
						for (FriLinks f : b) {
					%>
					<li>
						<a href="<%=f.getUrl()%>">
							<%=f.getfCon()%>
						</a>
					</li>
					<%
						}
					%>
				</ul>
			</div>
		</div>

		<!--尾部-->
		<%@include file="footPage.jsp" %>

	</div>


	<!--下面是弹窗控件-->

	<!--回到顶部-->
	<a id="goToTop" href="javascript:scroll(0,0)"></a>

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

	<!--JS+JQ 外链文件-->
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="js/Marquee.js"></script>
	<script type="text/javascript" src="js/data.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
</body>


</html>

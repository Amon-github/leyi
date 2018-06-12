<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
		<!--logo&头部-->
		<div class="header">
			<div class="logo" onClick="location.href='ListAllServlet'"></div>
			<input class="head_search" placeholder="  最新歌曲" />
			<ul class="head_link">
				<li>
					<a href="kefu.html">客服中心</a>
				</li>
				<li>
					<a href="#">招贤纳士</a>
				</li>
				<li>
					<a href="UserPage/huiyuan.jsp">会员中心</a>
				</li>
			</ul>

			<div class="head_btn">
				<div class="user_menu">
					<%
						Object objUer = session.getAttribute("user_name");
						if (objUer == null) { //说明没有登录
					%>
					<input type="button" id="logon_btn" value="登录" />
					<input type="button" id="login_btn" value="注册"
						onClick="location.href='register.jsp'" />
					<%
						} else { //说明已经登录
					%>
					<div class="nav_right" id="usesr_btn"
						style="padding:28px 0 0 10px;color:black;">
						<a><%=session.getAttribute("user_name")%></a>
						<div id="user_menu">
							<ul>
								<li>
									<a href="userCenter.jsp">个人账号</a>
								</li>
								<li>
									<a href="DestorySessionServlet">退出登录</a>
								</li>
							</ul>
						</div>
					</div>
					<%
						}
					%>
				</div>
			</div>
		</div>
				<!--导航条-->
		<div class="nav">
			<div class="nav_content">
				<div class="nav_left">
					<ul>
						<li>
							<a href="ListAllServlet">首页</a>
						</li>
						<li>
							<a href="Bangshou.jsp">榜首</a>
						</li>
						<li>
							<a href="body.html">下载客户端</a>
						</li>
						<li id="more" style="width: 100px;">
							更多
							<div id="img"></div>
							<div id="hideul">
								<ul>
									<li>
										<a href="#">电台</a>
									</li>
									<li>
										<a href="#">MV&nbsp;</a>
									</li>
									<li>
										<a href="#">歌单</a>
									</li>
									<li>
										<a href="#">歌手</a>
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<div class="nav_right">
					<ul>
						<li>
							<a href="http://fanxing.kugou.com/?action=spreadIndex&id=3">
								<i class=" icon-star-empty"></i>
								音乐直播
							</a>
						</li>
						<li>
							<a href="http://live.kugou.com/">
								<i class=" icon-music"></i>
								酷狗LIVE
							</a>
						</li>
						<li>
							<a href="http://www.kugou.com/imusic/">
								<i class="  icon-headphones"></i>
								音乐人
							</a>
						</li>
						<li>
							<a href="http://games.kugou.com/?f=7">
								<i class=" icon-trophy"></i>
								游戏
							</a>
						</li>
						<li>
							<a
								href="http://www.kugou.com/shop/product/kugouproduct/index.html">
								<i class=" icon-shopping-cart"></i>
								商城
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
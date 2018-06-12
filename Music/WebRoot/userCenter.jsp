<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userCenter.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<title>酷狗音乐</title>
		<style>
			* {
				padding: 0;
				margin: 0;
				font-family: 黑体;
				color: gray;
			}
			
			a {
				text-decoration: none;
				color: deepskyblue;
			}
			
			input {
				height: 25px;
				border: 1px solid gray;
			}
			
			.tab {
				width: 600px;
				height: 500px;
				border: 1px solid grey;
				margin: 25px auto;
				box-shadow: 2px 2px 5px #888888;
				/*margin-top: 20px;*/
			}
			
			.tab ul {
				list-style-type: none;
				background-color: whitesmoke;
				height: 35px;
				line-height: 35px;
				padding-top: 5px;
				color: lightslategrey;
			}
			
			.tab ul li {
				float: left;
				/*border: 1px solid royalblue;*/
				height: 26px;
				line-height: 26px;
				font-size: 14px;
				padding: 0px 5px;
				cursor: pointer;
			}
			
			.tab ul li:first-child {
				margin-left: 20px;
			}
			
			.tab ul li.active {
				color: black;
				border-bottom: 2px solid deepskyblue;
			}
			
			.clearfix:after {
				/* 在clearfix的类的最后的孩子节点中 ,创建一个空的块级 标签: div*/
				display: block;
				content: "";
				clear: both;
			}
			
			.user_pic {
				border: 4px solid white;
				width: 50px;
				height: 50px;
				float: left;
				background-image: url(img/person.jpg);
				background-size: 100%;
				box-shadow: 2px 2px 5px #888888;
				background-color: lightblue;
				border-radius: 27px;
			}
			
			.user_info {
				float: left;
				font-size: 14px;
				margin-top: 10px;
				margin-left: 10px;
			}
			
			.con1 {
				width: 90%;
				height: 70px;
				margin: 10px auto;
				border-bottom: 1px solid gray;
			}
			
			.info {
				margin-top: 30px;
				border-bottom: 1px dashed gray;
			}
			
			.info_div {
				line-height: 35px;
				height: 40px;
			}
			
			.user_footer {
				width: 200px;
				margin: 20px auto;
			}
			
			.ness {
				color: darkred;
			}
			
			.all_width {
				width: 110px;
				text-align: right;
				float: left;
				margin-right: 5px;
			}
			
			.submit {
				width: 100px;
				height: 25px;
				background: gray;
				border: none;
				color: white;
			}
			.con2 ul li{
				margin: 10px 0;
				/*float: left;*/
			}
			.con2 ul li div{
				width: 80px;
				text-align: right;
				float: left;
			}


			
		</style>
		<link rel="shortcut icon" href="img/timg.png">
		<link rel="stylesheet" href="css/index.css" />
		<link rel="stylesheet" href="font/css/font-awesome.min.css" />
	</head>

	<body  onselectstart="return false">
		<% Object obj=session.getAttribute("user_name");
    	if(obj==null){
    		request.setAttribute("login_type", 1);
    		request.getRequestDispatcher("ListAllServlet").forward(request, response);
    	}
     %>
		<div class="con" style="height: 800px;">
			<!--logo&头部-->
			<div class="header">
				<div class="logo"  onClick="location.href='ListAllServlet'"></div>
				<input class="head_search" placeholder="  最新歌曲" />
				<ul class="head_link">
					<li>
						<a href="kefu.html">客服中心</a>
					</li>
					<li>
						<a href="#">招贤纳士</a>
					</li>
					<li>
						<a href="#">会员中心</a>
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
							<li id="more" style="width: 100px;">更多
								<div id="img"></div>

							</li>
						</ul>
					</div>
					<div class="nav_right">
						<ul>
							<li>
								<a href="http://fanxing.kugou.com/?action=spreadIndex&id=3"><i class=" icon-star-empty"></i> 音乐直播</a>
							</li>
							<li>
								<a href="http://live.kugou.com/"><i class=" icon-music"></i> 酷狗LIVE</a>
							</li>
							<li>
								<a href="http://www.kugou.com/imusic/"><i class="  icon-headphones"></i> 音乐人</a>
							</li>
							<li>
								<a href="http://games.kugou.com/?f=7"><i class=" icon-trophy"></i> 游戏</a>
							</li>
							<li>
								<a href="http://www.kugou.com/shop/product/kugouproduct/index.html"><i class=" icon-shopping-cart"></i> 商城</a>
							</li>
						</ul>
					</div>
				</div>
			</div>

		<!--内容--> 
			<div class="tab">
				<div class="user_title">
				<ul class="clearfix">
					<li class="active">编辑资料</li>
					<li>修改密码</li>
					<li>账号安全</li>
					<div style="float: right; color: black; font-size: 12px;margin-right: 10px;"><i class="icon-android"></i> 补全档案有奖励</div>
				</ul>
			</div>
				<!--基本资料-->
				<div class="contain con1">
					<form id="form_1" method="get" onsubmit="false">
						<!--用户头像-登录名-->
						<div class="user clearfix">
							<div class="user_pic"></div>
							<div class="user_info">登录名：184*****930<br />资料完整度：50%</div>
						</div>
						<!--表单-->
						<div class="info">
							<div class="info_div">
								<div class="all_width "><span class="ness">*</span> <span>昵称 ：</span> </div><input class="nick" type="text" placeholder=" 输入昵称" style="height: 20px;" /> <span class="nick_mes" style="color: red;">昵称不能为空！</span> </div>
							<div class="info_div">
								<div class="all_width "><span class="ness">*</span>性别： </div>
								<input type="radio" name="sex" value="man" checked="checked" />男&nbsp;&nbsp;
								<input type="radio" name="sex" value="woman" />女
							</div>
							<div class="info_div">
								<div class="all_width"><span class="ness">*</span>生日：</div>
								<input type="date" class="birthday" />
								<span class="bir_mes" style="color: red;">生日不能为空！</span>
								<span style="color: darkgray; font-size: 12px;margin-left: 10px;">填写可享受生日礼包哦~</span>
							</div>
							<div class="info_div">
								<div class="all_width">移动电话：</div>184*****930
								<span style="border: gainsboro;">（已验证）</span>
								<a href="#" style="font-size: 12px;">修改</a>
							</div>
							<div class="info_div">
								<div class="all_width">固定电话：</div>
								<input type="text" style="width: 50px;" /> - <input type="text" />
								<span style="color: darkgray; font-size: 12px;margin-left: 10px;">区号-电话号码</span>
							</div>
							<div class="info_div" style="height: 70px;">
								<div class="all_width"><span class="ness">*</span>所在地地址：</div>
								省:
								<select id="pro" onchange="loadCity()" style="width: 100px;">
									<option>请选择</option>
								</select>
								市:
								<select id="city" onchange="loadArea()" style="width: 100px;"></select>
								区:
								<select id="area" style="width: 100px;"></select>
								<input class="d_area" type="text" placeholder="详细地址" style="height: 20px;width: 300px;margin-left: 115px;" />
								<span class="area_mes" style="color: red;">地区不能为空！</span>
							</div>
							<div class="info_div">
								<div class="all_width">邮箱：</div>
								<input type="text" style="background: gainsboro;height: 20px;" />
								<button style="width: 100px; height: 25px;background: deepskyblue;; border: none;color: white;">验证邮箱</button>
							</div>
						</div>
						<div class="user_footer">
							<input type="submit" class="submit"></input>
							<span class="removeall" style="font-size: 12px; cursor: pointer;">重置</span>
						</div>
					</form>
				</div>
				<!--修改密码-->
				<div class="clear"></div>
				<div class="contain con2" style=" width: 300px;height:300px; margin: auto;">
					<div style="margin-top: 20px;"></div>
						<form action="UpdatePwdServlet" method="post" >
							<ul style="background: white;margin-top: 20px;">
								<div></div>
								<li>
									<div>* 原密码:</div>
									<input type="password" class="title" name="fpwd" />
								</li>
								<li>
									<div>* 新密码:</div>
									<input type="password" class="title" name="pwd" />
								</li>
								<li>
									<div>* 确认密码:</div>
									<input type="password" class="title" name="checkPwd" />
								</li>
								<li>
									<input type="submit" style="margin-left: 100px; font-size: 23px;width: 120px;margin: 20px auto;text-align: center;background: #00BFFF; color: white;outline: none;border-radius: 2px;"></input>								
								</li>
						</ul>
						</form>
				</div>
				<!--尺码信息-->
				<div class="contain">
					内容
				</div>

			</div>

			<div class="clear"></div>
			<!--尾部-->
			<%@include file="footPage.jsp" %>
		</div>
		<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="js/china_area2.js"></script>
				<script type="text/javascript" src="js/register.js" ></script>
		<script>
			$(function() {
				//切换卡
				$('.contain').hide();
				$('.contain').eq(0).show();
				$('.user_title ul li').click(function() {
					$(this).addClass('active').siblings().removeClass('active');
					var index = $(this).index();
					$('.contain').hide().eq(index).show();
				})

				//三级联调用方法
				loadProvince();
				loadCity();
				loadArea();

				//				表单验证
				$(".nick_mes").hide();
				$(".bir_mes").hide();
				$(".area_mes").hide();
				var nick_boo = false;
				var bri_boo = false;
				var area_boo = false;

				//昵称校验
				$(".nick").blur(function() {
					var nick = $(".nick").val();
					if(nick.length <= 0) {
						$(this).css("border", "1px solid red");
						$(this).next().show();
						nick_boo = false;
					} else {
						$(this).css("border", "1px solid green");
						$(this).next().hide();
						nick_boo = true;
					}
					checkall();
				})

				//生日校验
				$(".birthday").blur(function() {
					var birthday = $(".birthday").val();
					if(birthday.length <= 0) {
						$(this).css("border", "1px solid red");
						$(this).next().show();
						bri_boo = false;
					} else {
						$(this).css("border", "1px solid green");
						$(this).next().hide();
						bri_boo = true;
					}
					checkall();
				})

				//地区检验
				$(".d_area").blur(function() {
					var area = document.getElementById("area").value;
					var darea = document.getElementsByClassName("d_area")[0].value;
					if(area.length <= 0 || darea.length <= 0) {
						$(this).css("border", "1px solid red");
						$(this).next().show();
						area_boo = false;
					} else {
						$(this).css("border", "1px solid green");
						$(this).next().hide();
						area_boo = true;
					}
					checkall();
				})

				//提交前检验
				$(".submit").css({
					"cursor": "not-allowed",
					"background": "gray"
				});
				$(".submit")[0].disabled = "disabled";

				function checkall() {
					if(nick_boo == true && bri_boo == true && area_boo == true) {
						$(".submit").css({
							"cursor": "default",
							"background": "green"
						});
						$(".submit")[0].removeAttribute("disabled");
					} else {
						$(".submit").css({
							"cursor": "not-allowed",
							"background": "gray"
						});
						$(".submit")[0].disabled = "disabled";
					}
				}

				//				重置
				$(".removeall").click(function() {
					var inputall = document.getElementsByTagName("input");
					for(var s in inputall) {
						$(inputall[s]).val("");
					}
				})

			})

			//		 	地区三级联动
			var proSele = document.getElementById("pro");
			var citySelect = document.getElementById("city");
			var areaSelect = document.getElementById("area");

			// 加载全国的所有的省province
			function loadProvince() {
				for(var i = 0; i < provinceJson.length; i++) {
					var opt = document.createElement("option");
					opt.innerHTML = provinceJson[i].province;
					opt.value = provinceJson[i].id;
					proSele.appendChild(opt);
				}
			}
			// 加载对应的市
			function loadCity() {
				var proValue = proSele.value;
				//先将原来的值清空
				citySelect.options.length = 0;
				for(var j = 0; j < cityJson.length; j++) {
					if(cityJson[j].parent == proValue) {
						var opt = document.createElement("option");
						opt.innerHTML = cityJson[j].city;
						opt.value = cityJson[j].id;
						//追加关系
						citySelect.appendChild(opt);

					}
				}
				loadArea();
			}
			// 加载对应的地区
			function loadArea() {
				var cityValue = citySelect.value;
				//先将原来的值清空
				areaSelect.options.length = 0;
				for(var j = 0; j < countyJson.length; j++) {
					if(countyJson[j].parent == cityValue) {
						var opt = document.createElement("option");
						opt.innerHTML = countyJson[j].county;
						//追加关系
						areaSelect.appendChild(opt);
					}
				}
			}
		</script>
	</body>

</html>

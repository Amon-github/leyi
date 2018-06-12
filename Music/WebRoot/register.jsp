<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>酷狗-注册账号</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="font/css/font-awesome.css" />
		<link rel="stylesheet" href="hwj_css/register.css" />
	</head>
	<body>
		<div>
			<img src="hwj_img/title.png" />
		</div>
		    <div class="box">
		    <img src="hwj_img/register.png" />
			<form action="RegistServlet" method="post" >
				<ul>
					<li>
						<label>* 手机号码:</label>
						<input type="text" class="title user" name="user"id="user"   />
						<span class="abc"  id="umsg" ><i></i><span class="tishi">请输入手机号码</span></span>  
						 <span class="phone_mess" style="color:red;display:none;">该号码已被注册！</span>
						
					     
					</li>
					<li>
						<label>* 短信验证:</label>
						<input type="text" class="title1" name="code" />
						<button type="button" class="btn"  disabled="disabled">短信验证</button>
					    <span class="abc" id="code"><i>&nbsp;</i></span>    
					</li>
					<li>
						<label>* 密码:</label>
						<input type="password"  class="title"  name="pwd" />
					    <span class="abc" id="pmsg"><i></i><span class="tishi">密码由6-16位数字和字母组成</span></span>    
					</li>
					<li>
						<label>* 确认密码:</label>
						<input type="password" class="title"  name="checkPwd" />
					    <span class="abc" id="cmsg"><i>&nbsp;</i><span class="tishi">请再次输入密码</span></span>    
					</li>
					<li>
						<label>* 性别:</label>
						<div class="title2">
							<input type="radio" name="sex" value="man" checked="checked" />男&nbsp;&nbsp;
						    <input type="radio" name="sex" value="woman"/>女 
						</div>
					</li>
					<li>
						<input type="checkbox" name="check" value="check" class="title3" />
						<span class="con">我已经认真阅读并同意</span>
						<span class="con_mes" style="color: red; margin-left: 150px;">请同意条款</span>
					</li>
					<li>
						<label></label>
						<input type="submit" class="title4" value="注册" id="doSubmit" name="phone"  disabled="disabled" />
					    <span></span>    
					</li>
				</ul>
			</form>
		</div>
		<!-- 弹窗 -->
		<% Object obj=request.getAttribute("regist_type");
			String dis_type="none";
			if(obj!=null){
				dis_type="block";
			}
		 %>
		<div class="mini_regist" style="display:<%=dis_type%>;" >
			<div style=" width:1350px;
        height:900px;
        position:absolute;
        top:0;
        left:0;
        z-index:1;
        background-color:#000;opacity:0.5;"></div>
			<div style="z-index:2;background: white; border: 1px solid gray;width: 200px; height: 150px; position: fixed; top: 40%;left: 45%;padding-left: 20px;">
				<div style="font-size: 23px;width: 120px;margin: 20px auto;">注册成功！</div>
				<div>
					<button onclick="window.location='ListAllServlet'" style="width: 180px;height: 40px;background: #2299ed;border-radius: 5px;margin-top: 20px;border: none;color: white;font-size: 14px;font-weight: bold;">确 定</button>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery-1.8.3.js" ></script>
		<script type="text/javascript" src="js/register.js" ></script>
	</body>

</html>

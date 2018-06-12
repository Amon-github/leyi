
$(function() {
	/***
	 * 更多：隐藏和显示
	 */
	$("#hideul").hide();
	$("#more").hover(function() {
		$("#hideul").show();
		$("#img").css("background-position","0px -10px")
	}, function() {
		$("#hideul").hide();
		$("#img").css("background-position","0px 0px")
	})
	
	/**
	 * 更多：里面的hover事件
	 */
	$("#hideul li").hover(function(){
		$(this).children().css("color","white");
	},function(){
		$(this).children().css("color","#777777");
	})
	
	/***
	 * 用户菜单：隐藏和显示
	 */
	$("#user_menu").hide();
	$("#usesr_btn").hover(function() {
		$("#user_menu").show();
	}, function() {
		$("#user_menu").hide();
	})
/**
	 * 用户菜单：里面的hover事件
	 */
	$("#user_menu li").hover(function(){
		$(this).children().css("color","white");
	},function(){
		$(this).children().css("color","#777777");
	})
	
	
	
	/**
	 * banner
	 */
	$(".banner").Marquee({
				distance: 1920,
				time: 4,
				direction: 'left',
				btnGo: {
					right: '#goL',
					left: '#goR'
				},
				navId:'#marqueeNav'
			})
	
	$("#goL").hide();
	$("#goR").hide();
	$(".box").mouseover(function(){
		$("#goL").show();
		$("#goR").show();
	}).mouseout(function(){ 
		$("#goL").hide();
		$("#goR").hide();
	})
	
	/*遮罩层*/
	$(".filter").hide();
	$(".filtershow").mouseover(function(){
		$(this).css("position","relative");
		$(this).children(".filter").show();
	})
	$(".filter").mouseout(function(){
//		$(this).parent(".jxgd_pic_left").css("position","absolute");
		$(this).hide();
	})
	
	
	/*加载合作伙伴
	var $ul=$(".part3 ul");
	for (var i=0;i<parners.length;i++) {
		var $li=$("<li><img src="+parners[i].url+"/></li>");
		$ul.append($li);
	}*/
	
	/*加载友情链接
	var $ul=$(".part4 ul");
	for (var i=0;i<friendlink.length;i++) {
		var $li=$("<li><a href="+friendlink[i].url+">"+friendlink[i].context+"</a></li>");
		$ul.append($li);
	}*/

	/*回到顶部*/
	$('#goToTop').hide();        //隐藏按钮
 	$(window).scroll(function(){
            //快到底部时，将控件往上挪
            if($(this).scrollTop() >1000){
                $('#goToTop').css("bottom","50%");
            }else{
                 $('#goToTop').css("bottom","20%");
            }
            //滚动超过400时，控件出现
            if($(this).scrollTop() > 400){
                $('#goToTop').fadeIn(800);
            }else{
                $('#goToTop').fadeOut(300);
            }
        });
        
        
    /*登录弹窗*/
   $("#logon_btn").click(function(){
   	$(".cover").css("display","block");
   	$("#mini_login").css("display","block");
   })
   /*弹窗的取消按钮*/
   $(".cancle").click(function(){
   		$(".cover").css("display","none");
   		$("#mini_login").css("display","none");
   })
   
   /*点击‘记住密码’文字时，复选框的对应动作*/
   var index=false;
   $(".rempwd").click(function(){
   	if (index==false) {
   		$(this).children(".pwdcheckbox").prop("checked",true);
   		 index=true;
   	}else{
   		$(this).children(".pwdcheckbox").prop("checked",false);
   		 index=false;
   	}
   })
   
   
   
   /*登录判断*/
   var boolname = false;
	var boolpwd = false;
	var umes = $(".umes"); //用户名提示信息
	var pmes = $(".pmes"); //密码提示信息
	umes.hide();
	pmes.hide();

	//禁止提交按钮
	$('.submit').css({
		"cursor": "not-allowed",
		"background": "gray"
	});
	document.getElementsByClassName("submit")[0].disabled = "disabled";


	/**
	 * 输入框获取焦点和取消焦点处理
	 */
	$(".ip_right").focus(function() {
		this.style.border = "1px solid gray";

	}).blur(function() {
		//检查用户名和密码的格式
		var thisVal = this.value;
		if(thisVal.length >= 4 && thisVal.length <= 16) {
			this.style.border = "2px solid green";
			if("userName" == this.name) {
				umes.hide();
				boolname = true;
			} else if("password" == this.name) {
				pmes.hide();
				boolpwd = true;
			}
		} else {
			this.style.border = "2px solid red";
			if("userName" == this.name) {
				umes.show();
				boolname = false;
			} else if("password" == this.name) {
				pmes.show();
				boolpwd = false;
			}
		}
		
		if(boolname == true&&boolpwd == true){
				$('.submit').css({
					"cursor": "pointer",
					"background": "green"
				});
				document.getElementsByClassName("submit")[0].removeAttribute("disabled");
			}
	});
	
	
	
	/*音乐播放器*/
	var play=false;
	$(".music_play").click(function(){
		if (play==true) {
			$(this).css({"background-image":"url(img/stopmusic.png)"});
			document.getElementById('myplayer').pause();
			play=false;
		} else{
			$(this).css({	"background-image":"url(img/playmusic.png)"	});
			document.getElementById('myplayer').play();
			play=true;
		}
	})
	
	$(".scrolltext").hide();	//滚动歌名
	$(".music_play").hover(function(){
		$(this).css("opacity","0.8");
		$(".scrolltext").fadeIn(500);
	},function(){
		$(this).css("opacity","0.2");
		$(".scrolltext").fadeOut(500);
	})
	
	
	
	var li = $('.change li');

    li.hover(function() {
//      $(this).css("background","#473373");
      $(this).children().css("color","#27a1f6");
    }, function() {
//      $(this).css("background","#fff");
      $(this).children().css("color","#777777");
    });

	

})



	/*后面添加的控件*/
   				
				//浏览器加载，初始化翻页控件样式
				var xgsf_prev=document.getElementsByClassName("prev")[0];	
				var xgsf_next=document.getElementsByClassName("next")[0];
				var xgsf_currentPage=document.getElementsByClassName("currentPage")[0];
				var currPagHtml=xgsf_currentPage.innerHTML;
				var xgsf_allPage=document.getElementsByClassName("allPage")[0];
				var tabcm=document.getElementsByClassName("tabC")[0];
				tabcm.style.marginTop="0px";
				xgsf_prev.style.backgroundImage="url(img/armL1.png)";
				xgsf_prev.style.backgroundSize="90%";
				xgsf_currentPage.innerHTML="1"; 
				xgsf_prev.disabled=true;  
				xgsf_next.style.backgroundImage="url(img/armR1.png)";
				
			
			//切换卡事件
			function tag(obj) {
				var xgsf_prev=document.getElementsByClassName("prev")[0];	
				var xgsf_next=document.getElementsByClassName("next")[0];
				var xgsf_currentPage=document.getElementsByClassName("currentPage")[0];
				var currPagHtml=xgsf_currentPage.innerHTML;
				var xgsf_allPage=document.getElementsByClassName("allPage")[0];
				var tabcm=document.getElementsByClassName("tabC")[0];
				var list_li = document.getElementsByClassName("ul_for_border")[0].getElementsByTagName("li");
				var list_div = document.getElementsByClassName("change");

				for(var i = 0; i < list_li.length; i++) {
					list_li[i].className = "";
					list_div[i].className = "change";
					list_li[i].index = i;
					tabcm.style.marginTop="0px";
					xgsf_prev.style.backgroundSize="90%";
					xgsf_currentPage.innerHTML="1";
					xgsf_prev.disabled=true; 
					xgsf_next.style.backgroundSize="100%";
				}
				var div_index = obj.index;
				obj.className = "getli";
				list_div[div_index].className = "change activity";
				
				
			}
			

			//新歌首发上一页事件
			function pre(obj){
				var xgsf_prev=document.getElementsByClassName("prev")[0];	
				var xgsf_next=document.getElementsByClassName("next")[0];
				var xgsf_currentPage=document.getElementsByClassName("currentPage")[0];
				var currPagHtml=xgsf_currentPage.innerHTML;
				var xgsf_allPage=document.getElementsByClassName("allPage")[0];
				var tabcm=document.getElementsByClassName("tabC")[0];
				
				if(currPagHtml=="1"){
					
				}else if(currPagHtml=="2"){ 
					tabcm.style.marginTop="0px";
					xgsf_prev.style.backgroundSize="90%";					
					xgsf_currentPage.innerHTML="1";
					xgsf_prev.disabled=true; 
				}else if(currPagHtml=="3"){
					tabcm.style.marginTop="-280px";
					xgsf_next.removeAttribute("disabled");
					xgsf_next.style.backgroundSize="100%";					
					xgsf_currentPage.innerHTML="2";
				}
			}
			//新歌首发下一页事件
			function next(obj){
				var xgsf_prev=document.getElementsByClassName("prev")[0];	
				var xgsf_next=document.getElementsByClassName("next")[0];
				var xgsf_currentPage=document.getElementsByClassName("currentPage")[0];
				var currPagHtml=xgsf_currentPage.innerHTML;
				var xgsf_allPage=document.getElementsByClassName("allPage")[0];
				var tabcm=document.getElementsByClassName("tabC")[0];
				
				if(currPagHtml=="1"){
					tabcm.style.marginTop="-280px";
					xgsf_prev.removeAttribute("disabled");
					xgsf_prev.style.backgroundSize="100%";
					xgsf_currentPage.innerHTML="2";
				}else if(currPagHtml=="2"){
					tabcm.style.marginTop="-560px";
					xgsf_next.style.backgroundSize="90%";
					xgsf_currentPage.innerHTML="3";
					xgsf_next.disabled=true;
				}else if(currPagHtml=="3"){

				}
			}
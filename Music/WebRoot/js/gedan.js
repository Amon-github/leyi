var gedan=[{"content":"张翰 -如果没有人【温暖的弦电视剧推广曲】","times":"4:20"},
		   {"content":"欢子 -一切都会过去的","times":"4:20"},
		   {"content":"张翰 -如果没有人【温暖的弦电视剧推广曲】","times":"4:20"},
		   {"content":"欢子 -一切都会过去的","times":"4:20"},
		   {"content":"张翰 -如果没有人【温暖的弦电视剧推广曲】","times":"4:20"},
		   {"content":"欢子 -一切都会过去的","times":"4:20"},
		   {"content":"张翰 -如果没有人【温暖的弦电视剧推广曲】","times":"4:20"},
		   {"content":"欢子 -一切都会过去的","times":"4:20"},
		   {"content":"张翰 -如果没有人【温暖的弦电视剧推广曲】","times":"4:20"},
		   {"content":"欢子 -一切都会过去的","times":"4:20"},
		   {"content":"张翰 -如果没有人【温暖的弦电视剧推广曲】","times":"4:20"},
		   {"content":"欢子 -一切都会过去的","times":"4:20"},
		   {"content":"张翰 -如果没有人【温暖的弦电视剧推广曲】","times":"4:20"},
		   {"content":"欢子 -一切都会过去的","times":"4:20"},
		   {"content":"张翰 -如果没有人【温暖的弦电视剧推广曲】","times":"4:20"}]
			$(function(){
				//点击左边子选项
				$(".chir").click(function(){
				$(".chir").siblings().css("background","#FFFFFF");
				$(this).css("background","dodgerblue");
				$(".chir").siblings().children("a").css("color","black");
				$(this).children("a").css("color","#FFFFFF");
				 var a=$(this).children("a").text();
				$(".biaoti").text(a)
			})
			//改变标头的箭头
			$(".biaotu").click(function(){
				$(this).next().slideToggle();
				var a=$(this).children("#ged").attr("class");
				if (a=="icon-angle-down") {
					$(this).children("#ged").attr("class","icon-angle-up");
				}else{
					$(this).children("#ged").attr("class","icon-angle-down");
				}
			})
			//读取JS文件歌曲名称信息
			 var $ul=$("#gedan");
			 for (var i=0;i<gedan.length;i++) {
			 	var $li=$("<li class='lity'><input class='checkbox' type='checkbox'/><img src='img/20180504194301264650.png' /><span class='getname'>"+gedan[i].content+"</span><span class='times'>"+gedan[i].times+"</span><span class='geticon'><span class='icon-play'></span><span class='icon-download-alt'></span><span class='icon-external-link'></span></span></li>")
			 	$ul.append($li);
			 }
			 
			 //全选按钮默认为全选
			$(".t").attr("checked","checked")
			//判断全选按钮
			if ($(".t").is(":checked")) {
			$("#gedan").children().children("input").attr("checked","checked");
			}
			//点击设置全选按钮
			$(".t").click(function(){
			if ($(".t").is(":checked")) {
				$("#gedan").children().children("input").attr("checked","checked");
			}else{
				$("#gedan").children().children("input").removeAttr("checked");
			}
			})
			//子checkebox
				$("#gedan").children().children("input").click(function(){
					if($(this).is(':checked')) {
						}else{
							$(".t").removeAttr("checked")
						}
				})
			//右边播放下载分享
			$(".geticon").children().hide();
			$(".geticon").mouseover(function(){
				$(this).children().show();
			})
			$(".geticon").mouseout(function(){
				$(this).children().hide();
			})
			})

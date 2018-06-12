$(".tishi").hide();
var isPhone=false;
var isNum=false;
var isPwd=false;
var isApwd=false;

$(".title").mouseover(function(){
	$(".title").css("background-color","#f3f3f3");
	$(".title1").css("background-color","#f3f3f3");
	$(this).css("background-color","lightskyblue");
});
$(".title1").mouseover(function(){
	$(".title").css("background-color","#f3f3f3");
	$(this).css("background-color","lightskyblue");
});
$("input").focus(function(){
	$(this).css("background-color","white").css("border-color","#28A9F3");
	$(".tishi").hide();
	$(this).next().children(".tishi").show();
});
/**
 * 手机号码校验
 */

$("input:eq(0)").blur(function(){
	var str = $(this).val();
	$(this).next().children(".tishi").html("");
	var reg = /^1[34578]\d{9}$/; 
	if (reg.test(str)) {
		$(this).css("border","1px solid green");
		$("i:eq(0)").prop("class","icon-ok-sign");
		isPhone=true;
		$(this).parent().next().children(".btn")[0].removeAttribute("disabled");
		$(this).parent().next().children(".btn").css("background","blueviolet");
	} else {
		$(this).css("border","1px solid red");
		$("i:eq(0)").attr("class","icon-exclamation-sign");
		
	}
	checkAll();
});

$(".btn").click(function(){
	alert("666");
})

$("input:eq(1)").blur(function(){
	var str = $(this).val();
	$(this).next().children(".tishi").html("");
	if (str == "666") {
		$(this).css("border","1px solid green");
		$("i:eq(1)").prop("class","icon-ok-sign");
		isNum=true;
	} else {
		$(this).css("border","1px solid red");
		$("i:eq(1)").attr("class","icon-exclamation-sign");
	}
	checkAll();
});

$("input:eq(2)").blur(function(){
	var str = $(this).val();
	$(this).next().children(".tishi").html("");
	var reg = /^(?![^a-zA-Z]+$)(?!\D+$).{4,16}/;

	if (reg.test(str)) {
		$(this).css("border","1px solid green");
		$("i:eq(2)").prop("class","icon-ok-sign");
		isPwd=true;
	} else {
		$(this).css("border","1px solid red");
		$("i:eq(2)").prop("class","icon-exclamation-sign");
	}
	checkAll();
});

$("input:eq(3)").blur(function(){
	var str = $(this).val();
	$(this).next().children(".tishi").html("");
	var pwd = $("input:eq(2)").val();
	
	if (str==pwd) {
		$(this).css("border","1px solid green");
		$("i:eq(3)").prop("class","icon-ok-sign");
		isApwd=true;
	} else {
		$(this).css("border","1px solid red");
		$("i:eq(3)").prop("class","icon-exclamation-sign");
	}
	checkAll();
});

	var title3=document.getElementsByClassName("title3")[0];
	var istitle3=false;
$(title3).click(function(){
	if (title3.checked) {
		 istitle3=true;
	} else{
		 istitle3=false;
	}
	checkAll();
});


$(".con_mes").hide();
function checkAll(){
	var sub = document.getElementById("doSubmit");

	if (isPhone && isPwd && isApwd && isNum&&istitle3 ) {
				sub.removeAttribute("disabled")
				sub.style.cursor="pointer";
				sub.style.backgroundColor="green";

	} else {
		sub.disabled="disabled";
		sub.style.cursor="not-allowed";
		sub.style.backgroundColor="gray";
	}
}


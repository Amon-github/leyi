/*ÒôÀÖ²¥·ÅÆ÷*/
			var play = false;
			$(".music_play").css({"background-image": "url(img/stopmusic.png)"});
			$("audio")[0].volume = 0.5;
			$(".music_play").click(function() {
				if(play == true) {
					$(this).css({
						"background-image": "url(img/stopmusic.png)"
					});
					document.getElementById('myplayer').pause();
					play = false;
				} else {
					$(this).css({
						"background-image": "url(img/playmusic.png)"
					});
					document.getElementById('myplayer').play();
					play = true;
				}
			})

			$(".scrolltext").hide(); //¹ö¶¯¸èÃû
			$(".music_play").hover(function() {
				$(this).css("opacity", "0.8");
				$(".scrolltext").fadeIn(500);
			}, function() {
				$(this).css("opacity", "0.2");
				$(".scrolltext").fadeOut(500);
			})
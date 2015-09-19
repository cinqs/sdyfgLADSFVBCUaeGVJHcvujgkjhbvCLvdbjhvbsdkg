/* nav collapse */
$(window).scroll(function() {
    if ($("#nav").offset().top > 50) {
        $("#nav").addClass("top-nav-collapse");
    } else {
        $("#nav").removeClass("top-nav-collapse");
    }
});

/* contact icon change */
function changeFb(url)
{
	var icon = document.getElementById("logo_fb");
	icon.src="img/icon-fb-hover.png";
	$('#logo_fb').css('transition', 'all 2s');
}

function changebackFb(url)
{
	var icon = document.getElementById("logo_fb");
	icon.src="img/icon-fb.png";
	$('#logo_fb').css('transition', 'all 2s');
}

function changeInst(url)
{
	var icon = document.getElementById("logo_inst");
	icon.src="img/icon-inst-hover.png";
}

function changebackInst(url)
{
	var icon = document.getElementById("logo_inst");
	icon.src="img/icon-inst.png";
}

/* navbar smooth scrolling */
$(document).ready(function($){
      $('#toPresentation').click(function(){$('html,body').animate({scrollTop:$('#presentation').offset().top}, 1000);}); 
      $('#nav1').click(function(){$('html,body').animate({scrollTop:$('#presentation').offset().top}, 1000);});
      $('#nav2').click(function(){$('html,body').animate({scrollTop:$('#la_carte').offset().top}, 1000);});
      $('#nav3').click(function(){$('html,body').animate({scrollTop:$('#reservation').offset().top}, 1000);});
      $('#nav4').click(function(){$('html,body').animate({scrollTop:$('#calery').offset().top}, 1000);});
      $('#nav5').click(function(){$('html,body').animate({scrollTop:$('#contact').offset().top}, 1000);});
});


/* cssmenu - La Carte */
( function( $ ) {
$( document ).ready(function() {
$('#cssmenu li.has-sub>a').on('click', function(){
		$(this).removeAttr('href');
		var element = $(this).parent('li');
		if (element.hasClass('open')) {
			element.removeClass('open');
			element.find('li').removeClass('open');
			element.find('ul').slideUp();
		}
		else {
			element.addClass('open');
			element.children('ul').slideDown();
			/*
			element.siblings('li').children('ul').slideUp();
			element.siblings('li').removeClass('open');
			element.siblings('li').find('li').removeClass('open');
			element.siblings('li').find('ul').slideUp();
			*/
		}
	});
});
} )( jQuery );


$(document).ready(function(){
	$('#navbar > ul > li > a').on('click',function(){
		$('#navbar').removeClass('in');
		$('#navbar').attr({
			"aria-expanded": "false",
		});
	})
});


/* 视频背景控制按钮 play pause muted */
var system = { 
            win: false, 
            mac: false, 
            xll: false, 
            ipad:false,
            iphone: false
        }; 
        //检测平台 
var p = navigator.platform; 
var player={};

system.win = p.indexOf("Win") == 0; 
system.mac = p.indexOf("Mac") == 0; 
system.ipad = navigator.userAgent.match(/iPad/i) == "ipad";
system.iphone = navigator.userAgent.match(/iPhone os/i) == "iphone";

player.video=document.getElementById('video');
player.playpausebutton=document.getElementById('play');
player.voicebutton=document.getElementById('voice');
player.voicebutton.classList.add('glyphicon-volume-up');
player.video.load();
player.video.play();
$(document).ready(function(){
	if(system.ipad || system.iphone){
		player.playpausebutton.classList.add('glyphicon-play');
	}
	else{
		player.playpausebutton.classList.add('glyphicon-pause');
	};
});

function playPause(){
	if(player.video.paused){
		player.video.play();
		player.playpausebutton.classList.add('glyphicon-pause');
		player.playpausebutton.classList.remove('glyphicon-play');
		
	}
	else{
		player.video.pause();
		player.playpausebutton.classList.add('glyphicon-play');
		player.playpausebutton.classList.remove('glyphicon-pause');
	}
}


function voiceonOff(){
	if(!player.video.muted){
		player.video.muted=true;
		player.voicebutton.classList.add('glyphicon-volume-off');
		player.voicebutton.classList.remove('glyphicon-volume-up');
		
		
	}
	else{
		player.video.muted=false;
		player.voicebutton.classList.add('glyphicon-volume-up');
		player.voicebutton.classList.remove('glyphicon-volume-off');
		
	}
}



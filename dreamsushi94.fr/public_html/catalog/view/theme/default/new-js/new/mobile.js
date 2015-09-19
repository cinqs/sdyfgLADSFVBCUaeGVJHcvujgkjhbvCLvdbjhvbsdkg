$(document).ready(function(){
	$("#cartIcon").click(function(){
		$("#fixedCart").toggle();
	});
	$(".carteRight").css({
		"padding-top":"0",
	});
	$("#mainNav").append($("#loginornot").html());
	$("#nousMobile").css({
		"padding-top":$("#nousContainer").height(),
	});

	$(".btn-cart").click(function(){
		$(this).animate({
			"padding-left":"15px",
			"padding-right":"15px",
		},function(){
			$(this).animate({
				"padding-left":"10px",
				"padding-right":"10px",
			})
		});
	});

	windowHeight = $(window).height();

	$(".total-list-box").css({
		'height':windowHeight * 0.6,
	});
});
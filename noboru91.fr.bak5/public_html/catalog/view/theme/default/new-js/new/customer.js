$(document).ready(function(){
	$("#home_sentence").css({
		top:$("#home_header").height()+20,
	});
	$(".carteLeft").css({
		"padding-top":$("#content_header").height()+20,
	});
	$(".carteRight").css({
		"padding-top":$("#content_header").height()+20,
	});
	$(".index-banner").css({
		"padding-top":$(".nav-bar .container").height()+20,
	});
	$(".delete_cart_menu").click(function(){
		$(this).parent().parent("tr").find("input[type='number']").val(0);
		$("#cart_form").submit();
	});
});

$(function (){
	//home
	$('.btn-cart').click(function(){
		addToCart($(this).parent('.product_links').find("input[name='product_id']").val(),$(this).parent('.product_links').find("input[name='quantity']").val(),$(this).attr("key_temp"));	
		
	})
});


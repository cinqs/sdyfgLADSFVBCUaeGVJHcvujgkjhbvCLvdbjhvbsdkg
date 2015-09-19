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
		"padding-top":$("#home_header").height(),
	});
	$(".delete_cart_menu").click(function(){
		$(this).parent().parent("tr").find("input[type='number']").val(0);
		$("#cart_form").submit();
	});

	$("#sub_menu_button").click(function(){
		$("#sub_menu_menu").toggle();
		$("#sub_menu_menu").css({
			"background-color":"white",
		});
	});
});

$(function (){
	//home
	$('.btn-cart').click(function(){
		addToCart($(this).parent('.product_links').find("input[name='product_id']").val(),$(this).parent('.product_links').find("input[name='quantity']").val(),$(this).attr("key_temp"));	
		
	})
	$(".update-cart").click(function(){
		updateToCart($(this).attr("id"),$(this).attr("value"));
	});
	$(".minusCart").click(function(){
		updateToCart($(this).attr("name"),parseInt($(this).attr("value"))-1);
	});
	$(".plusCart").click(function(){
		updateToCart($(this).attr("name"),parseInt($(this).attr("value"))+1);
	});
	$(".delete_cart_menu").click(function(){
		updateToCart($(this).attr("name"), 0)
	});
});


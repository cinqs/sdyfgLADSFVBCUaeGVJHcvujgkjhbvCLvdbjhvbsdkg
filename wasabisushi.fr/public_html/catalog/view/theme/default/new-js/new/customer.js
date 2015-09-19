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
	$('.btn-cart').click(function(){
		addToCart($(this).parent('.product_links').find("input[name='product_id']").val(),$(this).parent('.product_links').find("input[name='quantity']").val(),$(this).attr("key_temp"));
	})
	$(".update-cart").click(function(){
		updateToCart($(this).attr("id"),$(this).attr("value"));
	});/*
	$(".minusCart").click(function(){
		updateToCart($(this).attr("name"),parseInt($(this).attr("value"))-1);
		console.log("minusCart clicked");
	});
	$(".plusCart").click(function(){
		updateToCart($(this).attr("name"),parseInt($(this).attr("value"))+1);
		console.log("plusCart clicked");
	});
	$(".delete_cart_menu").click(function(){
		updateToCart($(this).attr("name"), 0);
		console.log("delete clicked");
	});*/
});

function minusCart(key,quantity){
	updateToCart(key,parseInt(quantity)-1);
	//console.log("activated"+key);
}

function plusCart(key,quantity){
	updateToCart(key,parseInt(quantity)+1);
}

function deleteCart(key){
	console.log("entered deleteCart in customer.js");
	updateToCart(key,0);
}
function changeTotal(status, json){
	$(".cartTotal").remove();
	if (status) {
		for (var i = 0; i < json.length; i++) {
			$(".total-list-box").append("<div class='row cartTotal'><div class='col-md-4 font_big'>"+json[i].title+"</div><div class='col-md-8 font_big'>"+json[i].text+"</div></div>");
		};
	};
	if (!status) {
		$(".total-list-box").append("<div class='row cartTotal'><div class='col-md-4 font_big'>TOTAL</div><div class='col-md-8 font_big'>0,00€</div></div>");
	};
}
function insertCart(json){
	console.log("entered insertCart");
	num_in_total = 0;
	money_in_total = 0;
	pro240 = 0;
	pro241 = 0;
	pro238 = 0;
	pro239 = 0;
	pro674 = 0;
	$(".toRemove").remove();
	for(i = 0; i < json.length; i++){
		//console.log(json[i].name);
		if (json[i].model != "additional") {
			$(".cart_class tbody").prepend("<tr class='toRemove'><td>"+json[i].name+"</td><td><i class='fa fa-times'></i> "+json[i].price+"</td><td><span class='minusCart' onclick='minusCart("+json[i].key+","+json[i].quantity+")' name='"+json[i].key+"' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span>"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart("+json[i].key+","+json[i].quantity+")' name='"+json[i].key+"' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span></td><td><div class='delete_cart_menu' onclick='deleteCart("+json[i].key+")' name='"+json[i].key+"'><i class='fa fa-trash-o'></i></div></td></tr>");
			num_in_total+=json[i].quantity;
			money_in_total+=parseFloat(json[i].total.replace(",","."));
		}else{

			if (json[i].key == 240) {
				pro240 = 1;
				console.log("24000000");
				//$("#bagu_id").html("<span class='minusCart' onclick='minusCart(240,"+json[i].quantity+")' name='240' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(240,"+json[i].quantity+")' name='240' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#bagu_id").html("<span onclick='updateToCart(240,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 238){
				pro238 = 1;
				console.log("23800000");
				//$("#sucre_id").html("<span class='minusCart' onclick='minusCart(238,"+json[i].quantity+")' name='238' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(238,"+json[i].quantity+")' name='238' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#sucre_id").html("<span onclick='updateToCart(238,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 239){
				pro239 = 1;
				console.log("23800000");
				//$("#sale_id").html("<span class='minusCart' onclick='minusCart(239,"+json[i].quantity+")' name='239' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(239,"+json[i].quantity+")' name='239' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#sale_id").html("<span onclick='updateToCart(239,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 241){
				pro241 = 1;
				console.log("24100000");
				//$("#gin_id").html("<span class='minusCart' onclick='minusCart(241,"+json[i].quantity+")' name='241' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(241,"+json[i].quantity+")' name='241' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#gin_id").html("<span onclick='updateToCart(241,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 674){
				pro674 = 1;
				console.log("67400000");
				//$("#was_id").html("<span class='minusCart' onclick='minusCart(674,"+json[i].quantity+")' name='674' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(674,"+json[i].quantity+")' name='674' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#was_id").html("<span onclick='updateToCart(674,0)'><i class='fa fa-check-square-o'></i></span>");
			}
		};
	}
	if (pro240 == 0) {
		//$("#bagu_id").html("<span class='minusCart' onclick='minusCart(240,0)' name='240' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(240,0)' name='240' value='0'><i class='fa fa-plus'></i></span>");
		$("#bagu_id").html("<span onclick='updateToCart(240,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro674 == 0) {
		//$("#was_id").html("<span class='minusCart' onclick='minusCart(674,0)' name='674' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(674,0)' name='674' value='0'><i class='fa fa-plus'></i></span>");
		$("#was_id").html("<span onclick='updateToCart(674,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro241 == 0) {
		//$("#gin_id").html("<span class='minusCart' onclick='minusCart(241,0)' name='241' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(241,0)' name='241' value='0'><i class='fa fa-plus'></i></span>");
		$("#gin_id").html("<span onclick='updateToCart(241,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro239 == 0) {
		//$("#sale_id").html("<span class='minusCart' onclick='minusCart(239,0)' name='239' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(239,0)' name='239' value='0'><i class='fa fa-plus'></i></span>");
		$("#sale_id").html("<span onclick='updateToCart(239,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro238 == 0) {
		//$("#sucre_id").html("<span class='minusCart' onclick='minusCart(238,0)' name='238' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(238,0)' name='238' value='0'><i class='fa fa-plus'></i></span>");
		$("#sucre_id").html("<span onclick='updateToCart(238,1)'><i class='fa fa-square-o'></i></span>");
	};
	$("#num_in_total").html(num_in_total);
	$("#money_in_total").html(Math.round(money_in_total*100)/100+"€");
}
function deleteAll(){
	$(".toRemove").remove();
	/*$("#bagu_id").html("<span class='minusCart' onclick='minusCart(240,0)' name='240' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(240,0)' name='240' value='0'><i class='fa fa-plus'></i></span>");
	$("#sucre_id").html("<span class='minusCart' onclick='minusCart(238,0)' name='238' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(238,0)' name='238' value='0'><i class='fa fa-plus'></i></span>");
	$("#sale_id").html("<span class='minusCart' onclick='minusCart(239,0)' name='239' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(239,0)' name='239' value='0'><i class='fa fa-plus'></i></span>");
	$("#gin_id").html("<span class='minusCart' onclick='minusCart(241,0)' name='241' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(241,0)' name='241' value='0'><i class='fa fa-plus'></i></span>");
	$("#was_id").html("<span class='minusCart' onclick='minusCart(674,0)' name='674' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(674,0)' name='674' value='0'><i class='fa fa-plus'></i></span>");
	*/
	$("#bagu_id").html("<span onclick='updateToCart(240,1)'><i class='fa fa-square-o'></i></span>");
	$("#was_id").html("<span onclick='updateToCart(674,1)'><i class='fa fa-square-o'></i></span>");
	$("#gin_id").html("<span onclick='updateToCart(241,1)'><i class='fa fa-square-o'></i></span>");
	$("#sale_id").html("<span onclick='updateToCart(239,1)'><i class='fa fa-square-o'></i></span>");
	$("#sucre_id").html("<span onclick='updateToCart(238,1)'><i class='fa fa-square-o'></i></span>");
	$("#num_in_total").html(0);
	$("#money_in_total").html("0€");
}

function setEmporter(isEmporter){
	isEmporter = parseInt(isEmporter);
	console.log(isEmporter);
	$.ajax({
		url:'index.php?route=checkout/shipping_method/setEmporter',
		type:'POST',
		data:'isEmporter='+isEmporter,
		success:function(data){
			if (data) {
				$.ajax({
					url:'index.php?route=checkout/shipping_method/getEmporterStatus',
					type:'POST',
					dataType:'json',
					success:function(dataG){
						console.log(dataG);
						if (dataG) {
							$("#isEmporter").html("<span value='true' onclick='setEmporter(0)'><i class='fa fa-toggle-on'></i></span>");
						}else{
							$("#isEmporter").html("<span value='false' onclick='setEmporter(1)'><i class='fa fa-toggle-off'></i></span>");
						}

						updateCart();
					}
				});
			};
		}
	});
}


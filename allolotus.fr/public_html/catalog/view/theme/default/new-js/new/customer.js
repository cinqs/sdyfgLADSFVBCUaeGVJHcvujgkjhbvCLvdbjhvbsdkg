$(document).ready(function(){
	$("#home_sentence").css({
		top:$("#home_header").height()+20,
	});
	$(".carteLeft").css({
		"padding-top":$("#content_header").height(),
	});
	
	$(".index-banner").css({
		"padding-top":$("#home_header").height(),
	});
	$(".update-cart").click(function(){
		updateToCart($(this).attr("id"),$(this).attr("value"));
	});
	$("#customer_detail").parent().parent().css({
		"padding-top":"17px",
	});
	/*
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
	updateToCart(key,0);
}
function changeTotal(status, json){
	$(".cartTotal").remove();
	if (status) {
		for (var i = 0; i < json.length; i++) {
			$(".total-list-box").append("<div class='row float_right cartTotal'><div class='col-md-4 font_big'>"+json[i].title+"</div><div class='col-md-8 font_big'>"+json[i].text+"</div></div>");
		};
	};
	if (!status) {
		$(".total-list-box").append("<div class='row float_right cartTotal'><div class='col-md-4 font_big'>TOTAL</div><div class='col-md-8 font_big'>0,00€</div></div>");
	};
}
function insertCart(json){
	num_in_total = 0;
	money_in_total = 0;
	pro607 = 0;
	pro610 = 0;
	pro608 = 0;
	pro609 = 0;
	pro611 = 0;
	$(".toRemove").remove();
	for(i = 0; i < json.length; i++){
		//console.log(json[i].name);
		if (json[i].model != "additional") {
			if (json[i].meals.length) {
				$(".cart_class tbody").prepend("<tr class='toRemove' id='p"+json[i].key+"'><td>"+json[i].name+"<br><span class='ordermeals'></span>"+"</td><td><i class='fa fa-times'></i> "+json[i].price+"</td><td><span>"+json[i].quantity+"</span>&nbsp;&nbsp;</td><td><div class='delete_cart_menu' onclick='deleteCart("+json[i].key+")' name='"+json[i].key+"'><i class='fa fa-trash-o'></i></div></td></tr>");
				for(var j = 0; j < json[i].meals.length; j++){
					$("#p"+json[i].key+" .ordermeals").append(json[i].meals[j].name+"<br>");
				}
			}else{
				$(".cart_class tbody").prepend("<tr class='toRemove' id='p"+json[i].key+"'><td>"+json[i].name+"</td><td><i class='fa fa-times'></i> "+json[i].price+"</td><td><span class='minusCart' onclick='minusCart("+json[i].key+","+json[i].quantity+")' name='"+json[i].key+"' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span>"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart("+json[i].key+","+json[i].quantity+")' name='"+json[i].key+"' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span></td><td><div class='delete_cart_menu' onclick='deleteCart("+json[i].key+")' name='"+json[i].key+"'><i class='fa fa-trash-o'></i></div></td></tr>");
			};
			num_in_total+=json[i].quantity;
			money_in_total+=parseFloat(json[i].total.replace(",","."));
		}else{

			if (json[i].key == 607) {
				pro607 = 1;
				console.log("60700000");
				//$("#bagu_id").html("<span class='minusCart' onclick='minusCart(607,"+json[i].quantity+")' name='607' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(607,"+json[i].quantity+")' name='607' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#bagu_id").html("<span onclick='updateToCart(607,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 608){
				pro608 = 1;
				console.log("60800000");
				//$("#sucre_id").html("<span class='minusCart' onclick='minusCart(608,"+json[i].quantity+")' name='608' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(608,"+json[i].quantity+")' name='608' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#sucre_id").html("<span onclick='updateToCart(608,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 609){
				pro609 = 1;
				console.log("60800000");
				//$("#sale_id").html("<span class='minusCart' onclick='minusCart(609,"+json[i].quantity+")' name='609' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(609,"+json[i].quantity+")' name='609' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#sale_id").html("<span onclick='updateToCart(609,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 610){
				pro610 = 1;
				console.log("61000000");
				//$("#gin_id").html("<span class='minusCart' onclick='minusCart(610,"+json[i].quantity+")' name='610' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(610,"+json[i].quantity+")' name='610' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#gin_id").html("<span onclick='updateToCart(610,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 611){
				pro611 = 1;
				console.log("61100000");
				//$("#was_id").html("<span class='minusCart' onclick='minusCart(611,"+json[i].quantity+")' name='611' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(611,"+json[i].quantity+")' name='611' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#was_id").html("<span onclick='updateToCart(611,0)'><i class='fa fa-check-square-o'></i></span>");
			}
		};
	}
	if (pro607 == 0) {
		//$("#bagu_id").html("<span class='minusCart' onclick='minusCart(607,0)' name='607' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(607,0)' name='607' value='0'><i class='fa fa-plus'></i></span>");
		$("#bagu_id").html("<span onclick='updateToCart(607,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro611 == 0) {
		//$("#was_id").html("<span class='minusCart' onclick='minusCart(611,0)' name='611' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(611,0)' name='611' value='0'><i class='fa fa-plus'></i></span>");
		$("#was_id").html("<span onclick='updateToCart(611,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro610 == 0) {
		//$("#gin_id").html("<span class='minusCart' onclick='minusCart(610,0)' name='610' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(610,0)' name='610' value='0'><i class='fa fa-plus'></i></span>");
		$("#gin_id").html("<span onclick='updateToCart(610,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro609 == 0) {
		//$("#sale_id").html("<span class='minusCart' onclick='minusCart(609,0)' name='609' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(609,0)' name='609' value='0'><i class='fa fa-plus'></i></span>");
		$("#sale_id").html("<span onclick='updateToCart(609,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro608 == 0) {
		//$("#sucre_id").html("<span class='minusCart' onclick='minusCart(608,0)' name='608' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(608,0)' name='608' value='0'><i class='fa fa-plus'></i></span>");
		$("#sucre_id").html("<span onclick='updateToCart(608,1)'><i class='fa fa-square-o'></i></span>");
	};
	$("#num_in_total").html(num_in_total);
	//$("#money_in_total").html(Math.round(money_in_total*100)/100+"€");
}
function deleteAll(){
	$(".toRemove").remove();
	//$("#bagu_id").html("<span class='minusCart' onclick='minusCart(607,0)' name='607' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(607,0)' name='607' value='0'><i class='fa fa-plus'></i></span>");
	//$("#sucre_id").html("<span class='minusCart' onclick='minusCart(608,0)' name='608' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(608,0)' name='608' value='0'><i class='fa fa-plus'></i></span>");
	//$("#sale_id").html("<span class='minusCart' onclick='minusCart(609,0)' name='609' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(609,0)' name='609' value='0'><i class='fa fa-plus'></i></span>");
	//$("#gin_id").html("<span class='minusCart' onclick='minusCart(610,0)' name='610' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(610,0)' name='610' value='0'><i class='fa fa-plus'></i></span>");
	//$("#was_id").html("<span class='minusCart' onclick='minusCart(611,0)' name='611' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(611,0)' name='611' value='0'><i class='fa fa-plus'></i></span>");
	$("#bagu_id").html("<span onclick='updateToCart(607,1)'><i class='fa fa-square-o'></i></span>");
	$("#was_id").html("<span onclick='updateToCart(611,1)'><i class='fa fa-square-o'></i></span>");
	$("#gin_id").html("<span onclick='updateToCart(610,1)'><i class='fa fa-square-o'></i></span>");
	$("#sale_id").html("<span onclick='updateToCart(609,1)'><i class='fa fa-square-o'></i></span>");
	$("#sucre_id").html("<span onclick='updateToCart(608,1)'><i class='fa fa-square-o'></i></span>");
	$("#num_in_total").html(0);
	$("#money_in_total").html("0€");
}

function couvUpdate(quantity){
	quantity = parseInt(quantity)>=0? quantity:0;

	$.ajax({
		url:'index.php?route=checkout/cart/couvUpdate',
		data:'couvQuantity='+quantity,
		type:'post',
		dateType:'json',
		success:function(json){
			$.ajax({
				url:'index.php?route=checkout/cart/couvGet',
				dataType:'text',
				success:function(json){
					$("#couv").html(json);
					$("#couvMinus").attr({
						"onclick":"couvUpdate("+(parseInt(json)-1)+")",
					});
					$("#couvPlus").attr({
						"onclick":"couvUpdate("+(parseInt(json)+1)+")",
					});
				}
			});
		}
	});
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


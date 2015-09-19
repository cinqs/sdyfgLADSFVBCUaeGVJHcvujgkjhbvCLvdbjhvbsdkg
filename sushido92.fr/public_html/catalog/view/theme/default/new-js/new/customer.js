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
	$(".update-cart").click(function(){
		updateToCart($(this).attr("id"),$(this).attr("value"));
	});
	$("#cart_form_submit").click(function(){
		//$("#cart_form").submit();
		$.ajax({
			url:"index.php?route=common/getcart",
			type:'post',
			data:'query=product',
			dataType:'json',
			success:function(json){
				console.log(json);
				if (json[0] != "noresult") {
					for (var i = 0; i < json.length; i++) {
						if (json[i].model == 'additional') {
							addChosen = true;
						}else{
							addChosen = false;
						};
					};

					if (addChosen) {
						$("#cart_form").submit();
					}else{
						$("#mask").show("fast");
						$("#cartAddWarn").show("fast");
						$("#cartAddWarn").css({
							"z-index":1001,
							"display":"table",
						});
					};
				}else{
					$("#mask").show("fast");
					$("#cartEmptyWarn").show("fast");
					$("#cartEmptyWarn").css({
						"z-index":1001,
						"display":"table",
					});
				}
			}
		});
	});
	$("#goToCart").click(function(){
		$("#cart_form").submit();
	});
	$("button.cancel").click(function(){
		$("#mask").hide("fast");
		$("#cartAddWarn").hide("fast");
		$("#cartEmptyWarn").hide("fast");
	});
});

function minusCart(key,quantity){
	//updateToCart(key,parseInt(quantity)-1,'minus');
	updateToCart(key,parseInt(quantity)-1);
	//console.log("activated"+key);
}

function plusCart(key,quantity){
	//updateToCart(key,parseInt(quantity)+1,'plus');
	updateToCart(key,parseInt(quantity)+1);
	console.log("plusCart"+quantity);
}

function deleteCart(key){
	console.log("deletCart");
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
	num_in_total = 0;
	money_in_total = 0;
	pro701 = 0;
	pro704 = 0;
	pro702 = 0;
	pro703 = 0;
	pro705 = 0;
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

			if (json[i].key == 701) {
				pro701 = 1;
				console.log("70100000");
				$("#bagu_id").html("<span class='minusCart' onclick='minusCart(701,"+json[i].quantity+")' name='701' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(701,"+json[i].quantity+")' name='701' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				//$("#bagu_id").html("<span onclick='updateToCart(701,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 702){
				pro702 = 1;
				console.log("70200000");
				//$("#sucre_id").html("<span class='minusCart' onclick='minusCart(702,"+json[i].quantity+")' name='702' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(702,"+json[i].quantity+")' name='702' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#sucre_id").html("<span onclick='updateToCart(702,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 703){
				pro703 = 1;
				console.log("70200000");
				//$("#sale_id").html("<span class='minusCart' onclick='minusCart(703,"+json[i].quantity+")' name='703' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(703,"+json[i].quantity+")' name='703' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#sale_id").html("<span onclick='updateToCart(703,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 704){
				pro704 = 1;
				console.log("70400000");
				//$("#gin_id").html("<span class='minusCart' onclick='minusCart(704,"+json[i].quantity+")' name='704' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(704,"+json[i].quantity+")' name='704' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#gin_id").html("<span onclick='updateToCart(704,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 705){
				pro705 = 1;
				console.log("70500000");
				//$("#was_id").html("<span class='minusCart' onclick='minusCart(705,"+json[i].quantity+")' name='705' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(705,"+json[i].quantity+")' name='705' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#was_id").html("<span onclick='updateToCart(705,0)'><i class='fa fa-check-square-o'></i></span>");
			}
		};
	}
	if (pro701 == 0) {
		$("#bagu_id").html("<span class='minusCart' onclick='minusCart(701,0)' name='701' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(701,0)' name='701' value='0'><i class='fa fa-plus'></i></span>");
		//$("#bagu_id").html("<span onclick='updateToCart(701,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro705 == 0) {
		//$("#was_id").html("<span class='minusCart' onclick='minusCart(705,0)' name='705' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(705,0)' name='705' value='0'><i class='fa fa-plus'></i></span>");
		$("#was_id").html("<span onclick='updateToCart(705,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro704 == 0) {
		$("#gin_id").html("<span class='minusCart' onclick='minusCart(704,0)' name='704' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(704,0)' name='704' value='0'><i class='fa fa-plus'></i></span>");
		//$("#gin_id").html("<span onclick='updateToCart(704,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro703 == 0) {
		//$("#sale_id").html("<span class='minusCart' onclick='minusCart(703,0)' name='703' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(703,0)' name='703' value='0'><i class='fa fa-plus'></i></span>");
		$("#sale_id").html("<span onclick='updateToCart(703,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro702 == 0) {
		//$("#sucre_id").html("<span class='minusCart' onclick='minusCart(702,0)' name='702' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(702,0)' name='702' value='0'><i class='fa fa-plus'></i></span>");
		$("#sucre_id").html("<span onclick='updateToCart(702,1)'><i class='fa fa-square-o'></i></span>");
	};
	$("#num_in_total").html(num_in_total);
	$("#money_in_total").html(Math.round(money_in_total*100)/100+"€");
}
function deleteAll(){
	$(".toRemove").remove();
	$("#bagu_id").html("<span class='minusCart' onclick='minusCart(701,0)' name='701' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(701,0)' name='701' value='0'><i class='fa fa-plus'></i></span>");
	/*$("#sucre_id").html("<span class='minusCart' onclick='minusCart(702,0)' name='702' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(702,0)' name='702' value='0'><i class='fa fa-plus'></i></span>");
	$("#sale_id").html("<span class='minusCart' onclick='minusCart(703,0)' name='703' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(703,0)' name='703' value='0'><i class='fa fa-plus'></i></span>");
	$("#gin_id").html("<span class='minusCart' onclick='minusCart(704,0)' name='704' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(704,0)' name='704' value='0'><i class='fa fa-plus'></i></span>");
	$("#was_id").html("<span class='minusCart' onclick='minusCart(705,0)' name='705' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(705,0)' name='705' value='0'><i class='fa fa-plus'></i></span>");*/
	
	/*$("#bagu_id").html("<span onclick='updateToCart(701,1)'><i class='fa fa-square-o'></i></span>");*/
	$("#was_id").html("<span onclick='updateToCart(705,1)'><i class='fa fa-square-o'></i></span>");
	$("#gin_id").html("<span onclick='updateToCart(704,1)'><i class='fa fa-square-o'></i></span>");
	$("#sale_id").html("<span onclick='updateToCart(703,1)'><i class='fa fa-square-o'></i></span>");
	$("#sucre_id").html("<span onclick='updateToCart(702,1)'><i class='fa fa-square-o'></i></span>");
	$("#num_in_total").html(0);
	$("#money_in_total").html("0€");
}

function insertCart_backup(json, product_id, style){
	if (style == 'plus') {
		console.log(style);
		for(i = 0; i < json.length; i++){
			if (json[i].key == product_id) {
				console.log(json[i].key+json[i].name+json[i].quantity);
				$("#p"+json[i].key).html("<span class='minusCart' onclick='minusCart("+json[i].key+","+(parseInt(json[i].quantity))+")'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span>"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart("+json[i].key+","+(parseInt(json[i].quantity))+")'><i class='fa fa-plus'></i></span>");
			};
		}
	}else if (style == 'minus') {
		exist = 'no';
		console.log(style);
		for(i = 0; i<json.length; i++){
			if (json[i].key == product_id) {
				exist = i;
			};
		}
		if (exist == 'no') {
			$("#p"+product_id).parent().remove();
		}else{
			exist = parseInt(exist);
			console.log(exist);
			$("#p"+json[exist].key).html("<span class='minusCart' onclick='minusCart("+json[exist].key+","+(parseInt(json[exist].quantity))+")'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span>"+json[exist].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart("+json[exist].key+","+(parseInt(json[exist].quantity))+")'><i class='fa fa-plus'></i></span>");
		};
	}else if (style == 'delete') {
		deleted = 'yes';
		for(i = 0; i < json.length; i++){
			if (json[i].key == product_id) {
				delelted = 'no';
			};
		}
		if (deleted == 'yes') {
			$("#p"+product_id).parent().remove();
		}else if (deleted == 'no') {
			alert("system busy, delete failed, try again later");
		};
	}else if (style == 'add') {
		exist = 'no';
		for(i = 0; i < json.length; i++){
			if (json[i].key == product_id) {
				exist = i;
			};
		}
		if (exist == 'no') {
			alert("add product failed, dued to busy server, please try again later");
		}else{
			exist = parseInt(exist);
			//alert($(".cart_class").find("td#p"+json[exist].key));
			//alert(json[exist].key+"+"+$(".cart_class").find("#p"+json[exist].key).attr("id"));
			//if ($(".cart_class").find("#p"+json[exist].key).attr("id") == 'undefined') {
				//alert("this is new");
			//};
			//alert($(".cart_class").find("#p"+json[exist].key));
			if ($("#p"+json[exist].key).length) {
				//alert("found");
				$("#p"+json[exist].key).html("<span class='minusCart' onclick='minusCart("+json[exist].key+","+(parseInt(json[exist].quantity))+")'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span>"+json[exist].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart("+json[exist].key+","+(parseInt(json[exist].quantity))+")'><i class='fa fa-plus'></i></span>")
			}else{
				//alert("not found");
				$(".cart_class").prepend("<tr class='toRemove'><td>"+json[exist].name+"</td><td><i class='fa fa-times'></i>"+json[exist].price+"</td><td id='p"+json[exist].key+"'><span class='minusCart' onclick='minusCart("+json[exist].key+","+json[exist].quantity+")'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span>"+json[exist].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart("+json[exist].key+","+json[exist].quantity+")'><i class='fa fa-plus'></i></span></td><td><div class='delete_cart_menu' onclick='deleteCart("+json[exist].key+")' name='"+json[exist].key+"'><i class='fa fa-trash-o'></i></div></td><tr>");
			};
		};
	};
	num_in_total = 0;
	money_in_total = 0;
	for(i = 0; i < json.length; i++){
		if (json[i].model != "additional") {
			num_in_total+=json[i].quantity;
			money_in_total+=parseFloat(json[i].total.replace(",","."));
		};
	}
	$("#num_in_total").html(num_in_total);
	$("#money_in_total").html(Math.round(money_in_total*100)/100+"€");
}


function setEmporter(isEmporter){
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
							$("#isEmporter").html("<span value='true' onclick='setEmporter(false)'><i class='fa fa-toggle-on'></i></span>");
						}else{
							$("#isEmporter").html("<span value='false' onclick='setEmporter(true)'><i class='fa fa-toggle-off'></i></span>");
						}

						updateCart();
					}
				});
			};
		}
	});
}
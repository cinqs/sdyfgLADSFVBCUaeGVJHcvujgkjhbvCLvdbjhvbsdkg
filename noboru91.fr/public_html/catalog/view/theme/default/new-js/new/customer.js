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
	pro633 = 0;
	pro241 = 0;
	pro634 = 0;
	pro635 = 0;
	pro242 = 0;
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

			if (json[i].key == 633) {
				pro633 = 1;
				console.log("63300000");
				//$("#bagu_id").html("<span class='minusCart' onclick='minusCart(633,"+json[i].quantity+")' name='633' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(633,"+json[i].quantity+")' name='633' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#bagu_id").html("<span onclick='updateToCart(633,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 634){
				pro634 = 1;
				console.log("63400000");
				//$("#sucre_id").html("<span class='minusCart' onclick='minusCart(634,"+json[i].quantity+")' name='634' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(634,"+json[i].quantity+")' name='634' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#sucre_id").html("<span onclick='updateToCart(634,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 635){
				pro635 = 1;
				console.log("63400000");
				//$("#sale_id").html("<span class='minusCart' onclick='minusCart(635,"+json[i].quantity+")' name='635' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(635,"+json[i].quantity+")' name='635' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#sale_id").html("<span onclick='updateToCart(635,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 241){
				pro241 = 1;
				console.log("24100000");
				//$("#gin_id").html("<span class='minusCart' onclick='minusCart(241,"+json[i].quantity+")' name='241' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(241,"+json[i].quantity+")' name='241' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#gin_id").html("<span onclick='updateToCart(241,0)'><i class='fa fa-check-square-o'></i></span>");
			}else if(json[i].key == 242){
				pro242 = 1;
				console.log("24200000");
				//$("#was_id").html("<span class='minusCart' onclick='minusCart(242,"+json[i].quantity+")' name='242' value='"+json[i].quantity+"'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >"+json[i].quantity+"</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(242,"+json[i].quantity+")' name='242' value='"+json[i].quantity+"'><i class='fa fa-plus'></i></span>");
				$("#was_id").html("<span onclick='updateToCart(242,0)'><i class='fa fa-check-square-o'></i></span>");
			}
		};
	}
	if (pro633 == 0) {
		//$("#bagu_id").html("<span class='minusCart' onclick='minusCart(633,0)' name='633' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(633,0)' name='633' value='0'><i class='fa fa-plus'></i></span>");
		$("#bagu_id").html("<span onclick='updateToCart(633,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro242 == 0) {
		//$("#was_id").html("<span class='minusCart' onclick='minusCart(242,0)' name='242' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(242,0)' name='242' value='0'><i class='fa fa-plus'></i></span>");
		$("#was_id").html("<span onclick='updateToCart(242,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro241 == 0) {
		//$("#gin_id").html("<span class='minusCart' onclick='minusCart(241,0)' name='241' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(241,0)' name='241' value='0'><i class='fa fa-plus'></i></span>");
		$("#gin_id").html("<span onclick='updateToCart(241,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro635 == 0) {
		//$("#sale_id").html("<span class='minusCart' onclick='minusCart(635,0)' name='635' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(635,0)' name='635' value='0'><i class='fa fa-plus'></i></span>");
		$("#sale_id").html("<span onclick='updateToCart(635,1)'><i class='fa fa-square-o'></i></span>");
	};
	if (pro634 == 0) {
		//$("#sucre_id").html("<span class='minusCart' onclick='minusCart(634,0)' name='634' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(634,0)' name='634' value='0'><i class='fa fa-plus'></i></span>");
		$("#sucre_id").html("<span onclick='updateToCart(634,1)'><i class='fa fa-square-o'></i></span>");
	};
	$("#num_in_total").html(num_in_total);
	$("#money_in_total").html(Math.round(money_in_total*100)/100+"€");
}
function deleteAll(){
	$(".toRemove").remove();
	/*$("#bagu_id").html("<span class='minusCart' onclick='minusCart(633,0)' name='633' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(633,0)' name='633' value='0'><i class='fa fa-plus'></i></span>");
	$("#sucre_id").html("<span class='minusCart' onclick='minusCart(634,0)' name='634' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(634,0)' name='634' value='0'><i class='fa fa-plus'></i></span>");
	$("#sale_id").html("<span class='minusCart' onclick='minusCart(635,0)' name='635' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(635,0)' name='635' value='0'><i class='fa fa-plus'></i></span>");
	$("#gin_id").html("<span class='minusCart' onclick='minusCart(241,0)' name='241' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(241,0)' name='241' value='0'><i class='fa fa-plus'></i></span>");
	$("#was_id").html("<span class='minusCart' onclick='minusCart(242,0)' name='242' value='0'><i class='fa fa-minus'></i></span>&nbsp;&nbsp;<span >0</span>&nbsp;&nbsp;<span class='plusCart' onclick='plusCart(242,0)' name='242' value='0'><i class='fa fa-plus'></i></span>");
	*/
	$("#bagu_id").html("<span onclick='updateToCart(633,1)'><i class='fa fa-square-o'></i></span>");
	$("#was_id").html("<span onclick='updateToCart(242,1)'><i class='fa fa-square-o'></i></span>");
	$("#gin_id").html("<span onclick='updateToCart(241,1)'><i class='fa fa-square-o'></i></span>");
	$("#sale_id").html("<span onclick='updateToCart(635,1)'><i class='fa fa-square-o'></i></span>");
	$("#sucre_id").html("<span onclick='updateToCart(634,1)'><i class='fa fa-square-o'></i></span>");
	$("#num_in_total").html(0);
	$("#money_in_total").html("0€");
}


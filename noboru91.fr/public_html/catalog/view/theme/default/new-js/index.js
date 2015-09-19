$(function () {

	$('#reg').validate({
		rules : {
			name : {
				required : true,
				minlength : 2,
				maxlength : 20
			}, 
			courriel : {
				email : true,
			},
			num :{
				required :true,
				maxlength : 5
			},
			mobile :{
				required :true,
				digits:true,
			},
			message :{
				maxlength : 150
			}
		},
		messages : {
			name : {
				required : 'Ce champ est obligatoire',
				maxlength : 'Ce champ est obligatoire',
			},
			courriel :{
				email :'Email invalide'
			},
			num : {
				required : 'Merci de renseigner un numéro',
				maxlength: 'longueur surdimensionnée'
			},
			mobile :{
				required : 'numéro de téléphone ne peut pas être vide',
				digits : 'numéro de téléphone invalide'
			},
			message :{
				maxlength :"Longueur d'entrée de plus de 150 caractères"
			}
		},submitHandler: function(form) {
		    var name = $('#name').val();
	      	var courriel = $('#courriel').val();
	      	var num = $('#num').val();
	      	var mobile = $('#mobile').val();
	      	var message = $('#message').val();
	      	var send = $('#order_meal').attr('send');
	      	$('#order_meal').css({background:'#cc0000',color:'#fff',cursor:'default'});
	      	if(send == 1){
	      		$('#order_meal').attr('send',0);    		
		      	$.post('index.php?route=information/contact/reservation',{name:name,courriel:courriel,num:num,mobile:mobile,message,message},
		      		function(data){
		      			if(data == 1){
		      			$('#name').val('');
				      	$('#courriel').val('');
				      	$('#num').val('');
				      	$('#mobile').val('');
				      	$('#message').val('');
		      			   $("#order_meal").attr('send',1);
		      			   $('#order_meal').css({background:'#990000',color:'#999',cursor:'pointer'});
		      			   $("#order_meal").hover(function(){
					   			$('#order_meal').css({background:'#cc0000',color:'#fff',cursor:'default'});
					   		},function(){
								$('#order_meal').css({background:'#990000',color:'#fff',cursor:'default'});
					   	});
		      			}else{
							$("#order_meal").attr('send',1);
		      			}
		      		},'json');
	      	}


		}
	});

});



























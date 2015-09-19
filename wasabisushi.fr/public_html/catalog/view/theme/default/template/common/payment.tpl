<?php echo $header;?>
<?php
if(!@empty($_POST)){
	$message     = "message=$_POST[DATA]";
	$pathfile    = "pathfile=/var/www/html/wasabisushi.fr/public_html/payment/param/pathfile";
	$path_bin 	 = "/var/www/html/wasabisushi.fr/public_html/payment/bin/glibc-2.5-42/response";
	$result      = exec("$path_bin $pathfile $message");
	$tableau     = explode ("!", $result);
}
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function(){
			<?php if ($tableau[18] == '00') {?>
				$.ajax({ 
					
					url: "http://<?php echo $_SERVER['SERVER_NAME']?>/index.php?route=payment/bank_transfer/confirm",
					type: "get",
					//success: function() {
						
					//}		
				}).done(function(){
					location = 'http://<?php echo $_SERVER["SERVER_NAME"]?>/index.php?route=checkout/success';
				});
				$.ajax({ 
					
					url: "http://<?php echo $_SERVER['SERVER_NAME']?>/index.php?route=payment/bank_transfer/confirm",
					type: "get",
					//success: function() {
						
					//}		
				}).done(function(){
					location = 'http://<?php echo $_SERVER["SERVER_NAME"]?>/index.php?route=checkout/success';
				});
			
			$("#button-click").bind("click", function() {
				$.ajax({ 
					type: "get",
					url: "http://<?php echo $_SERVER['SERVER_NAME']?>/index.php?route=payment/bank_transfer/confirm",
					//success: function() {
						
					//}		
				}).done(function(){
					location = 'http://<?php echo $_SERVER["SERVER_NAME"]?>/index.php?route=checkout/success';
				});
				$.ajax({ 
					type: "get",
					url: "http://<?php echo $_SERVER['SERVER_NAME']?>/index.php?route=payment/bank_transfer/confirm",
					//success: function() {
						
					//}		
				}).done(function(){
					location = 'http://<?php echo $_SERVER["SERVER_NAME"]?>/index.php?route=checkout/success';
				});
			});
			<?php }else{?>
				location = 'http://<?php echo $_SERVER['SERVER_NAME'];?>/index.php?route=checkout/cart';
			<?php }?>
		});
	</script>
<style type="text/css">
	.pay_mask{
		position: fixed;
		top: 0;
		left: 0;
		width: 100vw;
		height: 100vh;
		background-color: black;
		opacity: 0.6;
		z-index: 10000;
	}
	.on_mask{
		position: fixed;
		top: 30vh;
		left: 0;
		text-align: center;
		z-index: 10001;
		width: 100vw;
	}
	.post-pay{
		color: white;
	}
</style>
<div class="pay_mask"></div>
<div class="on_mask">
	<?php
		if ($tableau[18] == "00") {
			print('<button id="button-click" class="post-pay button">Déjà Payé? Cliquez Içi</button>');
		}else{
			print('<a href="http://'.$_SERVER['SERVER_NAME'].'/index.php?route=checkout/cart"><button id="button-no" class="post-pay button">MON PANIER</button>');
		}
	?>
</div>
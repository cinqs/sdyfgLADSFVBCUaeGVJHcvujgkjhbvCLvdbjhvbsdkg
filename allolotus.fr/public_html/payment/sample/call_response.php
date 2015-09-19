<?php
if(!@empty($_POST)){
	$message     = "message=$_POST[DATA]";
	$pathfile    = "pathfile=/var/www/html/wasabisushi.fr/public_html/payment/param/pathfile";
	$path_bin 	 = "/var/www/html/wasabisushi.fr/public_html/payment/bin/glibc-2.5-42/response";
	$result      = exec("$path_bin $pathfile $message");
	$tableau     = explode ("!", $result);

	echo "================<br>";
	echo $tableau[18];
	echo "<br>====================";
	if ($tableau[18] != 00) {
		echo "<!--";
	}
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>being validated</title>
	<meta name="charset" content="utf-8">
	
</head>
<body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function(){
			$("#button-click").bind("click", function() {
				$.ajax({ 
					type: "get",
					url: "http://<?php echo $_SERVER['SERVER_NAME']?>/index.php?route=payment/bank_transfer/confirm",
					//success: function() {
						
					//}		
				}).done(function(){
					location = 'http://<?php echo $_SERVER["SERVER_NAME"]?>/index.php?route=checkout/success';
				});
			});
		});
	</script>
	<?php
		if ($tableau[18] == "00") {
			print('<button id="button-click">Already Paid? Click Here</button>');
		}else{
			print("not validated");
		}
	?>

</body>
</html>
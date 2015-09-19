<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script type="text/javascript" src="js/deployJava.js"></script>
	<script type="text/javascript" src="js/eyelleprint.js"></script>
	<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="js/html2canvas.js"></script>
	<script type="text/javascript" src="js/jquery.plugin.html2canvas.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			findPrinter();
			setTimeout(function(){printESCP();},3000);
		});
	</script>
	<style type="text/css">
	#printer{
		display: none;
	}
	</style>
</head>
<body>
	<input id="printer" type="text" value="zebra" size="15"><br />
</body>
</html>
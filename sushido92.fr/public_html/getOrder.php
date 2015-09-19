<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script type="text/javascript" src="admin/js/jquery-1.10.2.js"></script>
</head>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			url:'admin/index.php?route=common/getorder',
			data:'order_id=125',
			type:'POST',
			success:function(data){
				$("body").html(data);
			},
		});
	});
</script>
</body>
</html>
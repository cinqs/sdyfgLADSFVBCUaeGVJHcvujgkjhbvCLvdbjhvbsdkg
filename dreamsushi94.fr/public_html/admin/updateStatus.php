<?php 

	$con = mysqli_connect('localhost','dreamsushi94','eyelle8888',"dreamsushi94");

	if (!$con) {
		die('Could not connect:'.mysqli_error($con));
	}

	$con->query("SET CHARACTER SET utf8");

	$getId = $_POST['q'];
	$getId = intval($getId);
	$sql3 = "UPDATE oc_order SET isPrinted='1' WHERE order_id=".$getId;
	$con->query($sql3);
?>
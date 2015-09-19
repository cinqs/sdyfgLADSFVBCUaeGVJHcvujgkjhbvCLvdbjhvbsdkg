<?php 

	require("consql.php");


	$getId = $_POST['q'];
	$getId = intval($getId);
	$sql3 = "UPDATE oc_order SET isPrinted='1' WHERE order_id=".$getId;
	$con->query($sql3);
?>
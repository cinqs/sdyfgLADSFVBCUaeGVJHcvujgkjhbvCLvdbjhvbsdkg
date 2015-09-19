<?php
	$con = mysqli_connect('localhost','sushido92','eyelle8888',"sushido92");

	if (!$con) {
		die('Could not connect:'.mysqli_error($con));
	}

	$con->query("SET CHARACTER SET utf8");
?>
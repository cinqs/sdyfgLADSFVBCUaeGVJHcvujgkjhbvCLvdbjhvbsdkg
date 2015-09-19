<?php
	$con = mysqli_connect('localhost','allolotus','eyelle8888',"allolotus");

	if (!$con) {
		die('Could not connect:'.mysqli_error($con));
	}

	$con->query("SET CHARACTER SET utf8");
?>
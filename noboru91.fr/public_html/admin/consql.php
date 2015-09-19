<?php
	$con = mysqli_connect('localhost','noboru91','eyelle8888',"noboru91");

	if (!$con) {
		die('Could not connect:'.mysqli_error($con));
	}

	$con->query("SET CHARACTER SET utf8");
?>
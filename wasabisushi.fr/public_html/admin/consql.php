<?php
	$con = mysqli_connect('localhost','wasabisushi','eyelle8888',"wasabisushi");

	if (!$con) {
		die('Could not connect:'.mysqli_error($con));
	}

	$con->query("SET CHARACTER SET utf8");
?>
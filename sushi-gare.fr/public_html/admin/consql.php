<?php
	$con = mysqli_connect('localhost','sushi-gare','eyelle8888',"sushi-gare");

	if (!$con) {
		die('Could not connect:'.mysqli_error($con));
	}

	$con->query("SET CHARACTER SET utf8");
?>
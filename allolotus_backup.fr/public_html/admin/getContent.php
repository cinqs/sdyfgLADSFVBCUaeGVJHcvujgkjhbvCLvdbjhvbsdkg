<?php 
	$con = mysqli_connect('localhost', 'wasabisushi', 'eyelle8888', 'wasabisushi');

	if (!$con) {
		die('Could not connect:'.mysqli_error($con));
	}

	$sql = "SELECT * FROM oc_order WHERE order_status_id='1' AND prompt='1'";
				$result = $con->query($sql);

				$row_show = array();
				while ( $rowww = $result->fetch_assoc() ) {
					$row_show[] = $rowww;
				}


				print json_encode($row_show);
?>
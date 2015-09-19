<?php
	$con = mysqli_connect('localhost','dreamsushi94','eyelle8888',"dreamsushi94");

	if (!$con) {
		die('Could not connect:'.mysqli_error($con));
	}

	$con->query("SET CHARACTER SET utf8");

	$emailResult = $con->query("SELECT * FROM oc_setting");

	while ($emailRow = $emailResult->fetch_assoc()) {
		$emailShow[] = $emailRow;
	}

	foreach ($emailShow as $emailSho) {
		if ($emailSho['key'] == 'config_email') {
			$email_to_alert = $emailSho['value'];
			break;
		}
	}

			if ($_POST['q'] == 'select') {
				
				$sql = "SELECT * FROM oc_order WHERE order_status_id='1' AND prompt='1'";
				$result = $con->query($sql);

				$row_show = array();
				while ( $rowww = $result->fetch_assoc() ) {
					$row_show[] = $rowww;
				}
				$this_order_id = $row_show[0]['order_id'];
				//$row_show[0]['date_added'] = date("Y-m-d h:i", strtotime(strval(intval(strtotime($row_show[0]['date_added']))+7200000)));
				//$row_show[0]['date_added'] = intval(strtotime($row_show[0]['date_added']))+1;
				$unix_time = strval(intval(strtotime($row_show[0]['date_added']))+7200);
				$row_show[0]['date_added'] = date("Y-m-d H:i", $unix_time);

				$sql2 = "SELECT * FROM oc_order_product WHERE order_id=".$this_order_id;
				$result2 = $con->query($sql2);
				while ($rowww = $result2->fetch_assoc()) {
					$order_product[] = $rowww;
				}

				$final_order = array();
				$final_order[] = $row_show[0];
				$final_order[] = $order_product;

				$email_message = "有一个新单：\n订单ID为： ".$row_show[0]['order_id']."\n客户姓名为： ".$row_show[0]['firstname']." ".$row_show[0]['lastname']."\n订单内容为： ";
				foreach ($order_product as $order_products) {
					$email_message .="\n".$order_products['name']." 数量:".$order_products['quantity'];
					//$email_message .="\nnihao";
				}

				print json_encode($final_order);

				mail($email_to_alert, "新订单", $email_message);
			}else{
				$getId = $_POST['q'];
				$getId = intval($getId);
				$sql3 = "UPDATE oc_order SET prompt='0' WHERE order_id=".$getId;
				$con->query($sql3);
			}
				//echo $row_show[0]['firstname'];
				//echo $order_product[0]['name'];
				

				
				
	mysqli_close($con);


?>
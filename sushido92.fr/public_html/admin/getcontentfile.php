<?php
	require("consql.php");

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

				
				$sql = "SELECT * FROM oc_order WHERE order_status_id='1' AND isPrinted='0'";
				$result = $con->query($sql);

				$row_show = array();
				while ( $rowww = $result->fetch_assoc() ) {
					$row_show[] = $rowww;
				}
				$this_order_id = $row_show[0]['order_id'];
				$unix_time = strval(intval(strtotime($row_show[0]['date_added']))+7200);
				$row_show[0]['date_added'] = date("Y-m-d H:i", $unix_time);

				$sql2 = "SELECT * FROM oc_order_product WHERE order_id=".$this_order_id;
				$result2 = $con->query($sql2);
				while ($rowww = $result2->fetch_assoc()) {
					$order_product[] = $rowww;
				}

				$sql_address = "SELECT * FROM oc_address WHERE customer_id=".$row_show[0]["customer_id"];
				$result_address = $con->query($sql_address);
				while ($row_address = $result_address->fetch_assoc()) {
					$order_addresses[]=$row_address;
				}

				$final_order = array();
				$final_order[] = $row_show[0];
				$final_order[] = $order_product;
				foreach ($order_addresses as $order_address) {
					if ($order_address["address_1"] == $row_show[0]["payment_address_1"]) {
						$final_order[] = $order_address;
					}
				}
				$sql_setting = "SELECT * FROM oc_setting";
				$result_setting = $con->query($sql_setting);
				while ($row_setting = $result_setting->fetch_assoc()) {
					$settings[] = $row_setting;
				}
				foreach ($settings as $setting) {
					if ($setting["key"] == "config_address") {
						$final_order[] = $setting;
					}
				}

				$email_message = "有一个新单：\n订单ID为： ".$row_show[0]['order_id']."\n客户姓名为： ".$row_show[0]['firstname']." ".$row_show[0]['lastname']."\n订单内容为： ";
				foreach ($order_product as $order_products) {
					$email_message .="\n".$order_products['name']." 数量:".$order_products['quantity'];
					//$email_message .="\nnihao";
				}

				print json_encode($final_order);

				mail($email_to_alert, "新订单", $email_message);
			
				//echo $row_show[0]['firstname'];
				//echo $order_product[0]['name'];
				

				
				
	mysqli_close($con);


?>
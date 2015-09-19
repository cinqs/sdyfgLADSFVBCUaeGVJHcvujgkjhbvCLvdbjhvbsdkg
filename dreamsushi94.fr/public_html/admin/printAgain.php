<?php

	$order_id = intval($_POST['order_id']);

	$con = mysqli_connect('localhost','dreamsushi94','eyelle8888',"dreamsushi94");

	if (!$con) {
		die('Could not connect:'.mysqli_error($con));
	}

	$con->query("SET CHARACTER SET utf8");

	$sql = "SELECT * FROM oc_order WHERE order_id=".$order_id;
	$result = $con->query($sql);

	$row_show = array();
	while ( $rowww = $result->fetch_assoc() ) {
		$row_show[] = $rowww;
	}
	$this_order_id = $row_show[0]['order_id'];

	$sql2 = "SELECT * FROM oc_order_product WHERE order_id=".$this_order_id;
	$result2 = $con->query($sql2);
	while ($rowww = $result2->fetch_assoc()) {
		$order_product[] = $rowww;
	}
	
	for ($i=0; $i < count($order_product); $i++) { 
		if ($order_product[$i]['ordermeals']) {
			$order_meals = explode(',', $order_product[$i]['ordermeals']);
			foreach ($order_meals as $key => $value) {
				$value = intval($value);
				$sql_order_meals = "SELECT * FROM oc_meal WHERE meal_id=".$value;
				$result_order_meals = $con->query($sql_order_meals);
				while ($row_meal = $result_order_meals->fetch_assoc()) {
					$row_order_meal = $row_meal;
				}
				array_push($order_product[$i], $row_order_meal);
			}
		}
	}

	$final_order = array();
	$final_order[] = $row_show[0];
	$final_order[] = $order_product;


	$sql_address = "SELECT * FROM oc_address WHERE customer_id=".$row_show[0]["customer_id"];
	$result_address = $con->query($sql_address);
	while ($row_address = $result_address->fetch_assoc()) {
		$order_addresses[]=$row_address;
	}
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
	

	print json_encode($final_order);

	/*$sql = "SELECT * FROM oc_order WHERE order_id='".$order_id."'";
	$result = $con->query($sql);

	$row_show = array();
	while ( $rowww = $result->fetch_assoc() ) {
		$row_show = $rowww;
	}

	$sql2 = "SELECT * FROM oc_order_product WHERE order_id=".$order_id;
	$result2 = $con->query($sql2);
	while ($rowww = $result2->fetch_assoc()) {
		$order_product[] = $rowww;
	}
	
	for ($i=0; $i < count($order_product); $i++) { 
		if ($order_product[$i]['ordermeals']) {
			$order_meals = explode(',', $order_product[$i]['ordermeals']);
			foreach ($order_meals as $key => $value) {
				$value = intval($value);
				$sql_order_meals = "SELECT * FROM oc_meal WHERE meal_id=".$value;
				$result_order_meals = $con->query($sql_order_meals);
				while ($row_meal = $result_order_meals->fetch_assoc()) {
					$row_order_meal = $row_meal;
				}
				array_push($order_product[$i], $row_order_meal);
			}
		}
	}

	$sql_address = "SELECT * FROM oc_address WHERE customer_id=".$row_show["customer_id"];
	$result_address = $con->query($sql_address);
	while ($row_address = $result_address->fetch_assoc()) {
		$order_addresses[]=$row_address;
	}
	foreach ($order_addresses as $order_address) {
		if ($order_address["address_1"] == $row_show["payment_address_1"]) {
			$address = $order_address;
		}
	}

	$sql_setting = "SELECT * FROM oc_setting";
	$result_setting = $con->query($sql_setting);
	while ($row_setting = $result_setting->fetch_assoc()) {
		$settings[] = $row_setting;
	}
	foreach ($settings as $setting) {
		if ($setting["key"] == "config_address") {
			$shopaddress = $setting;
		}
	}

	$final_output = array(
		'order' 	=> $row_show,
		'product'	=> $order_product,
		'address'	=> $address,
		'shop'		=> $shopaddress,
	 );

	print json_encode($final_output);*/
?>
<?php 
	$order_id = $_GET["order_id"];
	$con = mysqli_connect('localhost','dreamsushi94','eyelle8888',"dreamsushi94");

	if (!$con) {
		die('Could not connect:'.mysqli_error($con));
	}

	$con->query("SET CHARACTER SET utf8");

	$sql = "SELECT * FROM oc_order WHERE order_id=".intval($order_id);

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

        foreach ($order_addresses as $order_address) {
          if ($order_address["address_1"] == $row_show[0]["payment_address_1"]) {
            $order_adr_info = $order_address;
          }
        }


	$sql_setting = "SELECT * FROM oc_setting";
	$result_setting = $con->query($sql_setting);
	while ($row_setting = $result_setting->fetch_assoc()) {
		$settings[] = $row_setting;
	}

	foreach ($settings as $setting) {
		switch ($setting["key"]) {
			case 'config_address':
				$address = $setting["value"];
				break;

			case 'config_telephone':
				$telephone = $setting["value"];
				break;
			
			default:
				# code...
				break;
		}
	}
?>

<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/stylesheet.css">
<script src="js/jquery-1.js"></script>

<!--startprint-->
</head><body><div class="orderinfo">

<div class="orderfunc">
  <a class="button" onClick="window.print()"><span>Imprime</span></a>
  <!--<strong>订单状态 : </strong>-->
</div>

  <div class="box">
        <table class="list">

          <tbody>
            <tr>
              <td colspan="3" class="mid">
              	<strong>Informations sur le restaurant :</strong>
              </td>
            </tr>
            <tr>
              <td colspan="3" class="gauche">
              	:: <?php echo $row_show[0]["store_name"];?> ::
              </td>
            </tr>
            <tr>
              <td colspan="3" class="gauche">
              	 <?php echo $address;?></td>
            </tr>
            <tr>
              <td colspan="3" class="gauche">
              	  <?php echo $telephone?></td>
            </tr>
            <tr>
              <td colspan="3" class="gauche">
              	<?php echo $row_show[0]["store_url"]?>              </td>
            </tr>

            <tr>
              <td colspan="3" class="mid">
                <strong>Information sur la commande :</strong>
              </td>
            </tr>
            <tr>
              <td class="gauche">
                N° de commande :              </td>
              <td colspan="2" class="droite">
                #  <?php echo $row_show[0]["order_id"]?>             </td>
            </tr>
            <!--<tr>
              <td class="gauche">
                État de la commande :              </td>
              <td colspan="2" class="droite">
                 <?php print_r($order_status)?>             </td>
            </tr>-->
            <tr>
              <td class="gauche">
                Date d’ajout :              </td>
              <td colspan="2" class="droite">
                <?php echo $row_show[0]["date_added"]?>              </td>
            </tr>
            <tr>
              <td class="gauche">
                Temps pour commande :              </td>
              <td colspan="2" class="droite">
                <?php echo $row_show[0]["comment"]?>              </td>
            </tr>
           <!-- <tr>
              <td class="gauche">
                Mode de livraison :              </td>
              <td colspan="2" class="droite">
                Tsingtao33cl offert              </td>
            </tr>-->
           <!-- <tr>
              <td class="gauche">
                Couvert et serviette :              </td>
              <td colspan="2" class="droite">
                2              </td>
            </tr>-->
            
            <tr>
              <td colspan="3" class="mid">
              	<strong>Adresse de livraison :</strong>
              </td>
            </tr>
            <tr>
              <td class="gauche">
              	Nom :              </td>
              <td colspan="2" class="droite">
              	<?php echo $row_show[0]["payment_lastname"]?></td>
            </tr>
            <tr>
              <td class="gauche">
              	Prénom :              </td>
              <td colspan="2" class="droite">
              	 <?php echo $row_show[0]["payment_firstname"]?></td>
            </tr>
            <tr>
              <td class="gauche">
              	Téléphone :              </td>
              <td colspan="2" class="droite">
              	 <?php echo $row_show[0]["telephone"]?>               </td>
            </tr>
            <tr>
              <td class="gauche">
              	Courriel :              </td>
              <td colspan="2" class="droite">
              	<?php echo $row_show[0]["email"]?>             </td>
            </tr>
            <tr>
              <td class="gauche">
              	Adresse :              </td>
              <td colspan="2" class="droite">
              	<?php echo $row_show[0]["payment_address_1"]." ".$row_show[0]["payment_address_2"]?>            </td>
            </tr>
                        <tr>
              <td class="gauche">
              	Ville - Code postal :
              </td>
              <td colspan="2" class="droite">
              	 <?php echo $row_show[0]["payment_postcode"]?>             </td>
            </tr>
                                    <tr>
              <td class="gauche">
              	Batiment :              </td>
              <td colspan="2" class="droite">
              	<?php echo $order_adr_info["batiment"]?>              </td>
            </tr>
            <tr>
              <td class="gauche">
                Escalier :              </td>
              <td colspan="2" class="droite">
                <?php echo $order_adr_info["escalier"]?>               </td>
            </tr>
            <tr>
              <td class="gauche">
              	Interphone :              </td>
              <td colspan="2" class="droite">
              	<?php echo $order_adr_info["interphone"]?>               </td>
            </tr>
            <tr>
              <td class="gauche">
                Ascenceur :              </td>
              <td colspan="2" class="droite">
                <?php echo $order_adr_info["ascenceur"]?>               </td>
            </tr>
            <tr>
              <td class="gauche">
              	Digicode1 :              </td>
              <td colspan="2" class="droite">
              	<?php echo $order_adr_info["digicode1"]?>              </td>
            </tr>
                                    <tr>
              <td class="gauche">
              	Digicode2 :              </td>
              <td colspan="2" class="droite">
              	<?php echo $order_adr_info["digicode2"]?>               </td>
            </tr>
            <tr>
              <td class="gauche">
              	Etage :              </td>
              <td colspan="2" class="droite">
              	 <?php echo $order_adr_info["etage"]?>             </td>
            </tr>
            <tr>
              <td class="gauche">
                Porte :              </td>
              <td colspan="2" class="droite">
                <?php echo $order_adr_info["porte"]?>               </td>
            </tr>
                                       

            <tr>
              <td colspan="3" class="mid">
              	<strong>Plats commandés :</strong>
              </td>
            </tr>
            <tr>
              <td class="gauche">
              	Plats              </td>
              <td class="droite">Modèle / Quantité</td>
              <td class="droite">
              	Total              </td>
            </tr>
            <?php $total_all=0;?>
            <?php foreach ($order_product as $product) { ?>
                        <tr>
              <td class="gauche">
              	<?php echo $product['name']?><br/>  
                <?php if(isset($product['meals'])){
                  foreach ($product['meals'] as $key_meal => $value_meal) {
                    ?>
                    - <small><?php echo $value_meal['name'];?></small><br />
                    <?php
                  }
                  }?>                            
              </td>
              <td class="droite"><?php echo $product['model']?> &nbsp;&nbsp;X&nbsp;&nbsp;<?php echo $product['quantity']?></td>
              <td class="droite">
              	<?php echo $product['total']?>           </td>
            </tr>
            
             <?php $total_all+=$product['total'] ;} ?>
                        
              <tr>
              <td colspan="2" class="gauche">Sous-total </td>
              <td class="droite"><?php echo $total_all?></td>
            </tr>
            <?php if($fulls){?>
            <tr>
            	<td class="gauche" >促销活动</td>
            	<td colspan="2" class="gauche" align="right" style="padding-right:10px;"><?php echo $fulls[0];?></td>
            </tr>
            <?php }?>
                   <!--   <tr>
              <td colspan="2" class="gauche">Tsingtao33cl offert</td>
              <td class="droite">0,00€</td>
            </tr>
                      <tr>
              <td colspan="2" class="gauche">Total </td>
              <td class="droite">47,50€</td>
            </tr>-->
                      <tr>
              <td colspan="2" class="gauche">Mode de paiement :</td>
              <td class="droite"><?php echo $row_show[0]["payment_method"]?></td>
            </tr>
          </tbody>
        </table>
  </div>
</div>
<!--endprint--> 
<div id='history'></div>
<script type="text/javascript">
function doPrint() { 
bdhtml=window.document.body.innerHTML; 
sprnstr="<!--startprint-->"; 
eprnstr="<!--endprint-->"; 
prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17); 
prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr)); 
window.document.body.innerHTML=prnhtml; 
window.print(); 
}
</script> </body></html>
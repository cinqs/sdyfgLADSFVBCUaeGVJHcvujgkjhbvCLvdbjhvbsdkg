<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/stylesheet.css">
<script src="js/jquery-1.js"></script>

<!--startprint-->
</head><body><div class="orderinfo">

<div class="orderfunc">
  <a class="button" onClick="window.print()"><span>Imprime</span></a>
  Notification client :<input checked="checked" name="notify" value="1" type="checkbox">
  <!--<strong>订单状态 : </strong>-->
  <select name="order_status_id">
              
                   <?php foreach ($order_statuses as $order_status1) { ?>
                  <?php if ($order_status1['order_status_id'] == $filter_order_status_id) { ?>
                  <option value="<?php echo $order_status1['order_status_id']; ?>" selected="selected"><?php echo $order_status1['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $order_status1['order_status_id']; ?>"><?php echo $order_status1['name']; ?></option>
                  <?php } ?>
                  <?php } ?>   
            </select>
  <a class="button" id="button-history"><span>Confirm</span></a>
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
              	:: <?php echo $this->config->get('config_name');?> ::
              </td>
            </tr>
            <tr>
              <td colspan="3" class="gauche">
              	 <?php echo $store_address?>         </td>
            </tr>
            <tr>
              <td colspan="3" class="gauche">
              	  <?php echo $store_telephone?></td>
            </tr>
            <tr>
              <td colspan="3" class="gauche">
              	<?php echo $store_url?>              </td>
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
                #  <?php echo $order_id?>             </td>
            </tr>
            <tr>
              <td class="gauche">
                État de la commande :              </td>
              <td colspan="2" class="droite">
                 <?php print_r($order_status)?>             </td>
            </tr>
            <tr>
              <td class="gauche">
                Date d’ajout :              </td>
              <td colspan="2" class="droite">
                <?php echo $date_added?>              </td>
            </tr>
            <tr>
              <td class="gauche">
                Temps pour commande :              </td>
              <td colspan="2" class="droite">
                <?php echo $comment?>              </td>
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
              	<?php echo $lastname?></td>
            </tr>
            <tr>
              <td class="gauche">
              	Prénom :              </td>
              <td colspan="2" class="droite">
              	 <?php echo $firstname?></td>
            </tr>
            <tr>
              <td class="gauche">
              	Téléphone :              </td>
              <td colspan="2" class="droite">
              	 <?php echo $telephone?>               </td>
            </tr>
            <tr>
              <td class="gauche">
              	Courriel :              </td>
              <td colspan="2" class="droite">
              	<?php echo $email?>             </td>
            </tr>
            <tr>
              <td class="gauche">
              	Adresse :              </td>
              <td colspan="2" class="droite">
              	<?php echo $payment_address_1?>            </td>
            </tr>
                        <tr>
              <td class="gauche">
              	Ville - Code postal :
              </td>
              <td colspan="2" class="droite">
              	 <?php echo $payment_postcode?>             </td>
            </tr>
                                    <tr>
              <td class="gauche">
              	Batiment :              </td>
              <td colspan="2" class="droite">
              	<?php echo $shipping_batiment?>              </td>
            </tr>
                                                <tr>
              <td class="gauche">
              	Interphone :              </td>
              <td colspan="2" class="droite">
              	<?php echo $shipping_interphone?>               </td>
            </tr>
                                                <tr>
              <td class="gauche">
              	Digicode1 :              </td>
              <td colspan="2" class="droite">
              	<?php echo $shipping_digicode1?>              </td>
            </tr>
                                    <tr>
              <td class="gauche">
              	Digicode2 :              </td>
              <td colspan="2" class="droite">
              	<?php echo $shipping_digicode2?>               </td>
            </tr>
                                    <tr>
              <td class="gauche">
              	Etage :              </td>
              <td colspan="2" class="droite">
              	 <?php echo $shipping_etage?>             </td>
            </tr>
                                       

            <tr>
              <td colspan="3" class="mid">
              	<strong>Plats commandés :</strong>
              </td>
            </tr>
            <tr>
              <td class="gauche">
              	Plats              </td>
              <td class="droite">Quantité</td>
              <td class="droite">
              	Total              </td>
            </tr>
            <?php $total_all=0; $additional = array();?>
            <?php foreach ($products as $product) { 
              if ($product['model'] != 'additional') {
              ?>
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
                  <td class="droite"><?php echo $product['total']?></td>
                </tr>
            
             <?php }else{
                  $additional[] = $product;
             }

             $total_all+=$product['total'] ;} ?>
                        
            <?php foreach ($totals as $total) {?>
              <tr>
                <td colspan="2" class="gauche"><?=$total['title']?></td>
                <td class="droite"><?=$total['text']?></td>
              </tr>
            <?php }?>
            <?php if (count($additional)) {
              foreach ($additional as $addition) {?>
                <tr>
                  <td colspan="2"><?=$addition['name']?></td>
                  <td class="droite"><?=$addition['quantity']?></td>
                </tr>
              <?php }
            }?>
            <?php if($fulls){?>
            <tr>
            	<td class="gauche" >Promo</td>
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
              <td class="droite"><?php echo $payment_method?></td>
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
</script>

<script type="text/javascript">   
$('#history').load('index.php?route=sale/order/history&token=<?php echo $token ?>');

$('#button-history').live('click', function() {
  $.ajax({
    url: 'index.php?route=sale/order/history&token=<?php echo $token ?>&order_id=<?php echo $order_id;?>',
    type: 'post',
    dataType: 'html',
    data: 'order_status_id=' + encodeURIComponent($('select[name=\'order_status_id\']').val()) + '&notify=' + encodeURIComponent($('input[name=\'notify\']').attr('checked') ? 1 : 0) + '&append=' + encodeURIComponent($('input[name=\'append\']').attr('checked') ? 1 : 0) ,
    beforeSend: function() {
      $('.success, .warning').remove();
      $('#button-history').attr('disabled', true);
      $('#history').prepend('<div class="attention"><img src="view/image/loading.gif" alt="" /> Veuillez patienter !</div>');
    },
    complete: function() {
      $('#button-history').attr('disabled', false);
      $('.attention').remove();
    },
    success: function(html) {
      $('#history').html(html);
      
      $('textarea[name=\'comment\']').val('');
      
      $('#order-status').html($('select[name=\'order_status_id\'] option:selected').text());
    	window.location.href="index.php?route=report/newreport&token=<?php echo $token ?>";
    }
  });
});
</script> </body></html>
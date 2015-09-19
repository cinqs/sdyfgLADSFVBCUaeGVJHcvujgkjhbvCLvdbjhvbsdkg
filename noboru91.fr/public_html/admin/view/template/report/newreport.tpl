<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html><head>

<link rel="stylesheet" type="text/css" href="view/stylesheet/stylesheet.css" />

<script type="text/javascript" src="view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="view/javascript/jquery/ui/external/jquery.bgiframe-2.1.2.js"></script>
<script type="text/javascript" src="view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="view/javascript/jquery/superfish/js/superfish.js"></script>
<script type="text/javascript" src="js/deployJava.js"></script>
<script type="text/javascript" src="js/html2canvas.js"></script>
  <script type="text/javascript" src="js/jquery.plugin.html2canvas.js"></script>

<script type="text/javascript"><!--
function filter() {
  url = 'index.php?route=report/newreport&token=<?php echo $token; ?>';
  
  var filter_date_start = $('input[name=\'filter_date_start\']').attr('value');
  
  if (filter_date_start) {
    url += '&filter_date_start=' + encodeURIComponent(filter_date_start);
  }

  var filter_date_end = $('input[name=\'filter_date_end\']').attr('value');
  
  if (filter_date_end) {
    url += '&filter_date_end=' + encodeURIComponent(filter_date_end);
  }
  
  var filter_order_status_id = $('select[name=\'filter_order_status_id\']').attr('value');
  
  if (filter_order_status_id) {
    url += '&filter_order_status_id=' + encodeURIComponent(filter_order_status_id);
  } 

  location = url;
}
//--></script> 

<script type="text/javascript"><!--
$('#form input').keydown(function(e) {
  if (e.keyCode == 13) {
    filter();
  }
});
//--></script> 



</script> 
<script type="text/javascript">
$(document).ready(function() {
	$('#date-start').datepicker({dateFormat: 'yy-mm-dd'});
	
	$('#date-end').datepicker({dateFormat: 'yy-mm-dd'});
});
</script> 

<script type="text/javascript"><!--
setTimeout("self.location.reload();",30000);
//--></script>


</head><body><div class="newreport">

  <div class="newreport_header">
    <img src="img/logo.png" alt="">
    <h2><i class="icon icon-red icon-sent"></i>
           Noboru           :: <?php echo date("Y-m-d"); ?>   </h2>         
  </div>

  <div class="box">

    <div>
      <table class="form">
        <tbody><tr>
          <td class="newreport_filtre">Date Start:            <input  name="filter_date_start" value="<?php echo $filter_date_start; ?>" id="date-start" size="12" type="text"></td>
          <td class="newreport_filtre">Date End:            <input  name="filter_date_end" value="<?php echo $filter_date_end; ?>" id="date-end" size="12" type="text"></td>
          <td class="newreport_filtre">Order Status:            <select name="filter_order_status_id">
              <option selected="selected" value="0">All Statuses</option>
               <?php foreach ($order_statuses as $order_status) { ?>
              <?php if ($order_status['order_status_id'] == $filter_order_status_id) { ?>
              <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
              <?php } ?>
              <?php } ?>                      
                                                      
                                        </select></td>
          <td class="newreport_filtre"><button onclick="filter();" class="button">Filtrer</button></td>
        </tr>
      </tbody></table>
    </div>

    <div class="content">
      <form action="" method="post" enctype="multipart/form-data" id="form">
      <table class="list">
        <thead>
          <tr>
            <td class="left">Order ID</td>
            <td class="left">Customer Name</td>
            <td class="left">Address</td>
            <td class="left">Ville - Code postal</td>
            <td class="left">Phone</td>
            <td class="left">Total</td> 
            <td class="left">Date d'ajout</td> 
            <td class="left">Status</td>
            <td class="left">Livraison souhait / Emporter</td>
            <td class="left">Couv</td>
            <td class="left">Commentaire</td>
            <td class="left">bell</td>
            <td class="left">Map</td> 
          </tr>
        </thead>
        <tbody>
         <?php if ($customers) { ?>
          <?php foreach ($customers as $customer) { ?>
                                        <tr class="list">
            <!--<td style="text-align: center;"><input type="checkbox" name="selected[]" value="1410024656"></td>-->
            <td class="left"><a target="_blank" href="<?php echo $customer['href']; ?>"><?php echo $customer['order_id']; ?></a></td>
            <td class="left"><?php echo $customer['customer']; ?></td>
            <td class="left"><?php echo $customer['address']; ?></td>
            <td class="left"><?php echo $customer['postcode']; ?></td>
            <!--<td class="left">1192</td>-->
            <td class="left"><?php echo $customer['telephone']; ?></td>
            <td class="left"><?php echo $customer['total']; ?></td>
            <td class="left"><?php echo $customer['date_added']; ?></td>
            <td class="left" style="font-size:14px;color:blue" id="<?php echo $customer['status']; ?>"><?php echo $customer['status']; ?></td>
            <td class="left"><?php //echo $customer['customer']; ?></td>
            <td class="left"><?php //echo $customer['customer']; ?></td>
            <td class="left"><?php echo $customer['comment']; ?></td>
            <!--来新订单提示声音-->
            <?php
                if($customer['prompt'] ==1){
                  echo "<td class='left'><a class='prompt'>on</a></td>";
                }else{
                  echo "<td class='left'><a>off</a></td>"; 
                }
            ?>
            
            <td class="left"><a href="http://maps.google.com/maps?daddr=<?php echo $customer['address']; ?>,<?php echo $customer['postcode']; ?>&saddr=<?=$shop_address?>" target="_BLANK"><img src="view/image/gmaps.png" alt=""></a></td>
            <!--<td class="right"><a href="http://hayaci92.fr/J_hayaci/index.php?route=sale/order/info&amp;token=7cb367d2ab1e2cb0a57f17be3ef92954&amp;order_id=1410024656" class="button"><span>Visualiser</span></a></td>-->
          </tr>
            <?php } ?>
          <?php } else { ?>
          <tr>
            <td class="center" colspan="13"><?php echo $text_no_results; ?></td>
          </tr>
          <?php } ?>
                        </tbody>
      </table>
      </form> 
    </div>

     <div class="pagination"><?php echo $pagination; ?></div>

  </div>
</div>

<script language="javascript">
$(function(){
  var prompt = $('td a').hasClass('prompt');
  if(prompt){
    $('.newwav').html("<audio src='new.wav' autoplay='true' playcount='-1'></audio>");
     //document.write('<embed height="0" width="0" src="new.wav" autostart="true" />');
  }
/*    $('.prompt').click(function(){
      $(this).removeClass('prompt');
      $.get("index.php?route=report/newreport/ajaxBell", { token:"97d06e8e3c402710501f4896bcac2a28", time: "2pm" },
        function(data){
          alert(data);
        },"json");
      $(this).html('off');
  })*/

})
</script>
<div class="newwav"></div>
<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div></body></html>
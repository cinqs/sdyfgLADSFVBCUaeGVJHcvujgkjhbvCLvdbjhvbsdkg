<!--<h2><?php //echo $text_instruction; ?></h2>
<div class="content">
  <p><?php //echo $text_description; ?></p>
  <p><?php //echo $bank; ?></p>
  <p><?php //echo $text_payment; ?></p>
</div>-->
<h2>&nbsp;&nbsp;&nbsp;paiement en ligne</h2>
<div class="buttons">
  <div class="right">
    <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="button" nihao="nihao"/>
  </div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').bind('click', function() {/*
	$.ajax({ 
		type: 'get',
		url: 'index.php?route=payment/bank_transfer/confirm',
		success: function() {
			location = '<?php echo $continue; ?>';
		}		
	});*/
	$("#totalS").submit();
});
//--></script> 

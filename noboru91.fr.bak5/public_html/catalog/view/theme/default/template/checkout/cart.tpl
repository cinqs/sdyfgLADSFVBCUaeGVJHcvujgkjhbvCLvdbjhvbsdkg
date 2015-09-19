<?php echo $header; ?>
<div id="main" role="main" class="cart-main">

	<div class="container" id="cart-container">
	<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><i class="fa fa-times"></i></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
		<div class="row sidebar_left ">

			<div class="column_center">
				<div class="col-sm-1"></div>
				<div id="main_content" class="col-sm-8">

					<div class="cart-scope">

						<div class="page_header">
						  <h1 class="page_heading"><?php //echo $heading_title; ?>MON PANIER</h1>
						</div>
						<div class="page_content">
							<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
								<div class="cart-list">
										<?php $additional=array();$additionals=array();?>
										<?php foreach ($products as $product) { ?>
										<?php if ($product['key'] != 238 && $product['key'] != 239 && $product['key'] != 240 && $product['key'] != 241 && $product['key'] != 242) {?>
										<div class="row cart-item">
											<div class="col-lg-2 col-md-2 col-sm-2">
												<div class="item_image">
												<?php if ($product['thumb']) { ?>
												    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
												 <?php } ?>
												</div>
											</div>
											<div class="col-lg-10 col-md-10 col-sm-10">
												<div class="item_remove pull-right">
													<a href="<?php echo $product['remove']; ?>"><i class="fa fa-times"></i></a>
												</div>

												<div class="product_name"> 
													<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
													<?php if(!empty($product['meals'])){ ?>
													<div>
													<?php foreach ($product['meals'] as $key_meals => $value_meals) { ?>
																										
													 -
													<small>PLATS AU CHOIX: <?php echo $value_meals['name'];?></small>
													<br>
	                                                <?php }?>
													</div>
													<?php }?>

												</div><!--
												<h3 class="item_vendor"><?php echo $this->config->get('config_name');?></h3>-->
												<div class="item_price">
													<div class="row">
														<div class="col-sm-3">
															<div class="price">
																<span data-currency="GBP" data-currency-gbp="&amp;pound;11.17" data-currency-usd="$18.00" class="money"><?php echo $product['price']; ?></span>
															</div>
														</div>
														<div class="col-sm-6">
															<div class="qty">
																<label for="quantity[<?php echo $product['key']; ?>]" id='label_cart_update'>
																	<?php echo $column_quantity; ?>:
																	<input name="quantity[<?php echo $product['key']; ?>]" id="<?php echo $product['key']; ?>" value="<?php echo $product['quantity']; ?>" class="input-small form-control" type="number">
																	<i class="fa fa-refresh"></i>
																</label>
																 <?php if (!$product['stock']) { ?>
													              <span class="stock">***</span>
													              <?php } ?>
													            <input type="image" style="margin:12px 0 0 10px" src="catalog/view/theme/default/image/update.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />

															</div>
															  
														</div>
														<div class="col-sm-3">
															<h3>
																<?php echo $column_total; ?>:
																<span data-currency="GBP" data-currency-gbp="&amp;pound;11.17" data-currency-usd="$18.00" class="money"><?php echo $product['total']; ?></span>
															</h3>
														</div>
													</div>
													<div class="row">
														
													</div>
												</div>

											</div>
										</div>
										<?php }else{
												$additional['name'] = $product['name'];
												$additional['quantity'] = $product['quantity'];
												array_push($additionals, $additional);
											}?>
   										<?php } ?>
   										
								</div>
							</form>
  <?php if ($coupon_status || $voucher_status || $reward_status || $shipping_status || $full) { ?><!--
  <h2 style="margin-top:30px;"><?php echo $text_next; ?></h2>
  <div class="content">
    <p><?php echo $text_next_choice; ?></p>
    <table class="radio">
      <?php if ($coupon_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'coupon') { ?>
          <input type="radio" name="next" value="coupon" id="use_coupon" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="coupon" id="use_coupon" />
          <?php } ?></td>
        <td><label for="use_coupon"><?php echo $text_use_coupon; ?></label></td>
      </tr>
      <?php } ?>
 
      <?php if ($full) { ?>
      <tr class="highlight">
        <td><input type="radio" name="next" value="full" id="use_full" /></td>
        <td><label for="use_full">achetez et présente</label></td>
      </tr>
      <?php } ?>

      <?php if ($reward_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'reward') { ?>
          <input type="radio" name="next" value="reward" id="use_reward" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="reward" id="use_reward" />
          <?php } ?></td>
        <td><label for="use_reward"><?php echo $text_use_reward; ?></label></td>
      </tr>
      <?php } ?>
      <?php if ($shipping_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'shipping') { ?>
          <input type="radio" name="next" value="shipping" id="shipping_estimate" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="shipping" id="shipping_estimate" />
          <?php } ?></td>
        <td><label for="shipping_estimate"><?php echo $text_shipping_estimate; ?></label></td>
      </tr>
      <?php } ?>
    </table>
  </div>-->
  <div class="cart-module">
    <div id="coupon" class="content" style="display: <?php echo ($next == 'coupon' ? 'block' : 'none'); ?>;">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <?php echo $entry_coupon; ?>&nbsp;
        <input type="text" name="coupon" value="<?php echo $coupon; ?>" />
        <input type="hidden" name="next" value="coupon" />
        &nbsp;
        <input type="submit" value="<?php echo $button_coupon; ?>" class="button" />
      </form>
    </div>
    <div id="voucher" class="content" style="display: <?php echo ($next == 'voucher' ? 'block' : 'none'); ?>;">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <?php echo $entry_voucher; ?>&nbsp;
        <input type="text" name="voucher" value="<?php echo $voucher; ?>" />
        <input type="hidden" name="next" value="voucher" />
        &nbsp;
        <input type="submit" value="<?php echo $button_voucher; ?>" class="button" />
      </form>
    </div>
    <div id="full" class="content" style="display: <?php echo ($next == 'full' ? 'block' : 'none'); ?>;">
	<?php foreach ($full as $fu) { ?>
	<label><input type="radio" name="full"  value="<?php echo $fu[1]; ?>" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $fu[0]; ?></label>
	<?php } ?>
    </div>
    <div id="reward" class="content" style="display: <?php echo ($next == 'reward' ? 'block' : 'none'); ?>;">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <?php echo $entry_reward; ?>&nbsp;
        <input type="text" name="reward" value="<?php echo $reward; ?>" />
        <input type="hidden" name="next" value="reward" />
        &nbsp;
        <input type="submit" value="<?php echo $button_reward; ?>" class="button" />
      </form>
    </div>
    <div id="shipping" class="content" style="display: <?php echo ($next == 'shipping' ? 'block' : 'none'); ?>;">
      <p><?php echo $text_shipping_detail; ?></p>
      <table>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_country; ?></td>
          <td><select name="country_id">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($countries as $country) { ?>
              <?php if ($country['country_id'] == $country_id) { ?>
              <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_zone; ?></td>
          <td><select name="zone_id">
            </select></td>
        </tr>
        <tr>
          <td><span id="postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></td>
          <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" /></td>
        </tr>
      </table>
      <input type="button" value="<?php echo $button_quote; ?>" id="button-quote" class="button" />
    </div>
  </div>
  <?php } ?>


    


								<div class="cart_subtotal">
								 <?php 
								 	$total_money = round(floatval(str_ireplace(",", ".", $totals[0]['text'])),2);
								 ?>
								 
								 <div class="row">
								 	<div class="col-sm-3"></div>
								 	<div class="col-sm-6"></div>
								 	<div class="col-sm-3">
								 		<h3>
										 	<?php echo $totals[1]['title'];?>
										 	<span class="money"><?php echo $total_money."€";?></span>
										</h3>
								 	</div>
								 </div>
								</div>
								<div class="row cart-item">
									<div class="col-sm-8">
										<h3>PRODUITS ANNEXES OFFERTS</h3>
									</div>
									<div class="col-sm-4">
										<table id="cart_addition_table">
										<?php foreach ($additionals as $addition) {?>
										<tr>
											<td><?php echo $addition['name'];?></td>
											<td><?php echo $addition['quantity'];?></td>
										</tr>
										<?php }?>
									</table>
									</div>
								</div>
								<?php if ($total_money < 15) {?>
									<div class="cart_buttons">
										<p style="color:red;font-weight:700">Livraison gratuite à partir de 15€ </p>
										<a href="<?php echo $continue; ?>"><?php echo $button_shopping; ?></a>
									</div>
								<?php }else{?>
									<div class="cart_buttons">
									<p style="color:red;font-weight:700">Livraison gratuite à partir de 15€ </p>
								<a href="<?php echo $continue; ?>"><?php echo $button_shopping; ?></a>
									<span class="or">or</span>
									<a id="aa" href="<?php echo $checkout; ?>" value="Check out" class="button" type="submit"><?php echo $button_checkout; ?></a>
								</div>
									<?php }?>
								

								<!-- 
								<div class="cart_instructions">
									<label>Special instructions for seller</label>
									<textarea class="form-control" name="note"></textarea>
								</div>
								 -->
						





						</div>

					</div>

				</div>
				<div class="col-sm-3"></div>
			</div>






		</div>

	</div>
</div>
<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});

$("#use_full").bind('click',function(){
	var full =parseInt(this.value);
	var total_money= "<?php echo $totals[0]['text']?>";
	    total_money =parseInt(total_money.substr(0,total_money.length-1));
	var full_a=$("input[name='full']");
	for(var i=0;i<=full_a.length;i++){
			if(total_money < parseInt($(full_a[i]).val())){
					$(full_a[i]).attr({ "disabled": "disabled" });
				}
		}
	
// 	if(total_money >= full){

// 		$('.btn,.btn-primary').removeAttr('disabled');
// 		$(".btn,.btn-primary").hover(function(){
			
// 			$(this).css({"border-color":"#333333","background": "#333333","color":"#fff"});
// 			},function(){
				
// 			$(this).css({"border-color":"#e5e5e5","background": "#e5e5e5"})
// 		})


// 	}else{
// 		alert("金额未满活动要求");
// 		$(".btn,.btn-primary").attr({ "disabled": "disabled" }).css({"border-color":"#e5e5e5","background": "#e5e5e5"});


// 	}

	
})
$("input[name='full']").click(function(){
	$.ajax({
		url: 'index.php?route=checkout/cart/full',
		type: 'post',
		data: 'full=' + $(this).val(),
		dataType: 'json',				
		success: function(json) {
		}
	})
});

//--></script>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				html  = '<h2><?php echo $text_shipping_method; ?></h2>';
				html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <table class="radio">';
				
				for (i in json['shipping_method']) {
					html += '<tr>';
					html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
					html += '</tr>';
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<tr class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
							} else {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
							}
								
							html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
							html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
							html += '</tr>';
						}		
					} else {
						html += '<tr>';
						html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
						html += '</tr>';						
					}
				}
				
				html += '  </table>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>

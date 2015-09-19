<?php echo $header; ?>
			<!-- MAIN CONTENT -->
			<div id="main" role="main">
				<div class="main_bg"></div>

				<div class="container">
				<div id="notification" ></div>	
				  <div class="breadcrumb">
				    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
				    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
				    <?php } ?>
				  </div>

					<div class="row sidebar_left ">

						<div class="column_center">
							<div id="main_content" class="col-sm-9">

								<div itemscope="" itemtype="http://schema.org/Product" class="product-scope">

									<meta itemprop="url" content="http://tm-shopify019-food.myshopify.com/products/aidells-all-natural-sausages">
									<meta itemprop="image" content="http://cdn.shopify.com/s/files/1/0379/4525/products/aidells_all_natural_sausages_grande.jpeg?v=1393029192">

									<div class="product_wrap">

										<div class="row">

 											<?php if ($thumb || $images) { ?>
											<div id="product_image-container" class="col-sm-5">

												<div class="product_image">
													<div class="bx-wrapper" style="max-width: 100%;">
														<div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative;">
														<?php if ($images) { ?>
															<!--<ul class="bxslider" style="width: 645%; position: relative; -webkit-transition: 0s; transition: 0s; -webkit-transform: translate3d(-343px, 0px, 0px);">
														        <?php foreach ($images as $image) { ?>
																<li class="lastItem bx-clone" style="float: left; list-style: none; position: relative; width: 343px;">
																	<a rel="product_images" class="fancybox" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
																		<img src="<?php echo $image['thumb']; ?>" alt="<?php echo $heading_title; ?>"></a>
																</li>
																<?php } ?>



															</ul>-->
															<a rel="product_images" class="fancybox" href="<?php echo $images[0]['popup']; ?>" title="<?php echo $heading_title; ?>">
																		<img src="<?php echo $images[0]['popup']; ?>" alt="<?php echo $heading_title; ?>"></a>
															<?php } ?>
														</div>
														<div class="bx-controls bx-has-controls-direction">
															<div class="bx-controls-direction">
															</div>
														</div>
													</div>
												</div>
												<?php if ($images) { ?>
												<div id="bx-pager" class="product_image-additioanl">
												  <?php foreach ($images as $k=>$image) { ?>
													<a href="" data-slide-index="<?php echo $k;?>" class="active"><img src="<?php echo $image['thumb']; ?>" alt="<?php echo $heading_title; ?>"></a>
												  <?php } ?>
												</div>
												<?php } ?>
											</div>
											
											  <?php } ?>
											
											<!-- #product-photos -->
											<div class="col-sm-7">
												<div itemprop="name" class="product_name"><?php echo $heading_title; ?></div>
												<form action="" method="post" enctype="multipart/form-data" class="form-horizontal" id="product-actions">
													<div class="options clearfix">
														<div id="product_price">
															<p class="price product-price">
															<?php if (!$special) { ?>
													        <span class="money" data-currency-usd="<?php echo $price; ?>" data-currency="USD"><?php echo $price; ?></span>
													        <?php } else { ?>
													        <span class="money"><?php echo $special; ?></span> <span class="money compare-at-price"><?php echo $price; ?></span>
													        <?php } ?>
															</p>
														</div>

														<div class="variants-wrapper clearfix visuallyhidden">
															<div class="selector-wrapper">
																<select class="single-option-selector" data-option="option1" id="product-select-option-0">
																	<option value="Default">Default</option>
																</select>
															</div>
															<select id="product-select" name="id" style="display: none;">

																<option value="559584109">Default - $9.00</option>

															</select>
														</div>
                                                        <!--套餐选择-->
											            <div class="options set-meal">
											            	<?php
                                                            if(!empty($setmeals)){
											            	foreach ($setmeals as $value) {?>
											                <div class="option form-group" id="option-<?php echo $value;?>">
											                    <label><span class="required">*</span>PLATS AU CHOIX:</label><br>
											                    <select name="option[<?php echo $value;?>]" class="form-control">
											                        <option value="0"> --- Veuillez choisir --- </option>
											                    	<?php
											                         if(!empty($meals)){
											                    	 foreach ($meals as $k => $v){ 
 																	if(in_array($value,$v['setmeal'])){?>

											                        <option value="<?php echo $v['meal_id']?>"><?php echo $v['name'];?></option>

											                    	<?php }}}?>

											                    </select>
											                </div>
											                <div class="alert alert-danger">PLATS AU CHOIX requis !</div>
											      			<?php }}?>
											            </div>
                                                 
														<div id="purchase">
															<label for="quantity"><?php echo $text_qty; ?></label>
															<input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
															<input min="1" type="number" id="quantity" name="quantity" value="<?php echo $minimum; ?>" class="form-control input-small">
															 <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="btn btn-black confine" key_temp="<?php echo $temp?>" is_temp="<?php echo $is_temp?>" />
														</div>

													</div>
													<!-- /.options -->
												</form>
												<!--
												<div class="product_details">
													<div class="product_type">
														<?php echo $text_type;?>
														<a href="<?php echo $Categoryname['href'];?>" title="Meat"><?php echo $Categoryname['text'];?></a>
													</div>
													<div class="product_vendor">
														<?php echo $vendor;?>
														<a href="<?php echo $home; ?>"><?php echo $name; ?></a>
													</div>
												</div>

												<div id="product_description" class="rte" itemprop="description">
													<h4><?php echo $tab_description; ?>:</h4>
													<?php echo $description; ?>
												</div>
												-->
											</div>
											<!--
											<div class="row-fluid">
												<div class="span12">

													<div class="pagination pagination__product">
														<ul>    
										                    <li class="left-arrow firstItem"><span class="left"><?php if($prev_product){?><a href="<?php echo $prev_product['href'];?>" title="<?php echo $prev_product['text_prev'];?>"><?php echo $prev_product['text_prev'];?></a><?php }?></span></li>
										                    <li class="right-arrow lastItem"><span class="right"><?php if($next_product){?><a href="<?php echo $next_product['href'];?>" title="<?php echo $next_product['text_next'];?>"><?php echo $next_product['text_next'];?></a><?php }?></span></li>
										                </ul>
													</div>

												</div>
											</div>
											-->
										</div>

									</div>

								</div>
								<?php //echo $content_bottom;?>

								<script>
jQuery(function($) {
  
  $('.bxslider').bxSlider({
    pagerCustom: '#bx-pager'
  });

  $("a.fancybox").fancybox({
    'transitionIn'  : 'elastic',
    'transitionOut' : 'elastic',
    'speedIn'   : 600, 
    'speedOut'    : 200, 
    'overlayShow' : true
  });
});
</script>

								<script>
  var selectCallback = function(variant, selector) {
    if (variant && variant.available) {
      jQuery('#add-to-cart').removeAttr('disabled').removeClass('disabled'); // remove unavailable class from add-to-cart button, and re-enable button
      if(variant.price < variant.compare_at_price){
        jQuery('#product_price .price').html('<span class="money">' + Shopify.formatMoney(variant.price, "${{amount}}") + '</span><span class="money compare-at-price">' + Shopify.formatMoney(variant.compare_at_price, "${{amount}}") + '</span>');
      } else {
        jQuery('#product_price .price').html('<span class="money">' + Shopify.formatMoney(variant.price, "${{amount}}") + '</span>');
      }
    } else {
      jQuery('#add-to-cart').addClass('disabled').attr('disabled', 'disabled'); // set add-to-cart button to unavailable class and disable button
      var message = variant ? "Sold Out" : "Unavailable";
      jQuery('#product_price .price').text(message);
    }
  };
  
  jQuery(document).ready(function($){
    new Shopify.OptionSelectors("product-select", { product: {"id":246034609,"title":"Aidells All Natural Sausages","handle":"aidells-all-natural-sausages","description":"\u003Cp\u003EAperiam, dignissimos, impedit nulla consequuntur consequatur maxime laborum. Quia, totam, odio, repellendus nostrum dolores asperiores deleniti ipsam suscipit dolorum optio molestiae distinctio in sunt eius necessitatibus excepturi neque a numquam.\u003C/p\u003E","published_at":"2014-02-21T19:33:08-05:00","created_at":"2014-02-21T19:33:12-05:00","vendor":"Food","type":"Meat","tags":["Sit amet"],"price":900,"price_min":900,"price_max":900,"available":true,"price_varies":false,"compare_at_price":null,"compare_at_price_min":0,"compare_at_price_max":0,"compare_at_price_varies":false,"variants":[{"id":559584109,"title":"Default","options":["Default"],"option1":"Default","option2":null,"option3":null,"price":900,"weight":0,"compare_at_price":null,"inventory_quantity":100,"inventory_management":"shopify","inventory_policy":"deny","available":true,"sku":"","requires_shipping":true,"taxable":true,"barcode":null,"featured_image":null}],"images":["//cdn.shopify.com/s/files/1/0379/4525/products/aidells_all_natural_sausages.jpeg?v=1393029192","//cdn.shopify.com/s/files/1/0379/4525/products/aidells_all_natural_sausages_2.jpeg?v=1393029192","//cdn.shopify.com/s/files/1/0379/4525/products/aidells_all_natural_sausages_3.jpeg?v=1393029192"],"featured_image":"//cdn.shopify.com/s/files/1/0379/4525/products/aidells_all_natural_sausages.jpeg?v=1393029192","options":["Title"],"content":"\u003Cp\u003EAperiam, dignissimos, impedit nulla consequuntur consequatur maxime laborum. Quia, totam, odio, repellendus nostrum dolores asperiores deleniti ipsam suscipit dolorum optio molestiae distinctio in sunt eius necessitatibus excepturi neque a numquam.\u003C/p\u003E"}, onVariantSelected: selectCallback });

    // Add label if only one product option and it isn't 'Title'.
    
  
    // Auto-select first available variant on page load.
    
    
      
        
        
        $('.single-option-selector:eq(0)').val("Default").trigger('change');
        
      
    

  });
</script>

							</div>
						</div>

						<div class="column_left column col-sm-3">
									


							<?php echo $column_left; ?>


						</div>

					</div>

				</div>
			</div>
				<script src="catalog/view/javascript/jquery.bxslider.min.js" type="text/javascript"></script>
				
				
			<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {

	var option = $('.option');
	var v_meal='';
	for(var i=0;i < option.length;i++){
		var value = $(option[i]).find('select').val();
		if(value ==0){
			$(option[i]).next('.alert').show();
			return false;
		}else{
			$(option[i]).next('.alert').hide();
		    v_meal +=value+',';
		}
	}

	addToCart($(this).parent('#purchase').find("input[name='product_id']").val(),$(this).parent('#purchase').find("input[name='quantity']").val(),$(this).attr("key_temp"),v_meal);

});

//--></script>	
<script type="text/javascript">
	$(".close").live("click",function(){
			$("#notification").html("");
		})
		</script>	
<?php echo $footer; ?>
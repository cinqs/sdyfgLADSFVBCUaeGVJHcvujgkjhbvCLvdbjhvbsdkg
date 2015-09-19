<div class="widget widget__related-products">
	<div class="widget_header">
		<h3><?php echo $heading_title; ?></h3>
	</div>
	<div class="widget_content">
		<div class="row">
			<ul class="product-listing product-listing__related">
			  <?php foreach ($products as $product) { ?>
				<li class="product col-sm-3">
					<div>
						<?php if ($product['thumb']) { ?>
				        <div class="product_img"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
				        <?php } ?>
						<div class="product_info">
		 					<div class="product_name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
							
					        <?php if ($product['price']) { ?>
					        <div class="product_price">
					          <?php if (!$product['special']) { ?>
					          <span class="money" data-currency-usd="<?php echo $product['price']; ?>" data-currency="USD"><?php echo $product['price']; ?></span>
					          <?php } else { ?>
					         <span class="money"><?php echo $product['special']; ?></span>
					          <?php } ?>
					        </div>
					        <?php } ?>
						</div>
					</div>
				</li>
  				<?php } ?>
			</ul>
		</div>
	</div>

</div>
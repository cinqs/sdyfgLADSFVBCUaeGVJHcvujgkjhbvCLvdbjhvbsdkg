							<div class="widget widget__best-sellers">
								<h3 class="widget_header"><?php echo $heading_title; ?></h3>
								<div class="widget_content">
									<div class="product-listing product-listing__bestsellers">

									 <?php foreach ($products as $product) { ?>

										<div class="product">
       										<?php if ($product['thumb']) { ?>
											<div class="product_img">
												<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
											</div>
        									<?php } ?>
											<div class="product_name">
												<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
											</div>
									        <?php if ($product['price']) { ?>
									        <div class="product_price">
									          <?php if (!$product['special']) { ?>
									          <span class="money" data-currency-usd="<?php echo $product['price']; ?>" data-currency="USD"><?php echo $product['price']; ?></span>
									          <?php } else { ?>
									          <span class="money"><?php echo $product['special']; ?></span> <span class="compare-at-price"><?php echo $product['price']; ?></span>
									          <?php } ?>
									        </div>
									        <?php } ?>

										</div>

										<?php } ?>

									</div>
								</div>
							</div>
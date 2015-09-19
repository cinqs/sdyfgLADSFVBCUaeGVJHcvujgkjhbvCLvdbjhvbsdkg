						<div class="col-sm-3 col-xs-6 showcase_grid">
						<?php foreach ($products as $product) { ?>
							<div class="custom_showcase custom_showcase1">
								<a href="<?php echo $product['href']; ?>">
									<img src="<?php echo $product['thumb']; ?>">
									<?php if ($product['price']) { ?>
									<div class="banner_caption">
									<?php if (!$product['special']) { ?>
							         <h3><?php echo $product['price']; ?></h3> 
							         <?php } else { ?>
							         <h3><?php echo $product['special']; ?><span><?php echo $product['price']; ?></span></h3>
									 <?php } ?>
										<!--
										<h4>
											<?php echo $product['name'];?>
											<span>Shop Now!</span>
										</h4>
										-->
									</div>
									<?php } ?>	
								</a>
							</div>
						<?php } ?>
						</div>

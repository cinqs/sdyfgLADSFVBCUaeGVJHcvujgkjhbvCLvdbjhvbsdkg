						<div class="col-sm-3 col-xs-6 showcase_grid">
						    <?php foreach ($banners as $banner) { ?>				
							<div class="custom_showcase custom_showcase3">
								<a href="<?php echo $banner['link']; ?>">
									<img src="<?php echo $banner['image']; ?>">
									<div class="banner_caption">
									<!--
										<?php echo stripcslashes($banner['title']); ?>
										<h6>
											Shop Now! <i class="fa fa-angle-right"></i>
										</h6>
									-->	
									</div>
								</a>
							</div>
  						<?php } ?>
						</div>
					</div>
				</div>
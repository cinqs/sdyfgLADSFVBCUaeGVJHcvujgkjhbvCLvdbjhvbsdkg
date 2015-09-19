<?php echo $header; ?>
			<script type="text/javascript" src="catalog/view/theme/default/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
	<script type="text/javascript" src="catalog/view/theme/default/fancybox/jquery.fancybox-1.3.4.js"></script>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
	<script type="text/javascript">
    $(document).ready(function () {	
        $("a[rel=example_group]").fancybox({
            'transitionIn': 'elastic',
            'transitionOut': 'elastic',
            'titlePosition': 'over',
			'cyclic':'true',			
            'titleFormat': function (title, currentArray, currentIndex, currentOpts) {
                return '<div id="fancybox-title-over">'+(title)+'</div>';
            }
        });
    });
</script>
						<?php if ($categories) { ?>
						<div class="carteList">
							<?php foreach ($categories as $category) { ?>
								<?php if ($category['name'] != 'Additional') { ?>
									<div class="col-md-4 col-xs-6 item">
										<a href="<?php echo $category['href']; ?>">
											<div class="item-content">
												<div class="img">
													<img src="<?php echo $category['thumb']; ?>" alt=""></div>
												<h5 class="tit"><?php echo $category['name']; ?></h5>
											</div>
										</a>
									</div>
								<?php } ?>
							
							<?php } ?>
							<!-- item end -->
						</div>
						<?php }else{ ?>
						<div class="carteList">
							<?php foreach ($products as $product) { ?>
							<div class="col-md-4 col-xs-6 item">
								<?php //echo $product["des"];?>
								<a href="<?php echo $product['popup']?>">
									<div class="item-content">
										<div class="img">
											<div class="product_img">
				                              <a <?php
				                                  if ($breadcrumbs[1]['text'] != "Boissons et Dessert") {
				                                    echo 'rel="example_group" title="'.$product['des'].'" href="'.$product["popup"].'"';
				                                  }else{
				                                    echo "nothing";
				                                  }
				                                ?>
				                              >
				                           		     <?php if ($product['thumb']) { ?>
				                                  <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
				                                   <?php } ?>
				                              </a>
				                            </div>
										</div>
										<h5 class="tit"><?php echo $product['name']; ?></h5>
										<p class="product_links">
											<input type="hidden" name="product_id" value="<?php echo $product['product_id']; ?>">
											<input type="hidden" class="input-num" name="quantity" type="text" value="1" />
											<span class="price"><?php echo $product['price']; ?></span>
											<?php if ($product['des'] != "no_show") {?>
												<span class="icon btn-cart confine" key_temp="<?php echo $product['temp']?>" is_temp="<?php echo $product['is_temp']?>">ajouter</span>
											<?php }?>
											
										</p>
									</div>
								</a>
							</div>
							<?php } ?>
							<!-- item end -->
						</div>
						<?php }?>
					</div>
					<!-- carteRight end -->
				</div>
			</div>
			<!-- Popup   -->
			<div class="layer hide">
				<div class="carte-layer">
					<div class="layer-content">
						<div class="text-center"><h5 class="tit">confirmer La Commande</h5></div>
						<p class="p2">
							<i class="dot_icon"></i><span class="color-red">LIVRAISON a</span>
							20 rue de la saint denis 92390
						</p>
						<p class="p2">
							<i class="dot_icon"></i><span class="color-yellow">Delai de livraison</span>
							18:00-20:00
						</p>
						<div class="carte-table">
							<ul class="ul2">
								<li class="line">
									<span class="lb color-red bold">MK-CREVETTE</span>
									<span class="price color-red2">7,5</span>
									<span class="nombre">x2</span>
								</li>
								<li class="line">
									<span class="lb color-red bold">MK-CREVETTE</span>
									<span class="price color-red2">7,5</span>
									<span class="nombre">x2</span>
								</li>
								<li class="line">
									<span class="lb color-red bold">MK-CREVETTE</span>
									<span class="price color-red2">7,5</span>
									<span class="nombre">x2</span>
								</li>
								<li class="line">
									<span class="lb">MK-CREVETTE</span>
									<span class="num color-gray">4</span>
								</li>
								<li class="no-line marTop15">
									<span class="lb">PAIRE DE BAGUETTES</span>
									<span class="num">4</span>
								</li>
								<li class="no-line">
									<span class="lb">SAUCE  SUCREE</span>
									<span class="num">0</span>
								</li>
								<li class="no-line">
									<span class="lb">SAUCE SALEE</span>
									<span class="num">2(+1€)</span>
								</li>
								<li class="no-line">
									<span class="lb">GINGEMBRE</span>
									<span class="num">1(+0.5€)</span>
								</li>
								<li class="no-line line">
									<span class="lb">WASABI</span>
									<span class="num">0</span>
								</li>
								<div class="total">
									<span class="lf bold color-red">
										total
									</span>
									<span class="rg color-red2 bold">
										30.0
									</span>
								</div>
								<div class="com-btn">
									<a href="">Commander</a>
								</div>
							</ul><?php //echo $cart; ?>
						</div>
					</div>
					<div class="logo3">
						<img src="http://dreamsushi94.fr/catalog/view/theme/default/image/new/logo4.gif" alt="">
					</div>
					<i class="close-btn ">
						+
					</i>
				</div>
				<div class="mask"></div>
			</div>
		</section>
	</div>
	<!-- viewport -->
	<?php echo $footer; ?>
	<script type="text/javascript">
	$(document).ready(function(){
		//alert($("#cart_id a").attr("href"));
	});
	</script>

</body>
</html>
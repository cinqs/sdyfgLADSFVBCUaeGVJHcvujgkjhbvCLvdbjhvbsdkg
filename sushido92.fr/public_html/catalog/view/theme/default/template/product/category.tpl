<?php 
$deviceUse = "desktop";
$useragent=$_SERVER['HTTP_USER_AGENT'];
if(preg_match('/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|

plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i',$useragent)||preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|

yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el

(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|

\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|

ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|

pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm

(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx

(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i',substr($useragent,0,4)))
{
	$deviceUse = "mobile";
}
?>
<?php echo $header; $clear_line = 0;?>
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
			        random_num = Math.floor(Math.random() * 7) + 1  
			        $(".carteRight").css({
			        	"background-image":"url('./image/bdimg/bg"+random_num+".jpg')"
			        });
			    });
			</script>
						<?php if ($categories) { ?>
						<div class="carteList">
							<?php foreach ($categories as $category) { ?>
								<?php if ($category['name'] != 'Additional') { ?>
									<div class="col-md-4 item">
										<a href="<?php echo $category['href']; ?>">
											<div class="item-content">
												<div class="img">
													<img src="<?php echo $category['thumb']; ?>" alt=""></div>
												<h5 class="tit"><?php 
												echo $category['name']; ?></h5>
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
								<?php 
									if ($deviceUse == "mobile") {
										$line_num = 2;
									}else{
										$line_num = 3;
									}
									$clear_symbol = $clear_line%$line_num;
									if ($clear_symbol == 0) {?>
										<div class="clear"></div>
									<?php }
									$clear_line++;
								?>
								<?php //if (substr($_REQUEST["path"], 0, 2) == 56) {?>
									<div class="col-md-4 item">
										<a href="<?php echo $product['popup']?>">
											<div class="item-content">
												<div class="img">
													<div class="product_img">
						                              <a <?php
						                                  if ($breadcrumbs[1]['text'] != "Boissons et Dessert") {
						                                    echo 'rel="example_group" title="'.$product['des'].'" href="'.'http://'.$_SERVER['SERVER_NAME'].'/image/'.$product['original'].'"';
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
												<h5 class="tit bold"><?php echo $product['name'];?></h5>
												
												<marqueee><?php echo $product["description"];?></marqueee>
												<p class="product_links">
													<input type="hidden" name="product_id" value="<?php echo $product['product_id']; ?>">
													<input type="hidden" class="input-num" name="quantity" type="text" value="1" />
													<span class="price"><?php echo $product['price']; ?></span>
													<?php if ($product['des'] != "no_show") {?>
														
														<?php if (!$meal) {?>
															<span class="icon btn-cart confine" key_temp="<?php echo $product['temp']?>" is_temp="<?php echo $product['is_temp']?>">ajouter</span>
														<?php }else{?>
															<a class="btn confine " is_temp="<?php echo $product['is_temp']?>" href="<?php echo $product['href']; ?>" key_temp="<?php echo $product['temp']?>">
                                Ajouter au panier <i class="fa fa-angle-right"></i>
                              </a>
															<?php }?>
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

</body>
</html>
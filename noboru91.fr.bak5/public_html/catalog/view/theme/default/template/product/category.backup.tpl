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
              
      <?php if ($categories) { ?>
                     <div class="column_center">
                  <h2 class="page_heading"><?php echo $heading_title; ?></h2>
                  <div class="product-listing__index">
                    <div class="product-listing">
                      <div class="row lastItem firstItem">
                        <?php foreach ($categories as $category) { ?>
                        <div class="product col-sm-3">
                          <div>
                            <div class="product_img">
                              <a href="<?php echo $category['href']; ?>">
                         		 <?php if ($category['thumb']) { ?>
                                <img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>">
                                 <?php } ?>
                              </a>
                            </div>
                            <div class="product_name">
                             <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                            </div>
                          </div>
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                  </div>
                </div> 
	  <?php }else{ ?>
                <div class="column_center">
                  <h2 class="page_heading"><?php echo $heading_title; ?></h2>
                  <div class="product-listing__index">
                    <div class="product-listing">
                      <div class="row lastItem firstItem">
                       <?php foreach ($products as $product) { ?>
                        <div class="product col-sm-4">
                          <div>
                            <div class="product_img">
                              <a <?php
                                  if ($breadcrumbs[1]['text'] != "Boissons et Dessert") {
                                    echo "rel='example_group' title='".$product['des']."' href='".$product['popup']."'";
                                  }else{
                                    echo "nothing";
                                  }
                                ?>
                              >
                         		     <?php if ($product['thumb']) { ?>
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                                 <?php } ?>
                                 <?php if ($product['price']) { ?>
                                <div class="product_price">
                                  <?php if (!$product['special']) { ?>
						         <span class="money" data-currency-usd="<?php echo $product['price']; ?>"  data-currency="EUR"><?php echo $product['price']; ?></span>
						        <?php } else { ?>
						      	<span class="money" data-currency-usd="<?php echo $product['special']; ?>"  data-currency="EUR"><?php echo $product['special']; ?></span><span class="money compare-at-price" data-currency-usd="<?php echo $product['price']; ?>"  data-currency="EUR"><?php echo $product['price']; ?></span>
						        <?php } ?>
                                </div>
                                <?php } ?>
                              </a>
                            </div>
                            <div class="product_name">
                             <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                            </div>
                            <div class="product_links text-right">
                                <input type="hidden" name="product_id" value="<?php echo $product['product_id']; ?>">
                                <!-- START BUY -->
                                <?php if(!$meal){?>
                                 <button class="btn btn-cart confine" type="submit" key_temp="<?php echo $product['temp']?>" is_temp="<?php echo $product['is_temp']?>"></button>
                                <?php }else{?>
                              <a class="btn confine " is_temp="<?php echo $product['is_temp']?>" href="<?php echo $product['href']; ?>" key_temp="<?php echo $product['temp']?>">
                                view <i class="fa fa-angle-right"></i>
                              </a>
                                <?php }?>

                                <!-- END BUY -->
                                

                              
                              <div class="num">
                                <label for="quantity"><?php echo $text_quantity; ?></label>
                                <form name=form1 class="num form1">
                                <input class="input-num" name="quantity" type="text" value="1" />
                                <a class="glyphicon glyphicon-plus up" href="javascript:;"></a>
                                <a class="glyphicon glyphicon-minus down" href="javascript:;"></a>
                                </form>
                              </div>
                            </div>
                          </div>
                        </div>
 						<?php } ?>
                      </div>
                    </div>
                  </div>
                </div>
                
                  <div id="pagination"><?php echo $pagination; ?></div>	  
	  
	  
	  <?php }?>         
             </div>
              <div class="column_left column col-sm-3">
				        <?php echo $column_left; ?>
              </div>
            </div>
          </div>
        </div>
      </div>
<script type="text/javascript"><!--

$(".close").live("click",function(){
	$("#notification").html("");
})
//-->
</script>      
 <script>
	  $(function() {
	      $('.form1').each(function() {
	          var minEle = $(this).find('.down'),
	          addEle = $(this).find('.up'),
	          iptEle = $(this).find('.input-num');
	          addEle.on('click',function() {
	              iptEle.val(parseInt(iptEle.val()) + 1) 
	              if (parseInt(iptEle.val()) != 1) {
	                  minEle.attr('disabled', false);
	              }
	          })
	          minEle.on('click',function() {
	              if (parseInt(iptEle.val()) > 1) {
	                  iptEle.val(parseInt(iptEle.val()) - 1)
	              }
	              if (parseInt(iptEle.val()) == 1) {
	                  addEle.attr('disabled', false);
	              }
	          })
	      })
	  })
</script>
<?php echo $footer; ?>
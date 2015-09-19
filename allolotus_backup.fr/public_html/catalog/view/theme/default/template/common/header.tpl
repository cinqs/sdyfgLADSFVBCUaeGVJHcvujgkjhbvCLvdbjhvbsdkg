<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=no" >
	<title><?php echo $title; ?></title>
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/root.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/theme.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/grid.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/animate.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/css.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/customer.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/public.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/flexslider.css">
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	
	<link href="catalog/view/theme/default/stylesheet/style.css" rel="stylesheet" type="text/css" media="all">
	<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/jquery.min.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/root.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/wow.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/customer.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/jquery.flexslider.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/templatemo-script.js"></script>
	<script src="catalog/view/javascript/jquery.min.js" type="text/javascript"></script>
	<script src="catalog/view/javascript/bootstrap.min.js" type="text/javascript"></script>
	<script src="catalog/view/javascript/common.js" type="text/javascript"></script>

	<!--[if lt IE 9]>
	<script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="viewport">
		<section class="formPage">
			<div class="header">
				<!-- start navigation -->
				<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
					<div class="container" id="content_header">
						<div class="row" id="cate_row_restr_width_2">
							<div class="navbar-header">
								<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
									<span class="icon icon-bar"></span>
									<span class="icon icon-bar"></span>
									<span class="icon icon-bar"></span>
								</button>
								<a href="http://<?php echo $_SERVER['SERVER_NAME'];?>" class="navbar-brand">
									<span class="logo"><img class='auto_width' src="http://<?php echo $_SERVER['SERVER_NAME'];?>/image/logo_new.png" alt=""></span>
								</a>
								<!-- login-div -->
								<div class="login-suc-div" id="not_home_login">
										<ul id="loginornot">
											<?php if (!$logged) { ?>
										    <?php echo $text_welcome; ?>
										    <?php } else { ?>
										    <?php echo $text_logged; ?>
										    <?php } ?>
										</ul>
								</div>
							</div>
							<div class="collapse navbar-collapse">
								<ul class="nav navbar-nav navbar-right p-t-1"><!--
									<li>
							        	<a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/index.php?route=information/information&information_id=8">BUFFET</a>
							        </li>-->
									<?php foreach ($categories as $category) { ?>
										<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
							        <?php } ?>
							        <li>
							        	<a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/index.php?route=information/information&information_id=7">NOUS</a>
							        </li>
								</ul>
							</div>
						</div>
					</div>
				</nav>
				<!-- end navigation -->
			</div>
			<!-- header end -->
			<div class="container">
				<div class="row" id="cate_row_restr_width">
					<div class="carteLeft font14 col-md-4">
						<h5 class="color-yellow bold font16">Livraison  gratuite à partir de 15€</h5>
						<form action="http://<?php echo $_SERVER['SERVER_NAME'];?>/index.php?route=checkout/cart" method="post" enctype="multipart/form-data" id="cart_form">
						<h3 class="tb-icon"><a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/index.php?route=checkout/cart"> MON PANIER </a></h3>
						<div class="total-list-box">
							
							
								<table class='cart_class'>
									<?php 	$addictional_arrays = array();
											$sucre_qty 		= isset($sucre_qty)? $sucre_qty : 0;
											$p_de_bagu_qty 	= isset($p_de_bagu_qty)? $p_de_bagu_qty : 0;
											$sale_qty 		= isset($sale_qty)? $sale_qty : 0;
											$gingembre_qty 	= isset($gingembre_qty)? $gingembre_qty :0;
											$wasabi_qty 	= isset($wasabi_qty)? $wasabi_qty :0;
									?>
									<?php foreach ($productss as $product) {?>
										<?php //判断是否是sucre
											if ($product['key'] == 238) {
												$sucre_qty = $product['quantity'];
											}elseif ($product['key'] == 239) {//判断是否是sale
												$sale_qty = $product['quantity'];
											}elseif ($product['key'] == 241) {
												$gingembre_qty = $product['quantity'];
											}elseif ($product['key'] == 240) {
												$p_de_bagu_qty = $product['quantity'];
											}elseif ($product['key'] == 674) {
												$wasabi_qty = $product['quantity'];
											}
											$sucre_qty 		= isset($sucre_qty)? $sucre_qty : 0;
											$p_de_bagu_qty 	= isset($p_de_bagu_qty)? $p_de_bagu_qty : 0;
											$sale_qty 		= isset($sale_qty)? $sale_qty : 0;
											$gingembre_qty 	= isset($gingembre_qty)? $gingembre_qty :0;
											$wasabi_qty 	= isset($wasabi_qty)? $wasabi_qty :0;
										?>
										<?php if ($product['model'] != 'additional') { //如果不是甜的和咸的，就显示?>
										
										<tr>
											<td><?php echo $product['name']?></td>
											<td><i class="fa fa-times"></i> <?php echo $product['price'];?></td><!--
											<td><input name="quantity[<?php echo $product['key']; ?>]" id="<?php echo $product['key']; ?>" value="<?php echo $product['quantity']; ?>" class="update-cart input-small form-control" type="number" min="0"></td>-->
											<td>
												<span class="minusCart" name="<?=$product['key']?>" value="<?=$product['quantity']?>"><i class="fa fa-minus"></i></span>&nbsp;&nbsp;
												<span><?=$product['quantity']?></span>&nbsp;&nbsp;
												<span class="plusCart" name="<?=$product['key']?>" value="<?=$product['quantity']?>"><i class="fa fa-plus"></i></span>
											</td>
											<td><div class="delete_cart_menu" name="<?=$product['key']?>"><i class="fa fa-trash-o"></i></div></td>
										</tr>
										<?php }elseif ($product['model'] == 'additional') {
											array_push($addictional_arrays, $product);
										} ?>
									<?php } ?>
									<tr id="number_change">
										<td>Nombre de Pièce</td>
										<td></td>
										<td><?php 
										$number_of_piece = 0;
										foreach ($productss as $product) {
											if ($product['model'] != 'additional'){
												$number_of_piece += $product['quantity'];
											}
										}
										echo $number_of_piece;
										?></td>
										<td></td>
									</tr>
									<tr class="tr_special">
										<td>Paire De Baguettes</td>
										<td></td>
										<td>
											<span class="minusCart" name="240" value="<?=$p_de_bagu_qty?>"><i class="fa fa-minus"></i></span>&nbsp;&nbsp;
											<span><?=$p_de_bagu_qty?></span>&nbsp;&nbsp;
											<span class="plusCart" name="240" value="<?=$p_de_bagu_qty?>"><i class="fa fa-plus"></i></span>
										</td>
										<td><div class="delete_cart_menu"><i class="fa fa-trash-o"></i></div></td>
									</tr>
									<tr class="tr_special">
										<td>Sauce Sucre</td>
										<td></td>
										<td>
											<span class="minusCart" name="238" value="<?=$sucre_qty?>"><i class="fa fa-minus"></i></span>&nbsp;&nbsp;
											<span><?=$sucre_qty?></span>&nbsp;&nbsp;
											<span class="plusCart" name="238" value="<?=$sucre_qty?>"><i class="fa fa-plus"></i></span>
										</td>
										<td><div class="delete_cart_menu"><i class="fa fa-trash-o"></i></div></td>
									</tr>
									<tr class="tr_special">
										<td>Sauce Sale</td>
										<td></td>
										<td>
											<span class="minusCart" name="239" value="<?=$sale_qty?>"><i class="fa fa-minus"></i></span>&nbsp;&nbsp;
											<span><?=$sale_qty?></span>&nbsp;&nbsp;
											<span class="plusCart" name="239" value="<?=$sale_qty?>"><i class="fa fa-plus"></i></span>
										</td>
										<td><div class="delete_cart_menu"><i class="fa fa-trash-o"></i></div></td>
									</tr>
									
									<tr class="tr_special">
										<td>Gingembre</td>
										<td></td>
										<td>
											<span class="minusCart" name="241" value="<?=$gingembre_qty?>"><i class="fa fa-minus"></i></span>&nbsp;&nbsp;
											<span><?=$gingembre_qty?></span>&nbsp;&nbsp;
											<span class="plusCart" name="241" value="<?=$gingembre_qty?>"><i class="fa fa-plus"></i></span>
										</td>
										<td><div class="delete_cart_menu"><i class="fa fa-trash-o"></i></div></td>
									</tr>
									<tr class="tr_special">
										<td>Wasabi</td>
										<td></td>
										<td>
											<span class="minusCart" name="674" value="<?=$wasabi_qty?>"><i class="fa fa-minus"></i></span>&nbsp;&nbsp;
											<span><?=$wasabi_qty?></span>&nbsp;&nbsp;
											<span class="plusCart" name="674" value="<?=$wasabi_qty?>"><i class="fa fa-plus"></i></span>
										</td>
										<td><div class="delete_cart_menu"><i class="fa fa-trash-o"></i></div></td>
									</tr>
									<tr>
										
										
										<td></td>
										
										<td></td><td class="font_big">TOTAL</td>
										<td class="font_big"><?php echo $totals[1]['text'];?></td>
									</tr>
								</table>
								
							
						</div>
						<input type="submit" value="C'est bon" id="cart_form_submit">
						</form>
					</div>
					<!-- carteLeft end -->
					<div class="carteRight col-md-8">
						<div class="carte-nav animated fadeInUp" id="sub_menu_div">
							<div id="sub_menu_button"><i class="fa fa-bars"></i></div>
							<div id="sub_menu_menu">
								<?php 
									if (isset($path_number[0])) {
										$parent_cat_id = $path_number[0];
									}
									if (isset($path_number[1])) {
										$child_cat_id = $path_number[1];
									}
								?>
								<?php 
									if (isset($child_cat_id)) {
										foreach ($categories as $category) {
											if ($category["category_id"] == $parent_cat_id) {
												foreach ($category["children"] as $child) {
													if ($child['name'] != 'Additional') {
													//这是为了控制甜咸的目录不显示的
														if ($child["category_id"] == $child_cat_id) {
															echo "<a href='".$child["href"]."' class='cur'>".$child['name']."</a>";
														}else{
															echo "<a href='".$child["href"]."'>".$child['name']."</a>";
														}
													}
												}
											}
										}
									}
								?>
							</div>
						</div>
			<script type="text/javascript">
			$(document).ready(function(){
				$(".dropdown").mouseenter(function(){
					$(".dropdown-menu",this).show("slow");
					$(this).css({
						"border-left":"white 2px solid",
						"border-right":"white 2px solid",
					});
				});
				$(".dropdown").mouseleave(function(){
					$(".dropdown-menu",this).hide("slow");
					$(this).css({
						"border":"none",
					});
				});
			});
			</script>
			<script type="text/javascript">
			</script>
			<?php 
				date_default_timezone_set('Europe/Paris');  // PRC
				$week = date('w');
				$t = date('H:i');
				$settime_am = explode('-',$setting["config_horaire_AM_{$week}"]);
				$settime_pm = explode('-',$setting["config_horaire_PM_{$week}"]);
				if( $t>= intval($settime_am[0]) && $t<=intval($settime_am[1])  || $t>=intval($settime_pm[0]) && $t<=intval($settime_pm[1])){
		 	?>

<script type="text/javascript">
	
</script>		
  

<?php }else{ ?>
<script type="text/javascript">

$(function (){
	$(".confine").click(function(){
		if($(this).attr('is_temp')=="false"){
		     var top = ($(window).height() - $(".floatBox").height())/2;
		     var left = ($(window).width() - $(".floatBox").width())/2;   
		     $(".floatBox").css({left:left,top:top}).show(); 
			 $('.floatBoxBg').show();
			 if($(this).attr('key_temp')==1){
				 $(".soir").hide();
			 }else if($(this).attr('key_temp')==2){
				 $(".midi").hide();
			 }
			 $('.close-2').live('click',function(){
				 $(".floatBox").hide();
				 $('.floatBoxBg').hide();
			 });		
		}
	});
});
</script>
<div  class="floatBoxBg" style="display:none; opacity: 0.5;">
<div  class="floatBox" style="display:none;">
	<div  class="title">
		<h4>BOUTIQUE FERMER</h4>
		<span  class="closeDialog close-2">X</span>
	</div>
	<div class="content-2">
		<p>Nos Horaires</p>
		<p >MIDI:<?php echo $setting["config_horaire_AM_{$week}"];?></P>
		<p >SOIR:<?php echo $setting["config_horaire_PM_{$week}"];?></p>
      
		<BUTTON class="button close-2">Continuer</BUTTON>
	</div>
</div>
</div>
<?php } ?>		
<div  class="floatBoxBg" style="display:none; opacity: 0.5;"></div>
<div  class="floatBox" style="display:none;">
	<div  class="title">
		<h4>BOUTIQUE FERMER</h4>
		<span  class="closeDialog close-2">X</span>
	</div>
	<div class="content-2">
		<p>Nos Horaires</p>
		<p class="midi">MIDI:<?php echo $setting["config_horaire_AM_{$week}"];?></P>
		<p class="soir" >SOIR:<?php echo $setting["config_horaire_PM_{$week}"];?></p>
      
		<BUTTON class="button close-2">Continuer</BUTTON>
	</div>
</div>	
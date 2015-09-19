 <!DOCTYPE html>
<html dir="ltr" class="ltr" lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title><?php echo $title; ?></title>
	<base href="<?php echo $base; ?>" />
	<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>
	<?php if ($keywords) { ?>
	<meta name="keywords" content="<?php echo $keywords; ?>" />
	<?php } ?>
	<?php if ($icon) { ?>
	<link href="<?php echo $icon; ?>" rel="icon" />
	<?php } ?>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/assets.css" />
	<!--
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/new-css/boot.css" />
	-->
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/bootstrap.css" />
	<link rel="stylesheet" href="catalog/view/theme/default/new-css/common.css">
	<link href="catalog/view/theme/default/stylesheet/style.css" rel="stylesheet" type="text/css" media="all">
	<link href="catalog/view/theme/default/stylesheet/responsive.css" rel="stylesheet" type="text/css" media="all">
	<link href="catalog/view/theme/default/stylesheet/font-awesome.css" rel="stylesheet" type="text/css" media="all">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
	<script src="catalog/view/javascript/jquery.min.js" type="text/javascript"></script>
	<script src="catalog/view/javascript/bootstrap.min.js" type="text/javascript"></script>
	<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
	<!--
	<link rel="stylesheet" href="assets/css/supersized.css">
    <script src="assets/js/supersized.3.2.7.min.js"></script>
    <script src="assets/js/supersized-init.js"></script>
    <script src="assets/js/scripts.js"></script>
	-->
</head>
<body id="food" class="template-index pr">


	<!--[if lt IE 7]>
	<p class="chromeframe">
		You are using an <strong>outdated</strong>
		browser. Please
		<a href="http://browsehappy.com/">upgrade your browser</a>
		or
		<a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a>
		to improve your experience.
	</p>
	<![endif]-->

	<div id="wrapper">
		<div id="wrapper2">

			<!-- HEADER -->
			<header id="header" style="background: url(catalog/view/theme/default/new-images/logoBg.jpg) no-repeat center top; height:auto; position: relative;">
				<div class="container">

					<!-- USER MENU -->
					<ul class="header_user">
					    <?php if (!$logged) { ?>
					    <?php echo $text_welcome; ?>
					    <?php } else { ?>
					    <?php echo $text_logged; ?>
					    <?php } ?>
					</ul>

					<!-- CURRENCIES -->

					<div class="header_r_box ">
						<ul class="pull-left hidden-sm hidden-xs">

							

							<li>
								<a class="last checkout" href="<?php echo $checkout; ?>">
									<span class="glyphicon glyphicon-file"></span>
									<?php echo $text_checkout; ?>
								</a>
							</li>

						</ul>
					</div>
					<div class="row" style="height:132px; position: relative;">
						<div class="col-sm-12 col-md-12 col-lg-6 header_grid">
							<!-- LOGO -->
	
						</div>
						<div class="col-sm-12 col-md-12 col-lg-6 header_grid">
							<!-- CUSTOM HEADER BLOCK -->
	
							<div class="row" style='margin-top:83px'>
								<div class="col-sm-6 header_grid">
									<!-- HEADER SEARCH -->
					<!-- 				
						<div class="header_search">
											<input id="search-field" name="search" type="text" placeholder="<?php echo $text_search; ?>" class="hint">
											<button id="search-submit" class="button-search" type="submit"> <i class="fa fa-search"></i>
											</button>
						</div>
					 -->	
								</div>
								<div class="col-sm-6 header_grid">
									<!-- HEADER CART -->
									<div class="header_cart">
										<?php echo $cart;?>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
	<header class="header">
		<div class="container">
			<nav class="navbar" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
						<span class="sr-only">切换导航</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand scroll current" href="#home">
						<img src="catalog/view/theme/default/new-images/logo.png" alt="">
						<span class="logo_line"></span>
					</a>
				</div>
				<div class="collapse navbar-collapse" id="example-navbar-collapse">
					<!--
					<ul class="nav navbar-nav" id="nav">
						<li >
							<a href="#top"  class="scroll">よ し！</a>
						</li>
						<li class="dropdown">
							<a href="#Ala"  class="scroll"><?php echo $categories[0]['name']; ?></a>
							<?php if(!empty($categories[0]['children'])){?>
							<ul class="dropdown-menu">
							<?php foreach ($categories[0]['children'] as $children) { ?>
								<li><a href="<?php echo $children['href'];?>"><?php echo $children['name'];?></a></li>
								<?php }?>
							</ul>
							<?php }?>
						</li>
						<li class="dropdown">
							<a href="#menu"  class="scroll"><?php echo $categories[2]['name']; ?><b class="caret"></b></a>
							<?php if(!empty($categories[2]['children'])){?>
							<ul class="dropdown-menu">
							<?php foreach ($categories[2]['children'] as $children) { ?>
								<li><a href="<?php echo $children['href'];?>"><?php echo $children['name'];?></a></li>
								<?php }?>
							</ul>
							<?php }?>
						</li>
						<li class="dropdown">
							<a href='#Nouv' class="scroll"><?php echo $categories[1]['name']; ?><b class="caret"></b></a>
							<?php if(!empty($categories[1]['children'])){?>
							<ul class="dropdown-menu">
							<?php foreach ($categories[1]['children'] as $children) { ?>
								<li><a href="<?php echo $children['href'];?>"><?php echo $children['name'];?></a></li>
								<?php }?>
							</ul>
							<?php }?>
						</li>
						<li>
							<a href="#composes"  class="scroll">Menu  Composé</a>
						</li>
						<li class="dropdown">
							<a href="#"  class="dropdown-toggle scroll" data-toggle="dropdown"><?php echo $categories[3]['name']; ?><b class="caret"></b></a>
							<?php if(!empty($categories[3]['children'])){?>
							<ul class="dropdown-menu">
							<?php foreach ($categories[3]['children'] as $children) { ?>
								<li><a href="<?php echo $children['href'];?>"><?php echo $children['name'];?></a></li>
								<?php }?>
							</ul>
							<?php }?>
						</li>
						
						
						
						
						<li>
							<a href="#Res"  class="scroll">Réservation</a>
						</li>
						
						<li>
							<a href="#Contact"  class="scroll">Contact</a>
						</li>
					</ul>-->
					<ul class="nav navbar-nav"  id="nav">
						<li >
							<a href="#top"  class="scroll">よ し！</a>
						</li>
				        <?php foreach ($categories as $category) { ?>
				        <?php if ($category['children']) { ?>
				        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle scroll"><?php echo $category['name']; ?></a>
					              <ul class="dropdown-menu">
					                <?php foreach ($category['children'] as $child) { ?>
					                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
					                <?php } ?>
					              </ul>
					              <?php //} ?>
				        </li>
				        <?php } else { ?>
				        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
				        <?php } ?>
				        <?php } ?>
				        <li>
							<a href="#Res"  class="scroll">Réservation</a>
						</li>
						
						<li>
							<a href="#Contact"  class="scroll">Contact</a>
						</li>
				    </ul>
				</div>
			</nav>
		</div>
	</header>

<?php 
		date_default_timezone_set('Europe/Paris');  // PRC
		$week = date('w');
		$t = date('H:i');
		$settime_am = explode('-',$setting["config_horaire_AM_{$week}"]);
		$settime_pm = explode('-',$setting["config_horaire_PM_{$week}"]);
		if( $t>= intval($settime_am[0]) && $t<=intval($settime_am[1])  || $t>=intval($settime_pm[0]) && $t<=intval($settime_pm[1])){
		
 ?>

<script type="text/javascript">
$(function (){
	//home
	$('.btn-cart').click(function(){
		addToCart($(this).parent('.product_links').find("input[name='product_id']").val(),$(this).parent('.product_links').find("input[name='quantity']").val(),$(this).attr("key_temp"));	
	})
});
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

<div  class="floatBoxBg" style="display:none; opacity: 0.5;"></div>
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
			






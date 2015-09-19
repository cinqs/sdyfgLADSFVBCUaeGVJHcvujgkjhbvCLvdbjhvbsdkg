
<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>yoshi</title>
	<!--
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/new-css/boot.css" />
	-->
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/bootstrap.css" />
	<link rel="stylesheet" href="catalog/view/theme/default/new-css/animate.css">
	<link rel="stylesheet" href="catalog/view/theme/default/new-css/yoshi.css">
	<link href="catalog/view/theme/default/stylesheet/font-awesome.css" rel="stylesheet" type="text/css" media="all">
	<link rel="stylesheet" href="catalog/view/theme/default/new-css/flexslider.css">
	<link rel="stylesheet" href="catalog/view/theme/default/new-css/common.css">
	<!--[if lt IE 9]>
	<script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
	<script src="catalog/view/javascript/jquery.min.js"></script>
	<script src="catalog/view/theme/default/new-js/waypoints.min.js"></script>
	<script src="catalog/view/javascript/bootstrap.min.js"></script>
	<script src="catalog/view/theme/default/new-js/scripts.js"></script>
	<script src="catalog/view/theme/default/new-js/jquery.flexslider.js"></script>
	<script src="catalog/view/theme/default/new-js/modernizr.js"></script>
	<script src="catalog/view/theme/default/new-js/jquery.nav.js"></script>
	<!--<script src="catalog/view/theme/default/new-js/wow.js"></script>-->
	<script src="catalog/view/theme/default/new-js/jquery.validate.js"></script>
	<script src="catalog/view/theme/default/new-js/index.js"></script>
</head>
<body>
	<header class="header navbar-fixed-top">
		<div class="container">
			<nav class="navbar text-center" role="navigation">
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
							<a href="#composes"  class="scroll">Menu  Composés</a>
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
				        <?php
				        	//print_r($category['column']);
				        ?>
				        <li class="dropdown"><a href="<?php //echo $category['href']; 
				        //echo "#";
				        switch ($category['name']) {
				        	case 'Nouveautés':
				        		echo "#Nouv";
				        		break;

				        	case 'À la carte':
				        		echo "#Ala";
				        		break;

				        	case 'Menu':
				        		echo "#menu";
				        		break;

				        	case 'Menu compose':
				        		echo "#composes";
				        		break;
				        	
				        	default:
				        		echo "#";
				        		break;
				        }
				        ?>" class="dropdown-toggle scroll<?php
				        	if ($category['column'] != '4') {
				        		//echo 'scroll';
				        	}
				        ?>" data-toggle="dropdown"><?php echo $category['name']; ?></a>
					              <?php //foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
					              <ul class="list-unstyled dropdown-menu">
					                <?php foreach ($category['children'] as $child) { ?>
					                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
					                <?php } ?>
					              </ul>
					              <?php //} ?>
				        </li>
				        <?php } else { ?>
				        <li><a href="<?php //echo $category['href']; 
				        if ($category['name'] == 'Menu compose') {
				        	echo "#composes";
				        }
				        ?>"><?php echo $category['name']; ?></a></li>
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
	<!-- header end -->
	<div class="logo-container  visible-lg" id="home">
		<div class="container">
			<div class="col-md-3 col-sm-3 header_grid">
				<div class='register'>				
					<ul class="header_user">
					<?php if (!$logged) { ?>
					<?php echo $text_welcome; ?>
					<?php } else { ?>
					<?php echo $text_logged; ?>
					<?php } ?>
					</ul>
				</div>
				<div class="header_cart">
					<?php echo $cart;?>
				</div>
			</div>
		</div>
	</div>
	<!-- logo-container end -->
	<section  class="banner-container wow">
		<div class="bannerDiv">
			<ul class="slides">
				<li>
					<a href="javascript:;">
						<img src="catalog/view/theme/default/new-images/banner02.jpg" alt=""></a>
				</li>
				<li>
					<a href="javascript:;">
						<img src="catalog/view/theme/default/new-images/banner01.jpg" alt=""></a>
				</li>
				<li>
					<a href="javascript:;">
						<img src="catalog/view/theme/default/new-images/banner03.jpg" alt=""></a>
				</li>
			</ul>
		</div>
	</section>

	<section class="about-container " id="top">
		<div class="container">
			<div class="row">
				<div class="col-md-7 animated bounceInUp wow">
					<h3 >En japonais,YOSHI          signifie‘ BON ’!</h3>
					<p class="about-p">
						YOSHI signifie‘ BON! ’ Au pays du soleil levant, la gastronomie est l’une des plus grandes passions  des Japonais. En plus d'élaborer une cuisine raffinée, YOSHI cuisine également des gourmets au goût affûté.Ainsi, il offre au palais des sensations mystérieuses qui vont des joies subtiles du sashimi à la satisfaction roborative des nouilles.Pour finir,YOSHI vous offre une délicieuse corne d’abondance de textures et de saveurs.
					</p>
					<h4 class="about-h4">Uwen Zahng ,   Ça fait 10 ans..</h4>
					<p class="animated delay-05s fadeIn wow">
						<img src="catalog/view/theme/default/new-images/aboutImg.jpg" alt=""></p>
					<p>Grand amateur de la cuisine japonaise et de la gastronomie d’art asiatique, il aime faire partager ses
découvertes, ses expériences et ses créations culinaires.</p>
				</div>
				<div class="col-md-5 animated bounceInUp wow">
					<h3>Suivez-nous !</h3>
					<p class="font20  line40">
					Les Sushis, Les Makis, Les Californias, Les Sashimis, Les Yakitoris,  Les Tempuras, Les Saumons grillé, 
					Les Nouilles sauté, Le riz nature ou sauté, Les Udons, Ramens...
					Au resto japonais, que préférez-vous manger ?
					</p>
					<div class="icon-social animated delay-05s fadeIn  wow">
						<a class="email scroll" title="" href="/#Res"></a>
						<a class="address scroll" title="" target="_blank" href="/#Contact"></a>
						<a class="search" title="" target="_blank" href="#"></a>
						<a class="facebook" title="" target="_blank" href="#"></a>
						<a class="tel scroll" title="Google Plus" target="_blank" href="/#Res"></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- about-container end -->



	<?php echo $content_top; ?>
	<section class="menu-container" id="menu">
		<div class="menu-content">
			<a href="index.php?route=product/category&path=2"><img src="catalog/view/theme/default/new-images/menu.png" alt=""></a>
		</div>
	</section>
	<!-- menu-container -->
	<section id="Ala" class="Ala-container">
		<div class="Ala-content">
			<div class="container">
				<div class="row">
					<div class="Ala-box col-md-4  col-md-offset-1 animated  fadeInLeft delay-0.5s wow">
						<h4>
							Top 10 des
							<br>spécialités japonaises!</h4>
						<p>
							Sushi (poisson sur le riz)
							<br>
							Maki (poisson roulé dans le riz)
							<br>
							Sashimi (poisson seul)
							<br>
							Yakitori (brochette)
							<br>
							Saumon grillé (à la sauce soja sucrée)
							<br>
							Tempura (aliments frits)
							<br>
							Teppanyaki (barbecue japonais)
							<br>
							Nouilles sautées (Udon, Ramen...)
							<br>
							Onigiri (riz fourré)
							<br>Bol de Riz (nature ou saucé)</p>
						<div class="Ala-btn">
							<a href="index.php?route=product/category&path=10">Savoir plus</a>
						</div>
					</div>
					<div class="col-md-2  animated   fadeInRight  wow" style="padding:0px;  padding-right:4px;">
						<p style="margin-bottom:14px;">
							<a class="Ala_hover" href="index.php?route=product/category&path=10">
								<img src="catalog/view/theme/default/new-images/A-pc01.jpg" alt="">
								<span class="bg"></span>
							</a>
						</p>
						<p>
							<a class="Ala_hover" href="index.php?route=product/category&path=11">
								<img src="catalog/view/theme/default/new-images/A-pc02.jpg" alt="">
								<span class="bg"></span>
							</a>
						</p>
					</div>
					<div class="col-md-4  animated fadeInRight  delay-05s wow"  style="padding:0px; ">
						<p>
							<a class="Ala_hover" href="index.php?route=product/category&path=9">
								<img src="catalog/view/theme/default/new-images/A-pc03.jpg" alt="">
								<span class="bg"></span>
							</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="composes-container composes-black" id="composes">
		<div class="composes-content">
			<a href="index.php?route=product/category&path=34">
				<img src="catalog/view/theme/default/new-images/composes.jpg" alt=""></a>
		</div>
	</section>
	<!-- composes-container -->
	<section class="Res-container" id="Res">
		<div class="Res-banner animated flash  wow">
			<img src="catalog/view/theme/default/new-images/Res-banner.png" alt=""></div>
		<div class="link-container">
			<div class="link-content">
				<div class="container">
					<div class="row">
						<div class="col-md-8 animated fadeInLeft  wow">
							<div class="link-box">
								<h3 >YOSHI よし,  RESTAURANT  JAPONAIS</h3>
								<p class="font20 bt20">
									<span class="col-md-6 icon_home">103 RUE DE PRONY,  75017 PARIS</span>
									<span class="col-md-3 icon_tel">09 81 98 45 00</span>
									<span class="col-md-3">06 75 25 19 71</span>
								</p>
								<p class="font20 col-md-12">OUVERT DU LUNDI AU DIMANCHE ( sauf Dimanche midi )</p>
								<p class="font20 col-md-12">DÉJEUNER:  DE 11H30 À 14H30</p>
								<p class="font20 col-md-12">DÎNER: DE 18H30 À 23H00</p>
							</div>

							<div class="form clearfix anim-left">
								<h3 class="col-md-12 link-tit">Écrivez-nous</h3>
								<form class="clearfix" method="POST" action="" id="reg">
									<div class="clearfix">
										<div class="section-nom col-md-5">
											<label class="nom " for="name">Nom:</label>
											<input type="text" id="name" class="nom pub_input pub_line " name="name" placeholder="Votre nom"></div>
										<div class="section-courriel col-md-offset-1 col-md-5">
											<label class="courriel" for="courriel">Courriel:</label>
											<input type="text" id="courriel" class="courriel pub_input pub_line " name="courriel" placeholder="Votre courriel"></div>
									</div>
									<div class="clearfix">
										<div class="section-nom col-md-5">
											<label class="nom " for="num">Nombre de personnes:</label>
											<input type="text" id="num" class="nom pub_input pub_line " name="num" placeholder="Votre nom"></div>
										<div class="section-courriel col-md-offset-1 col-md-5">
											<label class="courriel" for="mobile">Mobile:</label>
											<input type="text" id="mobile" class="courriel pub_input pub_line " name="mobile" placeholder="Votre courriel"></div>
									</div>
									<div class="section-message col-md-12">
										<label class="message" for="message">Message:</label>
										<textarea id="message" class="input_message pub_input col-md-11" name="message" cols="50" rows="1" placeholder="Bonjour!"></textarea>
									</div>
									<div class="link-btn col-md-12">
										<button type="submit" id='order_meal' send = '1'>Réservation</button>
									</div>

								</form>
							</div>
						</div>
						<div class="col-md-3 animated fadeInRight wow">
							<div class="link-img">
								<img src="catalog/view/theme/default/new-images/contact.jpg" alt=""></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Res-container  end -->

	<section class="contact-container" id='Contact'>
		<div class="contact-content">
			<div class="img">
				<a href="">
					<img src="catalog/view/theme/default/new-images/map.jpg" alt=""></a>
			</div>
		</div>
	</section>
	<!-- contact-container  end -->
	<script type="text/javascript">
	    jQuery(document).ready(function($){
	        $(".scroll").click(function(event){
	            event.preventDefault();
	            $('html,body').animate({
	                scrollTop: $(this.hash).offset().top-54
	            },
	            700);
	        });
	       $('#composes').hover(function(){

	       },function(){

	       });
	    });
	</script>
	<script>
$(function(){
	$('.nav').onePageNav();
});
</script>
	<script>
/*	    wow = new WOW({
	        animateClass: 'animated',
	        offset: 100
	    });
	    wow.init();*/
	</script>
		<script type="text/javascript">
    $(document).ready(function () {	
    	var w = $('.navbar-nav').width();
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
<?php echo $footer; ?>
<?php
	ini_set('display_errors', '0');
?>


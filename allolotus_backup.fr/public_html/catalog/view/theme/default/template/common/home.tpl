<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=no" >
	<title>WASABI</title>
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/root.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/theme.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/animate.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/css.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/customer.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/public.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/flexslider.css">
	<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/jquery.min.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/root.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/wow.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/jquery.flexslider.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/templatemo-script.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/customer.js"></script>
	<!--[if lt IE 9]>
	<script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="viewport">
		<section class="index-container">
			<div class="header" >
				<!-- start navigation -->
				<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
					<div class="container" id="home_header">
						<div class="row">
							<div class="navbar-header">
								<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
									<span class="icon icon-bar"></span>
									<span class="icon icon-bar"></span>
									<span class="icon icon-bar"></span>
								</button>
								<a href="http://<?php echo $_SERVER['SERVER_NAME'];?>" class="navbar-brand">
									<span class="logo">
										<img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/image/logo_new.png" alt=""></span>
									<!--<span class="logo-wz">WASABI</span>-->
								</a>
								<div class="login-div hide">
									<p><a href="">Se connecter</a></p>
									<p><a href="">S’enregistrer</a></p>
								</div>
								<!-- login-div -->
								<div class="login-suc-div">
										<ul id="loginornot" style="padding-top:33px;">
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
			<!-- start slider -->
			<div class="index-banner">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/image/frontP1.jpg" alt="Slide 1" class="front-img">
						</li>
						<li>
							<img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/image/frontP2.jpg" alt="Slide 2" class="front-img">
						</li>
						<li>
							<img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/image/frontP3.jpg" alt="Slide 3" class="front-img">
						</li>
						<li>
							<img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/image/frontP4.jpg" alt="Slide 4" class="front-img">
						</li>
					</ul>
				</div>
			</div>
			<!-- banner end -->
			<!--the front page's begin with the strings--><!--
			<div id="home_sentence">
				<pre><span id='pre_1'>Sometimes,</span>
<span class='pre_2'>you do not even know,</span>
<span id='pre_3'>when</span> <span class='pre_2'>you want to eat sushi</span></pre>
			</div>-->
		</section>
	</div>
	<!-- viewport -->
	<footer></footer>
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

</body>
</html>
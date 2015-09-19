<?php 
$deviceUse = "desktop";
$useragent=$_SERVER['HTTP_USER_AGENT'];
if(preg_match('/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od|ad)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|

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
<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=no" >
	<title>SushiDo</title>
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/root.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/theme.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/animate.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/css.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/customer.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/public.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/flexslider.css">
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/carousel.css">
	<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/<?=$deviceUse?>.css">
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/jquery.min.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/root.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/wow.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/jquery.flexslider.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/templatemo-script.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/customer.js"></script>
	<script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/<?=$deviceUse?>.js"></script>
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
										<img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/image/logo.png" alt=""></span>
									<!--<span class="logo-wz">WASABI</span>-->
								</a>
								<!-- login-div -->
								<div class="login-suc-div">
										<ul id="loginornot" style="padding-top:18px;">
											<?php if (!$logged) { ?>
										    <?php echo $text_welcome; ?>
										    <?php } else { ?>
										    <?php echo $text_logged; ?>
										    <?php } ?>
										</ul>
								</div>

							</div>
							<div class="collapse navbar-collapse">
								<ul class="nav navbar-nav navbar-right" id="mainNav" style="padding-top:23px"><!--
									<li>
							        	<a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/index.php?route=information/information&information_id=8">BUFFET</a>
							        </li>-->
									<?php foreach ($categories as $category) { ?>
							        
							        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
							        <?php } ?>
							        <li>
							        	<a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/index.php?route=common/nous">NOUS</a>
							        </li>
								</ul>
							</div>
						</div>
					</div>
				</nav>
				<!-- end navigation -->
			</div>
			<!-- header end -->
			<!-- start slider 
			<div class="index-banner">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/image/sushido1.jpg" alt="Slide 1" class="front-img">
						</li>
						<li>
							<img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/image/sushido2.jpg" alt="Slide 2" class="front-img">
						</li>
						<li>
							<img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/image/sushido3.jpg" alt="Slide 3" class="front-img">
						</li>
					</ul>
				</div>
			</div>
			 banner end -->
		    <?php if ($deviceUse == "desktop") {?>
			    <div id="myCarousel" class="carousel slide" data-ride="carousel">
			      <!-- Indicators -->
			      <ol class="carousel-indicators">
			        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			        <li data-target="#myCarousel" data-slide-to="1"></li>
			        <li data-target="#myCarousel" data-slide-to="2"></li>
			      </ol>
			      <div class="carousel-inner" role="listbox">
			      	<div class="item active" style="background-image: url(image/sushido1.jpg)"></div>
			        <div class="item" style="background-image: url(image/sushido2.jpg)"></div>
			        <div class="item" style="background-image: url(image/sushido3.jpg)"></div>
			      </div>
			      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			        <span class="sr-only">Previous</span>
			      </a>
			      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			        <span class="sr-only">Next</span>
			      </a>
			    </div>
			<?php }elseif ($deviceUse == "mobile") {?>
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
			      <!-- Indicators -->
			      <ol class="carousel-indicators">
			        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			        <li data-target="#myCarousel" data-slide-to="1"></li>
			      </ol>
			      <div class="carousel-inner" role="listbox">
			        <div class="item active" style="background-image: url(image/mobile/sushido.jpg)"></div>
			        <div class="item" style="background-image: url(image/mobile/sushido2.jpg)"></div>
			      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			        <span class="sr-only">Previous</span>
			      </a>
			      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			        <span class="sr-only">Next</span>
			      </a>
			    </div>
			<?php }?>
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
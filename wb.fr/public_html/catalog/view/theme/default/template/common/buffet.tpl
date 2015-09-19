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
    });
</script>
					<style type="text/css">
					.carteRight{
						padding-left: 0 !important;
					}
					.carousel-inner > .item > img{
						width: 100%;
						height: auto;
					}
					</style>
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
			      <!-- Indicators -->
			      <ol class="carousel-indicators">
			        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			        <li data-target="#myCarousel" data-slide-to="1"></li>
			        <!--<li data-target="#myCarousel" data-slide-to="2"></li>
			        <li data-target="#myCarousel" data-slide-to="3"></li>-->
			      </ol>
			      <div class="carousel-inner" role="listbox">
			      <div class="item active">
			      	<img src="image/buffet/wasabibuffet.jpg">
			      </div>
			      <div class="item">
			      	<img src="image/buffet/wasabibuffet2.jpg">
			      </div>
			      <!--
			        <div class="item active" style="background-image: url(image/frontP1.jpg)"></div>
			        <div class="item" style="background-image: url(image/frontP2.jpg)"></div>
			        <div class="item" style="background-image: url(image/frontP3.jpg)"></div>
			        <div class="item" style="background-image: url(image/frontP4.jpg)"></div>-->
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
						<div class="clear"></div>
						
					</div>
					<!-- carteRight end -->

				</div>

			</div><?php echo $footer; ?>
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
	

</body>

</html>
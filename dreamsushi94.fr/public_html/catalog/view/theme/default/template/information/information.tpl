<?php if ($heading_title == 'Nous') {?>
  <!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=no" >
  <title>Nous</title>
  <link rel="stylesheet" href="http://dreamsushi94.fr/catalog/view/theme/default/stylesheet/new/root.css">
  <link rel="stylesheet" href="http://dreamsushi94.fr/catalog/view/theme/default/stylesheet/new/theme.css">
  <link rel="stylesheet" href="http://dreamsushi94.fr/catalog/view/theme/default/stylesheet/new/animate.css">
  <link rel="stylesheet" href="http://dreamsushi94.fr/catalog/view/theme/default/stylesheet/new/css.css">
  <link rel="stylesheet" href="http://dreamsushi94.fr/catalog/view/theme/default/stylesheet/new/public.css">
  <link rel="stylesheet" href="http://dreamsushi94.fr/catalog/view/theme/default/stylesheet/new/flexslider.css">
  <link rel="stylesheet" href="http://dreamsushi94.fr/catalog/view/theme/default/stylesheet/new/customer.css">
  <script src="http://dreamsushi94.fr/catalog/view/theme/default/new-js/new/jquery.min.js"></script>
  <script src="http://dreamsushi94.fr/catalog/view/theme/default/new-js/new/root.js"></script>
  <script src="http://dreamsushi94.fr/catalog/view/theme/default/new-js/new/wow.js"></script>
  <script src="http://dreamsushi94.fr/catalog/view/theme/default/new-js/new/jquery.flexslider.js"></script>
  <script src="http://dreamsushi94.fr/catalog/view/theme/default/new-js/new/templatemo-script.js"></script>
  <!--[if lt IE 9]>
  <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>
  <div class="viewport">
    <section class="nousPage">
      <div class="header">
        <!-- start navigation -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
          <div class="container">
            <div class="row">
              <div class="navbar-header">
                <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                  <span class="icon icon-bar"></span>
                  <span class="icon icon-bar"></span>
                  <span class="icon icon-bar"></span>
                </button>
                <a href="http://dreamsushi94.fr" class="navbar-brand">
                  <span class="logo">
                    <img src="http://dreamsushi94.fr/catalog/view/theme/default/image/new/logo.png" alt=""></span>
                  <span class="logo-wz">DREAM+</span>
                </a>
                <div class="login-div hide">
                  <p>
                    <a href="">Se connecter</a>
                  </p>
                  <p>
                    <a href="">S’enregistrer</a>
                  </p>
                </div>
                <!-- login-div -->
                <div class="login-suc-div">
                  <h3>Hi !</h3>
                </div>

              </div>
              <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right p-t-1"><!--
                  <li>
                    <a href="http://dreamsushi94.fr/index.php?route=product/category&path=32" class="">À LA CARTE</a>
                  </li>
                  <li>
                    <a href="http://dreamsushi94.fr/index.php?route=product/category&path=33" class="">MENU</a>
                  </li>
                  <li>
                    <a href="http://dreamsushi94.fr/index.php?route=product/category&path=30" class="">BOISSON ET DESSERT</a>
                  </li>
                  <li>
                    <a href="http://dreamsushi94.fr/contact/nous.html" class="">NOUS</a>
                  </li>-->
                  <li>
                        <a href="http://dreamsushi94.fr/index.php?route=information/information&information_id=8">BUFFET</a>
                      </li>
                  <?php if ($categories) {
                    foreach ($categories as $category) {?>
                    <li>
                      <a href="<?php echo $category['href'];?>"><?php echo $category['name'];?></a>
                    </li>
                  <?php }}?>
                    <li>
                      <a href="http://dreamsushi94.fr/index.php?route=information/information&information_id=7">Nous</a>
                    </li>
                </ul>
              </div>
            </div>
          </div>
        </nav>
        <!-- end navigation -->
      </div>
      <!-- header end -->
      
      <div class="nousMain container">
        <div class="nousLeft wow animated fadeInLeft">
          <div class="left-top">
            <h3 class="color-red font42">Dream sushi</h3>
            <h4 class="color-red font24">01 56 34 07 13</h4>
            <p class="color-yellow font18">31-33 Place LOUIS XIII</p>
            <p class="color-blue font16">94150 RUNGIS</p>
          </div>
          <p class="add2 color-blue font24 marTop10">OUVERT 6J/7</p>
          <p class="add2 color-blue font24 marTop10">Terrasse d'été</p>
          <div class="add-datail color-gray ">
            <p>
              du Lundi au Vendredi
              <br>      
              de 11h00 à 14h30
              <br>      
              de 18h30 à 22h30
              <br>      
              le samedi
              <br>de 18h30 à 22h30</p>
          </div>
        </div>
        <!-- nousLeft end -->
        <div class="nousRight">
          <div class="forLogo animated fadeInDown wow"  data-wow-delay="1s">
            <img src="http://dreamsushi94.fr/catalog/view/theme/default/image/new/logo2.png" alt="">
          </div>
          <div class="content wow animated fadeInRight">
              <h5 class="font18 color-red">Livraison midi à partir de 12:00.<br>Livraison soir à partir de 19:00.</h5>
            <div class="box1 color-gray ">
              <h5 class="font18">Les zones de livraison:</h5>
              <p>- Rungis-ville (94150)        - Rungis Silic</p>
              <p>- Rungis Min                         - Rungis Sogaris</p>
              <p>- Zone de  Orlytech           - Parc Médicis</p>
              <p>- Zone Delta</p>
              <h5 class="marTop35 font18">SOIR UNIQUEMENT :</h5>
              <p>- Wissous, 91320 (soir), minimum 20 € d'achat</p>
              <p>- Chevilly-larue, 94550 (soir), minimum 30 € d'achat</p>
              <p>- Thiais, 94320 (soir), minimum 30 € d'achat</p>
              <p>- Fresnes, 94260 (soir), minimum 30 € d'achat</p>
              <p>- L'hay-Les-Roses, 94240 (soir), minimum 30 € d'achat</p>
              <h3 class="color-yellow ">Livraison  gratuite à partir de 15€</h3>
            </div>
            <div class="box2">
              <p class="p1">
                <span class="lb">- À Partir de 15€</span>
                <span>un dessert ou boisson offert</span>
              </p>
              <p class="p1">
                <span class="lb">- À Partir de 25€</span>
                <span>une bière (33cl) offerte</span>
              </p>
              <p class="p1">
                <span class="lb">- À Partir de 50€</span>
                <span>une bouteille(1.5L) de coca offerte</span>
              </p>
              <p class="color-red bold font18">Mode de paiement: Espèces,CB,Chèques et Tickets restaurants.</p>
              <p class="color-red bold font18">Le delais de livraison est entre 30-45mn (selon la zone est affluence)</p>
              <p class="color-red bold font18">Nos livreurs n'ont pas plus de 20€ en monnaie, pensez à préparer l'appoint.</p>
            </div>
          </div>
        </div>
        <!-- nousRight end -->        
      </div>
      <!-- nousMain end -->
    </section>
  </div>
  <!-- viewport -->
  <footer></footer>

</body>
</html>
<?php }elseif ($heading_title == 'Buffet') {?>
  <?php echo $header;?>
    <img src="http://dreamsushi94.fr/image/data/buffert.png">
  <?php echo $footer;?>
<?php }else{
  echo $header;
  echo $footer;
}?>
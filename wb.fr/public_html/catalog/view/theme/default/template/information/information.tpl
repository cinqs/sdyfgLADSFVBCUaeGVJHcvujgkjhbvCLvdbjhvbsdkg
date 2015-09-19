<?php 
  $con = mysqli_connect('localhost','wasabisushi','eyelle8888',"wasabisushi");

  if (!$con) {
    die('Could not connect:'.mysqli_error($con));
  }
   $con->query("SET CHARACTER SET utf8");

  $sql_setting = "SELECT * FROM oc_setting";
  $result_setting = $con->query($sql_setting);
  while ($row_setting = $result_setting->fetch_assoc()) {
    $settings[] = $row_setting;
  }

  foreach ($settings as $setting) {
    if ($setting["key"] == "config_telephone") {
      $telephone = $setting["value"];
    }
    if ($setting["key"] == "config_name") {
      $store_name = $setting["value"];
    }
    if ($setting["key"] == "config_address") {
      $address = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_PM_0") {
      $sun_even = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_AM_0") {
      $sun_morn = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_PM_1") {
      $mon_even = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_AM_1") {
      $mon_morn = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_PM_2") {
      $tue_even = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_AM_2") {
      $tue_morn = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_PM_3") {
      $wedn_even = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_AM_3") {
      $wedn_morn = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_PM_4") {
      $thur_even = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_AM_4") {
      $thur_morn = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_PM_5") {
      $fri_even = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_AM_5") {
      $fri_morn = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_PM_6") {
      $satur_even = $setting["value"];
    }
    if ($setting["key"] == "config_horaire_AM_6") {
      $satur_morn = $setting["value"];
    }
  }
 
?>
<?php if ($heading_title == 'Nous') {?>
  <!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=no" >
  <title>Nous</title>
  <link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/root.css">
  <link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/theme.css">
  <link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/animate.css">
  <link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/css.css">
  <link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/public.css">
  <link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/flexslider.css">
  <link rel="stylesheet" href="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/stylesheet/new/customer.css">
  <script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/jquery.min.js"></script>
  <script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/root.js"></script>
  <script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/wow.js"></script>
  <script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/jquery.flexslider.js"></script>
  <script src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/new-js/new/templatemo-script.js"></script>
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
                <a href="http://<?php echo $_SERVER['SERVER_NAME'];?>" class="navbar-brand">
                  <span class="logo">
                    <img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/image/logo_new.png" alt=""></span>
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
                <div class="login-suc-div hide">
                  <h3>Hi !</h3>
                </div>

              </div>
              <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right p-t-1"><!--
                  <li>
                    <a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/index.php?route=product/category&path=32" class="">À LA CARTE</a>
                  </li>
                  <li>
                    <a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/index.php?route=product/category&path=33" class="">MENU</a>
                  </li>
                  <li>
                    <a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/index.php?route=product/category&path=30" class="">BOISSON ET DESSERT</a>
                  </li>
                  <li>
                    <a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/contact/nous.html" class="">NOUS</a>
                  </li>
                  <li>
                    <a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/index.php?route=information/information&information_id=8">BUFFET</a>
                  </li>-->
                  <?php if ($categories) {
                    foreach ($categories as $category) {?>
                    <li>
                      <a href="<?php echo $category['href'];?>"><?php echo $category['name'];?></a>
                    </li>
                  <?php }}?>
                    <li>
                      <a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/index.php?route=information/information&information_id=7">Nous</a>
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
            <h3 class="color_spe font42"><?php echo $store_name?></h3>
            <h4 class="color-red font24"><?php echo $telephone?></h4>
            <p class="color-yellow font18 bottom_border"><a target="_blank" href="https://www.google.fr/maps/place/<?php echo $address;?>"><?php echo $address;?></a></p>
          </div>
          <p class="add2 color-blue font24 marTop10">OUVERT 7J/7</p>
          <div class="add-datail color-gray ">
            <table class="time_table">
              <thead>
                <tr>
                  <td></td>
                  <td>Midi</td>
                  <td>Soir</td>
                </tr>
              </thead>
              <tbody>
              <tr>
                  <td>dimanche</td>
                  <td><?php echo $sun_morn;?></td>
                  <td><?php echo $sun_even;?></td>
                </tr>
                <tr>
                  <td>lundi</td>
                  <td><?php echo $mon_morn;?></td>
                  <td><?php echo $mon_even;?></td>
                </tr>
                <tr>
                  <td>mardi</td>
                  <td><?php echo $tue_morn;?></td>
                  <td><?php echo $tue_even;?></td>
                </tr>
                <tr>
                  <td>mercredi</td>
                  <td><?php echo $wedn_morn;?></td>
                  <td><?php echo $wedn_even;?></td>
                </tr>
                <tr>
                  <td>jeudi</td>
                  <td><?php echo $thur_morn;?></td>
                  <td><?php echo $thur_even;?></td>
                </tr>
                <tr>
                  <td>vendredi</td>
                  <td><?php echo $fri_morn;?></td>
                  <td><?php echo $fri_even;?></td>
                </tr>
                <tr>
                  <td>samedi</td>
                  <td><?php echo $satur_morn;?></td>
                  <td><?php echo $satur_even;?></td>
                </tr>
              </tbody>
            </table><div class="clear"></div>
             
          </div>
        </div>-->
        <!-- nousLeft end -->
        <div class="nousRight"><!--
          <div class="forLogo animated fadeInDown wow"  data-wow-delay="1s">
            <img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/catalog/view/theme/default/image/new/logo2.png" alt="">
          </div>-->
          <div class="content wow animated fadeInRight">
           
            <div class="">
            <h4 class="color-red font24 bold">Attention, c'est fort !</h4>
              <pre id="nous_detail">Sushi Ces hors-d'oeuvres (sushi et maki) sont apparus à Tokyo au début du XIX ème siècle. 
Le sushi est présenté sous forme d'une boule de riz aplatie sur laquelle on dépose un 
morceau de poisson cru qui doit être de toute première fraîcheur. Le poisson est 
longuement préparé, car il doit être servi sans peau, sans arêtes et tranché en fines lamelles. 
Les crevettes sont décortiquées,déveinée et ouvertes en papillote. Maki le maki est à base de
riz roulé et entouré très souvent d'une feuille d'algue appelée Nori. Il peut présenter de 
multiples ingrédients au centre, comme du poisson cru, du caviar, une omelette ou des légumes... 
Sashimi Le Sashimi existe dans la cuisine japonaise depuis le XV ème siècle. Il sagit de fines 
tranches de poisons de première fraîcheur. préparées avec soin ; elles sont de la taille d'une bouchée. 
Chirashi Assortiment, présenté avec art, dans une assiette laquée, ronde ou carrée, 
des tranches de poissons crus et marinés dans le vinaigre, des légumes assaisonnés, de l'omelette, ... 
La soupe Miso Traditionnellement, elle est servie en début de repas. Il s'agit d'un bouillon clair 
où flottent des ingrédients de saison en petite quantité. Même pour cette "mise en bouche", 
l'aspect esthétique est primodial. Ainsi, la soupe miso n'a que peu de valeur nutritionnelle, 
mais ouvre agréablement l'appétit. Wasabi Racine japonaise servant de condiment. 
Présentée sous la forme d'une pâte verte, elle accompagne les sushis, makis et sashimis.
</pre>
            </div>
            <div class="box1 color-gray ">
              <h3 class="color-yellow ">Livraison  gratuite à partir de 15€</h3>
            </div>
            <div class="box2">
              <p class="p1">
                <span class="lb">- À Partir de 30€</span>
                <span>4 california ou 2 coca (33cl) offerts</span>
              </p>
              <p class="p1">
                <span class="lb">- À Partir de 50€</span>
                <span>1 Bouteille de coca offerte</span>
              </p>
            </div>
            <div class="box1 color-grey">
              <h3 class="color-yellow"><i class="fa fa-cutlery"></i>Buffet À Volonté À La Carte</h3>
            </div>
            <div class="box2">
              <p class="p1">
                <span class="lb">Le MIDI 11€90 LE SOIR 17€90</span>
              </p>
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
  <?php echo $header;?><!--
    <img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/image/data/buffert.png">-->
  <?php echo $footer;?>
<?php }elseif ($heading_title == 'payment') {
  echo $header;?>

 <?php echo $footer;
}else{
  echo "string";
}?>
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
 <?php 
  $con = mysqli_connect('localhost','sushido92','eyelle8888',"sushido92");

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
                    <img src="http://<?php echo $_SERVER['SERVER_NAME'];?>/image/logo.png" alt=""></span>
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
                <ul class="nav navbar-nav navbar-right" id="mainNav" style="padding-top:23px;">
                  <?php if ($categories) {
                    foreach ($categories as $category) {?>
                    <li>
                      <a href="<?php echo $category['href'];?>"><?php echo $category['name'];?></a>
                    </li>
                  <?php }}?>
                    <li>
                      <a href="http://<?php echo $_SERVER['SERVER_NAME'];?>/index.php?route=common/nous">Nous</a>
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
            <iframe width="600" height="300" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=<?php echo str_ireplace(" ", "%20", $address);?>&key=AIzaSyDAxUUqgcP65yf9D5R8Lq_pJU66XRK2Lsc" allowfullscreen></iframe>
            </div>
            <div class="box1 color-gray ">
              <h3 class="color-yellow ">Livraison  gratuite à partir de 15€</h3>
            </div>
            <div class="box2">
              <p class="p1">
                <span class="lb">- À Partir de 20€</span>
                <span>1 Coca (33cl) offerte</span>
              </p>
              <p class="p1">
                <span class="lb">- À Partir de 30€</span>
                <span>1 bière (33cl) offerte</span>
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
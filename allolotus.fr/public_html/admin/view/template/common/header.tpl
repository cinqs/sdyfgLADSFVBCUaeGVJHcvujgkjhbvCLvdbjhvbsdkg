<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />


  <link href="css/bootstrap-journal.css" rel="stylesheet">
  <style type="text/css">
    body {
    padding-bottom: 40px;
    }
    .sidebar-nav {
    padding: 9px 0;
    }
  </style>
  <link href="css/bootstrap-responsive.css" rel="stylesheet">
  <link href="css/charisma-app.css" rel="stylesheet">
  <link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
  <link href='css/fullcalendar.css' rel='stylesheet'>
  <link href='css/fullcalendar.print.css' rel='stylesheet'  media='print'>
  <link href='css/chosen.css' rel='stylesheet'>
  <link href='css/uniform.default.css' rel='stylesheet'>
  <link href='css/colorbox.css' rel='stylesheet'>
  <link href='css/jquery.cleditor.css' rel='stylesheet'>
  <link href='css/jquery.noty.css' rel='stylesheet'>
  <link href='css/noty_theme_default.css' rel='stylesheet'>
  <link href='css/elfinder.min.css' rel='stylesheet'>
  <link href='css/elfinder.theme.css' rel='stylesheet'>
  <link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
  <link href='css/opa-icons.css' rel='stylesheet'>
  <link href='css/uploadify.css' rel='stylesheet'>
  <link href='css/bgstretcher.css' rel='stylesheet'>

  <!-- jQuery -->
  <script src="js/jquery-1.7.2.min.js"></script>
  <!-- jQuery UI -->
  <script src="js/jquery-ui-1.8.21.custom.min.js"></script>
  <!-- transition / effect library -->
  <script src="js/bootstrap-transition.js"></script>
  <!-- alert enhancer library -->
  <script src="js/bootstrap-alert.js"></script>
  <!-- modal / dialog library -->
  <script src="js/bootstrap-modal.js"></script>
  <!-- custom dropdown library -->
  <script src="js/bootstrap-dropdown.js"></script>
  <!-- scrolspy library -->
  <script src="js/bootstrap-scrollspy.js"></script>
  <!-- library for creating tabs -->
  <script src="js/bootstrap-tab.js"></script>
  <!-- library for advanced tooltip -->
  <script src="js/bootstrap-tooltip.js"></script>
  <!-- popover effect library -->
  <script src="js/bootstrap-popover.js"></script>
  <!-- button enhancer library -->
  <script src="js/bootstrap-button.js"></script>
  <!-- accordion library (optional, not used in demo) -->
  <script src="js/bootstrap-collapse.js"></script>
  <!-- carousel slideshow library (optional, not used in demo) -->
  <script src="js/bootstrap-carousel.js"></script>
  <!-- autocomplete library -->
  <script src="js/bootstrap-typeahead.js"></script>
  <!-- tour library -->
  <script src="js/bootstrap-tour.js"></script>
  <!-- library for cookie management -->
  <script src="js/jquery.cookie.js"></script>
  <!-- calander plugin -->
  <script src='js/fullcalendar.min.js'></script>
  <!-- data table plugin -->
  <script src='js/jquery.dataTables.min.js'></script>

  <!-- chart libraries start -->
  <script src="js/excanvas.js"></script>
  <script src="js/jquery.flot.min.js"></script>
  <script src="js/jquery.flot.pie.min.js"></script>
  <script src="js/jquery.flot.stack.js"></script>
  <script src="js/jquery.flot.resize.min.js"></script>
  <!-- chart libraries end -->

  <!-- select or dropdown enhancer -->
  <script src="js/jquery.chosen.min.js"></script>
  <!-- checkbox, radio, and file input styler -->
  <script src="js/jquery.uniform.min.js"></script>
  <!-- plugin for gallery image view -->
  <script src="js/jquery.colorbox.min.js"></script>
  <!-- rich text editor library -->
  <script src="js/jquery.cleditor.min.js"></script>
  <!-- notification plugin -->
  <script src="js/jquery.noty.js"></script>
  <!-- file manager library -->
  <script src="js/jquery.elfinder.min.js"></script>
  <!-- star rating plugin -->
  <script src="js/jquery.raty.min.js"></script>
  <!-- for iOS style toggle switch -->
  <script src="js/jquery.iphone.toggle.js"></script>
  <!-- autogrowing textarea plugin -->
  <script src="js/jquery.autogrow-textarea.js"></script>
  <!-- multiple file upload plugin -->
  <script src="js/jquery.uploadify-3.1.min.js"></script>
  <!-- history.js for cross-browser state change on ajax -->
  <script src="js/jquery.history.js"></script>
  <!-- application script for Charisma demo -->
  <script src="js/charisma.js"></script>

<link type="text/css" href="view/stylesheet/stylesheet.css" rel="stylesheet" />
<!--<script type="text/javascript" src="view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>-->
<link type="text/css" href="view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet" />
<script type="text/javascript" src="view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="view/javascript/jquery/superfish/js/superfish.js"></script>
<script type="text/javascript" src="view/javascript/common.js"></script>
<script type="text/javascript">
//-----------------------------------------
// Confirm Actions (delete, uninstall)
//-----------------------------------------
$(document).ready(function(){
    // Confirm Delete
    $('#form').submit(function(){
        if ($(this).attr('action').indexOf('delete',1) != -1) {
            if (!confirm('Confirmez-vous cette action ?')) {
                return false;
            }
        }
    });
    	
    // Confirm Uninstall
    $('a').click(function(){
        if ($(this).attr('href') != null && $(this).attr('href').indexOf('uninstall', 1) != -1) {
            if (!confirm('Confirmez-vous cette action ?')) {
                return false;
            }
        }
    });
});
</script>

<script type="text/javascript" src="js/bgstretcher.js"></script>


</head>
<body>

<div id="header">

</div>

<div class="navbar">
  <div class="navbar-inner">
      <div class="container-fluid">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <a class="brand" href="<?php echo $home; ?>"><div><span><img src="/admin/img/lotus.png"></span></div></a>

        <!-- theme selector starts -->
        <!--<div class="btn-group pull-right theme-container" >
          <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="icon-tint"></i><span class="hidden-phone"> Change Theme / Skin</span>
            <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" id="themes">
            <li><a data-value="classic" href="#"><i class="icon-blank"></i> Classic</a></li>
            <li><a data-value="cerulean" href="#"><i class="icon-blank"></i> Cerulean</a></li>
            <li><a data-value="cyborg" href="#"><i class="icon-blank"></i> Cyborg</a></li>
            <li><a data-value="redy" href="#"><i class="icon-blank"></i> Redy</a></li>
            <li><a data-value="journal" href="#"><i class="icon-blank"></i> Journal</a></li>
            <li><a data-value="simplex" href="#"><i class="icon-blank"></i> Simplex</a></li>
            <li><a data-value="slate" href="#"><i class="icon-blank"></i> Slate</a></li>
            <li><a data-value="spacelab" href="#"><i class="icon-blank"></i> Spacelab</a></li>
            <li><a data-value="united" href="#"><i class="icon-blank"></i> United</a></li>
          </ul>
        </div> -->
        <!-- theme selector ends -->
        
        <!-- user dropdown starts -->
        <!--<div class="btn-group pull-right" >
          <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="icon-user"></i><span class="hidden-phone"> admin</span>
            <span class="caret"></span>
          </a>
          <ul class="dropdown-menu">
            <li><a href="#">Profile</a></li>
            <li class="divider"></li>
            <li><a href="login.html">Logout</a></li>
          </ul>
        </div>-->
        <!-- user dropdown ends -->


      <div class="sortable row-fluid ui-sortable" style="margin-top: 20px;">
        <a data-original-title="Catégories" data-rel="tooltip" class="well span1 top-block" href="<?php echo $category; ?>">
          <span class="icon32 icon-green icon-book"></span>
          <div><?php echo $text_category; ?></div>
          <div></div>
          <span class="notification">目录</span>
        </a>
        <a data-original-title="Produits" data-rel="tooltip" class="well span1 top-block" href="<?php echo $product; ?>">
          <span class="icon32 icon-green icon-add"></span>
          <div>Produits</div>
          <div></div>
          <span class="notification">货品</span>
        </a>
        <a data-original-title="Zones" data-rel="tooltip" class="well span1 top-block" href="<?php echo $zone; ?>">
          <span class="icon32 icon-green icon-globe"></span>
          <div><?php echo $text_zone; ?></div>
          <div></div>
          <span class="notification green">送货范围</span>
        </a>
        <a data-original-title="A Partir" data-rel="tooltip" class="well span1 top-block" href="<?php echo $geo_zone; ?>">
     
          <span class="icon32 icon-green icon-link"></span>
          <div><?php echo $text_geo_zone; ?></div>
          <div></div>
          <span class="notification green">起送价格</span>
        </a>
        <a data-original-title="Clients" data-rel="tooltip" class="well span1 top-block" href="<?php echo $customer; ?>">
          <span class="icon32 icon-green icon-user"></span>
          <div><?php echo $text_customer; ?></div>
          <div></div>
          <span class="notification red">客户</span>
        </a>

        <a data-original-title="Commandes" data-rel="tooltip" class="well span1 top-block" href="<?php echo $order; ?>">
          <span class="icon32 icon-green icon-clipboard"></span>
          <div><?php echo $text_order; ?></div>
          <div></div>
          <span class="notification red">订单</span>
        </a>

        <a data-original-title="Bannières" data-rel="tooltip" class="well span1 top-block" href="<?php echo $banner; ?>"><span class="icon32 icon-green icon-gear"></span></span>
          <div><?php echo $text_banner; ?></div>
          <div></div>
          <span class="notification green">条幅</span>
        </a>
                <a data-original-title="Paramètres" data-rel="tooltip" class="well span1 top-block" href="<?php echo $setting; ?>">
          <span class="icon32 icon-green icon-gear"></span>
          <div><?php echo $text_setting; ?></div>
          <div></div>
          <span class="notification red">设置</span>
        </a>

       <!-- <a data-original-title="Paramètres" data-rel="tooltip" class="well span1 top-block" href="<?php echo $stroe; ?>">
          <span class="icon32 icon-green icon-gear"></span>
          <div><?php echo $text_stroe; ?></div>
          <div></div>
          <span class="notification red">设置</span>
        </a>-->
        
      </div>


      </div>
  </div>
</div>
<!--<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_install) { ?>
  <div class="warning"><?php echo $error_install; ?></div>
  <?php } ?>
  <?php if ($error_image) { ?>
  <div class="warning"><?php echo $error_image; ?></div>
  <?php } ?>
  <?php if ($error_image_cache) { ?>
  <div class="warning"><?php echo $error_image_cache; ?></div>
  <?php } ?>
  <?php if ($error_cache) { ?>
  <div class="warning"><?php echo $error_cache; ?></div>
  <?php } ?>
  <?php if ($error_download) { ?>
  <div class="warning"><?php echo $error_download; ?></div>
  <?php } ?>
  <?php if ($error_logs) { ?>
  <div class="warning"><?php echo $error_logs; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/home.png" alt="" /> <?php echo $heading_title; ?></h1>
    </div>
    <div class="content">
      <div class="overview">
        <div class="dashboard-heading"><?php echo $text_overview; ?></div>
        <div class="dashboard-content">
          <table>
            <tr>
              <td><?php echo $text_total_sale; ?></td>
              <td><?php echo $total_sale; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_sale_year; ?></td>
              <td><?php echo $total_sale_year; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_order; ?></td>
              <td><?php echo $total_order; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_customer; ?></td>
              <td><?php echo $total_customer; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_customer_approval; ?></td>
              <td><?php echo $total_customer_approval; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_review_approval; ?></td>
              <td><?php echo $total_review_approval; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_affiliate; ?></td>
              <td><?php echo $total_affiliate; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_affiliate_approval; ?></td>
              <td><?php echo $total_affiliate_approval; ?></td>
            </tr>
          </table>
        </div>
      </div>
      <div class="statistic">
        <div class="range"><?php echo $entry_range; ?>
          <select id="range" onchange="getSalesChart(this.value)">
            <option value="day"><?php echo $text_day; ?></option>
            <option value="week"><?php echo $text_week; ?></option>
            <option value="month"><?php echo $text_month; ?></option>
            <option value="year"><?php echo $text_year; ?></option>
          </select>
        </div>
        <div class="dashboard-heading"><?php echo $text_statistics; ?></div>
        <div class="dashboard-content">
          <div id="report" style="width: 390px; height: 170px; margin: auto;"></div>
        </div>
      </div>
      <div class="latest">
        <div class="dashboard-heading"><?php echo $text_latest_10_orders; ?></div>
        <div class="dashboard-content">
          <table class="list">
            <thead>
              <tr>
                <td class="right"><?php echo $column_order; ?></td>
                <td class="left"><?php echo $column_customer; ?></td>
                <td class="left"><?php echo $column_status; ?></td>
                <td class="left"><?php echo $column_date_added; ?></td>
                <td class="right"><?php echo $column_total; ?></td>
                <td class="right"><?php echo $column_action; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php if ($orders) { ?>
              <?php foreach ($orders as $order) { ?>
              <tr>
                <td class="right"><?php echo $order['order_id']; ?></td>
                <td class="left"><?php echo $order['customer']; ?></td>
                <td class="left"><?php echo $order['status']; ?></td>
                <td class="left"><?php echo $order['date_added']; ?></td>
                <td class="right"><?php echo $order['total']; ?></td>
                <td class="right"><?php foreach ($order['action'] as $action) { ?>
                  [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
                  <?php } ?></td>
              </tr>
              <?php } ?>
              <?php } else { ?>
              <tr>
                <td class="center" colspan="6"><?php echo $text_no_results; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>-->
<div class="container-fluid">

<div class="row-fluid">

<div class="span2 main-menu-span">
  <div class="well nav-collapse sidebar-nav">
          <ul class="nav nav-tabs nav-stacked main-menu">
            <li class="nav-header hidden-tablet">Vous êtes connecté en tant que <span>admin</span></li>
            <li><a href="<?php echo $information; ?>"><i class="icon-align-justify"></i> Informations</a></li>
            <li><a href="<?php echo $option; ?>"><i class="icon-align-justify"></i>Options</a></li>
            <li><a href="<?php echo $coupon; ?>" class="ajax-link"><i class="icon-star"></i><span class="hidden-tablet"> Bons de réduction</span></a></li>
            <li><a href="<?php echo $module; ?>" class="ajax-link"><i class="icon-th-large"></i><span class="hidden-tablet"><?php echo $text_module; ?></span></a></li>
            <li><a class="ajax-link" href="/" target="_blank"><i class="icon-tag"></i><span class="hidden-tablet"> Boutique</span></a></li>
             <li><a class="ajax-link" href="<?php echo $logout; ?>"><i class="icon-lock"></i><span class="hidden-tablet"> Déconnexion</span></a></li>
              <li><a class="ajax-link"> <i class="icon-hand-down"></i><span class="hidden-tablet"><?php echo $text_return; ?></span></a>
                <ul>
                  <li><a class="ajax-link" href="<?php echo $return_status; ?>"><?php echo $text_return_status; ?></a></li>
                  <li><a class="ajax-link" href="<?php echo $return_action; ?>"><?php echo $text_return_action; ?></a></li>
                  <li><a class="ajax-link" href="<?php echo $return_reason; ?>"><?php echo $text_return_reason; ?></a></li>
                </ul>
            </li>
            <li style="margin: 20px; text-align: center;"><img alt="Charisma Logo" src="http://eyelle-paris.com/source/eyelle_logo.png"></li>
          </ul>
  </div>
</div>


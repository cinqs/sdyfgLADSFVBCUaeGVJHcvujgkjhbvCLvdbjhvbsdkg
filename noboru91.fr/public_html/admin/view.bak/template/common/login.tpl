<!DOCTYPE html>
<html dir="ltr" lang="fr">
<head>
<meta charset="UTF-8" />
<title>Connexion Utilisateur</title>
<base href="" />

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

<script type="text/javascript">
  $(document).ready(function(){
  
        //  Initialize Backgound Stretcher     
    $('BODY').bgStretcher({
      images: ['img/1.jpg', 'img/2.jpg', 'img/3.jpg'],
      imageWidth: 900, 
      imageHeight: 560, 
      slideDirection: 'N',
      slideShowSpeed: 1000,
      transitionEffect: 'fade',
      sequenceMode: 'normal',
      buttonPrev: '#prev',
      buttonNext: '#next',
      pagination: '#nav',
      anchoring: 'left center',
      anchoringImg: 'left center'
    });
    
  });
</script>

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
        <a class="brand" href="<?php echo $action; ?>"><div><span><img src="/image/data/logo.png" /></span></div></a>


        <div class="span12 center login-header" >
          <h1>Bienvenue A EYELLE</h1>
        </div>


      </div>
  </div>
</div>


<div class="container-fluid">

<div class="row-fluid">

<div id="row-fluid" class="row-fluid-login">
  <div class="well span5 center login-box">
    <div class="alert alert-info">
      <?php echo $text_login; ?>   </div>
    <div class="content" style="min-height: 150px; overflow: hidden;">
    <?php if ($success) { ?>
      <div class="success"><?php echo $success; ?></div>
      <?php } ?>
      <?php if ($error_warning) { ?>
      <div class="warning"><?php echo $error_warning; ?></div>
      <?php } ?>
                  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table style="width: 100%;">
          <!--<tr>
            <td style="text-align: center;" rowspan="4"><img src="view/image/login.png" alt="Veuillez saisir vos identifiants" /></td>
          </tr>-->
          <tr>
            <td><?php echo $entry_username; ?><br />
              <input type="text" name="username" value="<?php echo $username; ?>" style="margin-top: 4px;" />
              <br />
              <br />
             <?php echo $entry_password; ?><br />
              <input type="password" name="password" value="<?php echo $password; ?>" style="margin-top: 4px;" />
                           
               <?php if ($forgotten) { ?>
              <br />
              <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
              <?php } ?>
                            </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><a onclick="$('#form').submit();" class="btn btn-primary">Valider</a></td>
          </tr>
        </table>
               <?php if ($redirect) { ?>
        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
        <?php } ?>
              </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$('#form input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#form').submit();
	}
});
//--></script> 
<!--</div>
</div>
<div id="footer"><a href="http://www.advresto.com" target="_blank">AdvResto</a> &copy; 2012-2014 Tous droits r&eacute;serv&eacute;s.<br />By <a href="http://www.faxozq.com">Faxo</a> - Version 1.5.5.1</div>
</div>
</div>
</body></html>-->
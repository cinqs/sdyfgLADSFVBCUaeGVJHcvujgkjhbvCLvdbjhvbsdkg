<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
      <div id="main" role="main">
        <div class="main_bg"></div>
        <div class="container">
        	<div id="notification" ></div>	
				  <div class="breadcrumb">
				    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
				    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
				    <?php } ?>
				  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php echo $description;?>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?>
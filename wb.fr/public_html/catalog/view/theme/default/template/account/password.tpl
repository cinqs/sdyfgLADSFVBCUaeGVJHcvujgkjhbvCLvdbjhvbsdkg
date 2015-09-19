<?php echo $header; ?>
      <div id="main" role="main">
        <div class="main_bg"></div>
        <div class="container">
		  <div class="breadcrumb">
		    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
		    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		    <?php } ?>
		  </div>
          <h1 class="text-center"><?php echo $heading_title; ?></h1>
           <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <h4><?php echo $text_password; ?></h4>
            <div class="content">
               <div class="pub_div"><label><span class="required">*</span> <?php echo $entry_password; ?></label><input type="password" name="password" value="<?php echo $password; ?>">
                <?php if ($error_password) { ?>
	            <label class="error"><?php echo $error_password; ?></label>
	            <?php } ?>
               </div>
               <div class="pub_div"><label><span class="required">*</span><?php echo $entry_confirm; ?></label><input type="password"  name="confirm"  value="">
	             <?php if ($error_confirm) { ?>
	            <label class="error"><?php echo $error_confirm; ?></label>
	            <?php } ?>
               </div> 
               <input type="submit" value="<?php echo $button_continue; ?>" class="button">  
            </div>
          </form>
        </div>    
      </div>
</div>
  </div>
<?php echo $footer; ?>
</div>
</section>
  </div>
  <!-- viewport -->
  

</body>

</html>
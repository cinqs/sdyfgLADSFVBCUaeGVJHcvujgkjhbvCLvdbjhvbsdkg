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
			<h4><?php echo $text_your_details; ?></h4>
			<div class="content">
				<div class="pub_div">
					<label>
						<span class="required">*</span>
						<?php echo $entry_firstname; ?>
					</label>
					<input type="text" name="firstname" value="<?php echo $firstname; ?>">
					<?php if ($error_firstname) { ?>
		            <label class="error"><?php echo $error_firstname; ?></label>
		            <?php } ?>
				</div>
				<div class="pub_div">
					<label>
						<span class="required">*</span>
						<?php echo $entry_lastname; ?>
					</label>
					<input type="text" name="lastname" value="<?php echo $lastname; ?>">
					<?php if ($error_lastname) { ?>
		            <label class="error"><?php echo $error_lastname; ?></label>
		            <?php } ?>
				</div>
				<div class="pub_div">
					<label>
						<span class="required">*</span>
						<?php echo $entry_email; ?>
					</label>
					<input type="text" name="email" value="<?php echo $email; ?>">
				<?php if ($error_email) { ?>
	            <label class="error"><?php echo $error_email; ?></label>
	            <?php } ?>
				</div>
				<div class="pub_div">
					<label>
						<span class="required">*</span>
						<?php echo $entry_telephone; ?>
					</label>
					<input type="text" name="telephone" value="<?php echo $telephone; ?>">
					<?php if ($error_telephone) { ?>
		            <label class="error"><?php echo $error_telephone; ?></label>
		            <?php } ?>
				</div>
				<div class="pub_div">
					<label>
						<span><?php echo $entry_fax; ?></span>
					</label>
					<input type="text" name="fax" value="<?php echo $fax; ?>">
				</div>

				<input type="submit" value="<?php echo $button_continue; ?>" class="button" />
			</div>
		</form>
	</div>
</div>
<?php echo $footer; ?>
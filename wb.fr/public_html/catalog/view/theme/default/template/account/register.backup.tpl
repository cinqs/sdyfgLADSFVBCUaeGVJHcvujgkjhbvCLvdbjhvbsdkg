<?php echo $header; ?>
<div id="main" role="main">
	<div class="main_bg"></div>
	<div class="container">
		<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
		<?php } ?>
		<ul class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?>
			<a href="<?php echo $breadcrumb['href']; ?>">
				<?php echo $breadcrumb['text']; ?>
			</a>
			<?php } ?>
		</ul>

		<div id="content" class="register_content">
			<div class="page-title">
				<?php echo $heading_title; ?>
			</div>
			<p>
				<?php echo $text_account_already; ?>
			</p>
			<form action="<?=$action?>" method="post" enctype="multipart/form-data">
	<h2>
		<?php echo $text_your_details; ?>
	</h2>
	<div class="content">
		<div class="row">
			<div class="col-md-2">
				<span class="required">*</span>
									<?php echo $entry_firstname; ?>
			</div>
			<div class="col-md-4">
				<input class="form-control" type="text" name="firstname" value="<?php echo $firstname; ?>">
									<?php if ($error_firstname) { ?>
						            <span class="error"><?php echo $error_firstname; ?></span>
						             <?php } ?>	
			</div>
			<div class="col-md-2">
				<span class="required">*</span>
									<?php echo $entry_lastname; ?>
			</div>
			<div class="col-md-4">
				<input class="form-control" type="text" name="lastname" value="<?php echo $lastname; ?>">
									<?php if ($error_lastname) { ?>
					            	<span class="error"><?php echo $error_lastname; ?></span>
					            	<?php } ?>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<span class="required">*</span>
									<?php echo $entry_email; ?>
			</div>
			<div class="col-md-4">
				<input class="form-control" type="text" name="email" value="<?php echo $email; ?>">
									<?php if ($error_email) { ?>
						            <span class="error"><?php echo $error_email; ?></span>
						            <?php } ?>
			</div>
			<div class="col-md-2">
				<span class="required">*</span>
									<?php echo $entry_telephone; ?>
			</div>
			<div class="col-md-4">
				<input class="form-control" type="text" name="telephone" value="<?php echo $telephone; ?>">
									<?php if ($error_telephone) { ?>
						            <span class="error"><?php echo $error_telephone; ?></span>
						            <?php } ?>
			</div>
		</div>
	</div>
	<h2>
					<?php echo $text_your_address; ?>
				</h2>
	<div class="content">
		<div class="row">
			<div class="col-md-4">
				<span class="required">*</span>
									<?php echo $entry_address_1; ?>
			</div>
			<div class="col-md-8">
				<input class="form-control" type="text" name="address_1" value="<?php echo $address_1; ?>">
									<?php if ($error_address_1) { ?>
						            <span class="error"><?php echo $error_address_1; ?></span>
						            <?php } ?>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<?php echo $entry_address_2; ?>
			</div>
			<div class="col-md-8">
				<input class="form-control" type="text" name="address_2" value="<?php echo $address_2; ?>">
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<span class="required">*</span>
									<?php echo $entry_postcode; ?>
			</div>
			<div class="col-md-8">
				<input class='form-control' type="text" name="postcode" value="<?php echo $postcode; ?>" />
			</div>
		</div>
		<h6 class="header-4"><br><?php echo $text_votre;?></h6>
		<div class="row">
			<div class="col-md-4">
				<?php echo $entry_company;?>
			</div>
			<div class="col-md-8">
				<input class="form-control" type="text" name="company" value="<?php echo $company ?>">
									<?php if ($error_company) { ?>
						            <span class="error"><?php echo $error_company; ?></span>
						            <?php } ?>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<?php echo $entry_batiment;?>
			</div>
			<div class="col-md-4">
				<input class="form-control" type="text" name="batiment" value="<?php echo $batiment?>">
									<?php if ($error_batiment) { ?>
						            <span class="error"><?php echo $error_batiment; ?></span>
						            <?php } ?>
			</div>
			<div class="col-md-2">
				<?php echo $entry_escalier;?>
			</div>
			<div class="col-md-4">
				<input class="form-control" type="text" name="escalier" value="<?php echo $escalier?>">
									<?php if ($error_escalier) { ?>
						            <span class="error"><?php echo $error_escalier; ?></span>
						            <?php } ?>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<?php echo $entry_interphone;?>
			</div>
			<div class="col-md-4">
				<input class="form-control" type="text" name="interphone" value="<?php echo $interphone?>">
									<?php if ($error_interphone) { ?>
						            <span class="error"><?php echo $error_einterphone; ?></span>
						            <?php } ?>
			</div>
			<div class="col-md-2">
				<?php echo $entry_ascenceur;?>
			</div>
			<div class="col-md-4">
				<input class="form-control" type="text" name="ascenceur" value="<?php echo $ascenceur?>">
									<?php if ($error_ascenceur) { ?>
						            <span class="error"><?php echo $error_ascenceur; ?></span>
						            <?php } ?>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<?php echo $entry_digicode1;?>
			</div>
			<div class="col-md-4">
				<input class="form-control" type="text" name="digicode1" value="<?php echo $digicode1?>">
									<?php if ($error_digicode1) { ?>
						            <span class="error"><?php echo $error_digicode1; ?></span>
						            <?php } ?>
			</div>
			<div class="col-md-2">
				<?php echo $entry_digicode2;?>
			</div>
			<div class="col-md-4">
				<input class="form-control" type="text" name="digicode2" value="<?php echo $digicode2?>">
									<?php if ($error_digicode2) { ?>
						            <span class="error"><?php echo $error_digicode2; ?></span>
						            <?php } ?>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<?php echo $entry_etage;?>
			</div>
			<div class="col-md-4">
				<input class="form-control" type="text" name="etage" value="<?php echo $etage?>">
									<?php if ($error_etage) { ?>
						            <span class="error"><?php echo $error_etage; ?></span>
						            <?php } ?>
			</div>
			<div class="col-md-2">
				<?php echo $entry_porte;?>
			</div>
			<div class="col-md-4">
				<input class="form-control" type="text" name="porte" value="<?php echo $porte?>">
									<?php if ($error_porte) { ?>
						            <span class="error"><?php echo $error_porte; ?></span>
						            <?php } ?>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<?php echo $entry_description;?>
			</div>
			<div class="col-md-8">
				<input class="form-control" type="text" name="description" value="<?php echo $description?>">
									<?php if ($error_description) { ?>
						            <span class="error"><?php echo $error_description; ?></span>
						            <?php } ?>
			</div>
		</div>
	</div>
	<h2>
					<?php echo $text_your_password; ?>
				</h2>
	<div class="content">
		<div class="row">
			<div class="col-md-4">
				<span class="required">*</span>
									<?php echo $entry_password; ?>
			</div>
			<div class="col-md-8">
				<input class="form-control" type="password" name="password" value="<?php echo $password; ?>">
									<?php if ($error_password) { ?>
									<span class="error"><?php echo $error_password; ?></span>
            						<?php } ?>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<span class="required">*</span>
									<?php echo $entry_confirm; ?>
			</div>
			<div class="col-md-8">
				<input class="form-control" type="password" name="confirm" value="<?php echo $confirm; ?>">
									<?php if ($error_confirm) { ?>
					            	<span class="error"><?php echo $error_confirm; ?></span>
					            	<?php } ?>
			</div>
		</div>
	</div>
	<?php if ($text_agree) { ?>
		    <div class="buttons">
		      <div class="right"><?php echo $text_agree; ?>
		        <?php if ($agree) { ?>
		        <input type="checkbox" name="agree" value="1" checked="checked" />
		        <?php } else { ?>
		        <input type="checkbox" name="agree" value="1" />
		        <?php } ?>
		        <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
		      </div>
		    </div>
		    <?php } else { ?>
		    <div class="buttons">
		      <div class="right">
		        <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
		      </div>
		    </div>
		    <?php } ?>
</form>
		</div>

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
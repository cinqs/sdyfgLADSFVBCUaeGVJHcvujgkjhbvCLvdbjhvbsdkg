<?php echo $header; ?>
			<script type="text/javascript">
			<?php if (isset($_SESSION['mailMessage']) && $_SESSION['mailMessage'] !='no' && $_SESSION['mailMessage'] !='unset') {?>
				alert("mail envoyé à <?=$_SESSION['mailMessage']?>");
			<?php $_SESSION['mailMessage'] = 'unset';}elseif (isset($_SESSION['mailMessage']) && $_SESSION['mailMessage'] =='no') {?>
				alert("problème détecté, réessayer plus tard s'il vous plaît ");
			<?php $_SESSION['mailMessage'] = 'unset';}?>
			</script>
			<div id="main" role="main">
				<div class="main_bg"></div>

				<div class="container">
				<?php if ($error_warning) { ?>
				<div class="warning"><?php echo $error_warning; ?></div>
				<?php } ?>
					<div class="breadcrumb">
					 <?php foreach ($breadcrumbs as $breadcrumb) { ?>
   					 <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
   					 <?php } ?>
					</div>
					<div class="login-content">
						<div class="left">
							<h2><?php echo $text_new_customer; ?></h2>
							<div class="content">
								<p>
									<b><?php echo $text_register; ?></b>
								</p>
								<p><?php echo $text_register_account; ?></p>
								 <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a>
							</div>
						</div>
						<div class="right">
							<h2><?php echo $text_returning_customer; ?></h2>
							      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
								<div class="content" id="login_right_content">
									<p><?php echo $text_i_am_returning_customer; ?></p>
									<b><?php echo $entry_email; ?></b>
									<br>
									<input type="text" name="email" value="">
									<br>
									<br>
									<b><?php echo $entry_password; ?></b>
									<br>
									<input type="password" name="password" value="">
									<br>
									<a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
									<br>
									<br>
									<input type="submit" value="<?php echo $button_login; ?>" class="button">
									<?php if ($redirect) { ?>
						            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
						            <?php } ?>
									</div>
							</form>
						</div>
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






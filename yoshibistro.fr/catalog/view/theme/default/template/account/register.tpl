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

		<div id="content">
			<div class="page-title">
				<?php echo $heading_title; ?>
			</div>
			<p>
				<?php echo $text_account_already; ?>
			</p>
			<form action="<?php echo $action; ?>" method="post"
				enctype="multipart/form-data">
				<h2>
					<?php echo $text_your_details; ?>
				</h2>
				<div class="content">
					<table class="form">
						<tbody>
							<tr>
								<td>
									<span class="required">*</span>
									<?php echo $entry_firstname; ?>
								</td>
								<td>
									<input class="form-control" type="text" name="firstname" value="<?php echo $firstname; ?>">
									<?php if ($error_firstname) { ?>
						            <span class="error"><?php echo $error_firstname; ?></span>
						             <?php } ?>	
								</td>
								<td>
									<span class="required">*</span>
									<?php echo $entry_lastname; ?>
								</td>
								<td>
									<input class="form-control" type="text" name="lastname" value="<?php echo $lastname; ?>">
									<?php if ($error_lastname) { ?>
					            	<span class="error"><?php echo $error_lastname; ?></span>
					            	<?php } ?>
								</td>
							</tr>
							<tr>
								<td>
									<span class="required">*</span>
									<?php echo $entry_email; ?>
								</td>
								<td>
									<input class="form-control" type="text" name="email" value="<?php echo $email; ?>">
									<?php if ($error_email) { ?>
						            <span class="error"><?php echo $error_email; ?></span>
						            <?php } ?>
								</td>
								<td>
									<span class="required">*</span>
									<?php echo $entry_telephone; ?>
								</td>
								<td>
									<input class="form-control" type="text" name="telephone" value="<?php echo $telephone; ?>">
									<?php if ($error_telephone) { ?>
						            <span class="error"><?php echo $error_telephone; ?></span>
						            <?php } ?>
								</td>
							</tr>
							<tr style="display: none;">
								<td>Fax :</td>
								<td>
									<input class="form-control" type="text" name="fax" value="">
								</td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
				<h2>
					<?php echo $text_your_address; ?>
				</h2>
				<div class="content">
					<table class="form">
						<tbody>
							<tr style="display: none;">
								<td>Identification fiscale :</td>
								<td>
									<input type="radio" name="customer_group_id" value="1"
										id="customer_group_id1" checked="checked">
									<label for="customer_group_id1">Défaut</label>
									<br>
								</td>
							</tr>
							<tr id="company-id-display" style="display: none;">
								<td>
									<span id="company-id-required" class="required"
										style="display: none;">*</span>
									Identifiant société :
								</td>
								<td>
									<input class="form-control" type="text" name="company_id"
										value="">
								</td>
							</tr>
							<tr id="tax-id-display" style="display: none;">
								<td>
									<span id="tax-id-required" class="required"
										style="display: none;">*</span>
									Identifiant TVA :
								</td>
								<td>
									<input class="form-control" type="text" name="tax_id" value="">
								</td>
							</tr>
							<tr>
								<td>
									<span class="required">*</span>
									<?php echo $entry_address_1; ?>
								</td>
								<td colspan="3">
									<input class="form-control" type="text" name="address_1" value="<?php echo $address_1; ?>">
									<?php if ($error_address_1) { ?>
						            <span class="error"><?php echo $error_address_1; ?></span>
						            <?php } ?>
								</td>
							</tr>
							<tr>
								<td>
									<?php echo $entry_address_2; ?>
								</td>
								<td colspan="3">
									<input class="form-control" type="text" name="address_2" value="<?php echo $address_2; ?>">
								</td>
							</tr>

							<tr>
								<td>
									<span class="required">*</span>
									<?php echo $entry_postcode; ?>
								</td>
								<td>
									<input class='form-control' type="text" name="postcode" value="<?php echo $postcode; ?>" />
								</td>
								<td style="display: none;">
									<span class="required">*</span>
									Pays :
								</td>
								<td style="display: none;">
									<select class="form-control" name="country_id">
										<option value="">--- Veuillez choisir ---</option>
										<option value="73" selected="selected">France</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="4">
									<h6 class="header-4">
										<br>
										<?php echo $text_votre;?>
									</h6>
								</td>
							</tr>
							<tr>
								<td><?php echo $entry_company;?></td>
								<td colspan="3">
									<input class="form-control" type="text" name="company" value="<?php echo $company ?>">
									<?php if ($error_company) { ?>
						            <span class="error"><?php echo $error_company; ?></span>
						            <?php } ?>
								</td>
							</tr>
							<tr>
								<td><?php echo $entry_batiment;?></td>
								<td>
									<input class="form-control" type="text" name="batiment" value="<?php echo $batiment?>">
									<?php if ($error_batiment) { ?>
						            <span class="error"><?php echo $error_batiment; ?></span>
						            <?php } ?>
								</td>
								<td><?php echo $entry_escalier;?></td>
								<td>
									<input class="form-control" type="text" name="escalier" value="<?php echo $escalier?>">
									<?php if ($error_escalier) { ?>
						            <span class="error"><?php echo $error_escalier; ?></span>
						            <?php } ?>
								</td>
							</tr>
							<tr>
								<td><?php echo $entry_interphone;?></td>
								<td>
									<input class="form-control" type="text" name="interphone" value="<?php echo $interphone?>">
									<?php if ($error_interphone) { ?>
						            <span class="error"><?php echo $error_einterphone; ?></span>
						            <?php } ?>
								</td>
								<td><?php echo $entry_ascenceur;?></td>
								<td>
									<input class="form-control" type="text" name="ascenceur" value="<?php echo $ascenceur?>">
									<?php if ($error_ascenceur) { ?>
						            <span class="error"><?php echo $error_ascenceur; ?></span>
						            <?php } ?>
								</td>
							</tr>
							<tr>
								<td><?php echo $entry_digicode1;?></td>
								<td>
									<input class="form-control" type="text" name="digicode1" value="<?php echo $digicode1?>">
									<?php if ($error_digicode1) { ?>
						            <span class="error"><?php echo $error_digicode1; ?></span>
						            <?php } ?>
								</td>
								<td><?php echo $entry_digicode2;?></td>
								<td>
									<input class="form-control" type="text" name="digicode2" value="<?php echo $digicode2?>">
									<?php if ($error_digicode2) { ?>
						            <span class="error"><?php echo $error_digicode2; ?></span>
						            <?php } ?>
								</td>
							</tr>
							<tr>
								<td><?php echo $entry_etage;?></td>
								<td>
									<input class="form-control" type="text" name="etage" value="<?php echo $etage?>">
									<?php if ($error_etage) { ?>
						            <span class="error"><?php echo $error_etage; ?></span>
						            <?php } ?>
								</td>
								<td><?php echo $entry_porte;?></td>
								<td>
									<input class="form-control" type="text" name="porte" value="<?php echo $porte?>">
									<?php if ($error_porte) { ?>
						            <span class="error"><?php echo $error_porte; ?></span>
						            <?php } ?>
								</td>
							</tr>
							<tr>
								<td><?php echo $entry_description;?></td>
								<td colspan="3">
									<input class="form-control" type="text" name="description" value="<?php echo $description?>">
									<?php if ($error_description) { ?>
						            <span class="error"><?php echo $error_description; ?></span>
						            <?php } ?>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<h2>
					<?php echo $text_your_password; ?>
				</h2>
				<div class="content">
					<table class="form">
						<tbody>
							<tr>
								<td>
									<span class="required">*</span>
									<?php echo $entry_password; ?>
								</td>
								<td>
									<input class="form-control" type="password" name="password" value="<?php echo $password; ?>">
									<?php if ($error_password) { ?>
									<span class="error"><?php echo $error_password; ?></span>
            						<?php } ?>
								</td>
							</tr>
							<tr>
								<td>
									<span class="required">*</span>
									<?php echo $entry_confirm; ?>
								</td>
								<td>
									<input class="form-control" type="password" name="confirm" value="<?php echo $confirm; ?>">
									<?php if ($error_confirm) { ?>
					            	<span class="error"><?php echo $error_confirm; ?></span>
					            	<?php } ?>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<h2>
					<?php echo $text_newsletter; ?>
				</h2>
				<div class="content">
					<table class="form">
						<tbody>
							<tr>
								<td>
									<?php echo $entry_newsletter; ?>
								</td>
								<td>
									<?php if ($newsletter) { ?>
									<input type="radio" name="newsletter" value="1"
										checked="checked" />
									<?php echo $text_yes; ?>
									<input type="radio" name="newsletter" value="0" />
									<?php echo $text_no; ?>
									<?php } else { ?>
									<input type="radio" name="newsletter" value="1" />
									<?php echo $text_yes; ?>
									<input type="radio" name="newsletter" value="0"
										checked="checked" />
									<?php echo $text_no; ?>
									<?php } ?>
								</td>
							</tr>
						</tbody>
					</table>
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
<?php echo $footer; ?>
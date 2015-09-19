<?php echo $header; ?>
<div id="main" role="main">
	<div class="main_bg"></div>
	<div class="container">
		<div id="notification"></div>
		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?>
			<a href="<?php echo $breadcrumb['href']; ?>">
				<?php echo $breadcrumb['text']; ?>
			</a>
			<?php } ?>
		</div>

		<div class="row sidebar_left ">

			<div class="column_center">
				<div id="main_content" class="col-sm-9">
					<div id="searchresults" class="search-scope">

						<h2 class="page_heading"><?php echo $heading_title; ?></h2>

						<div class="search-form clearfix" >
						
						  <?php if ($search) { ?>
					      <input type="text" class="form-control hint" name="search" placeholder="<?php echo $search; ?>" value="<?php echo $search; ?>" />
					      <?php } else { ?>
					      <input type="text" class="form-control hint" name="search" placeholder="<?php echo $search; ?>"  value="<?php echo $search; ?>" onclick="this.value = '';" />
					      <?php } ?>
							<button type="submit"  class="button-search" >
								<i class="fa fa-search"></i>
							</button>
						</div>
						
	<?php if ($products) { ?>
    <ol class="search-results">
      <?php foreach ($products as $product) { ?>
      <li class="search-result">     
        <div class="product_name">
          <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
        </div>
        <div class="search-result_container">
         <?php if ($product['thumb']) { ?>
          <div class="search-result_image pull-left">
			<a href="<?php echo $product['href']; ?>"><img width='100' src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
          </div>
         <?php } ?> 
          <div class="product_desc"><?php echo $product['description']; ?></div>        
        </div>
      </li>
      <?php }?> 
    </ol>
    <div class="clearfix"></div>
  <?php } else { ?>
		<p class="alert alert-error"><?php echo $text_empty; ?></p>
  <?php }?>








































					</div>
				</div>
			</div>

			<div class="column_left column col-sm-3">



				<?php echo $column_left; ?>


			</div>

		</div>

	</div>
</div>

<?php echo $footer; ?>
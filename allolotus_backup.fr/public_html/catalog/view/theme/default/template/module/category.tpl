							<div class="widget widget__types">
								<h3 class="widget_header"><?php echo $heading_title; ?></h3>
								<div class="widget_content">
									<ul class="list">
								      <?php foreach ($categories as $category) { ?>
								      <li>
								        <?php if ($category['category_id'] == $category_id) { ?>
								        <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
								        <?php } else { ?>
								        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
								        <?php } ?>
								      </li>
								      <?php } ?>

									</ul>
								</div>
							</div>
							<div class="widget widget__collections">
								<h3 class="widget_header"><?php //echo $catalog_title; ?>Catalogue</h3>
								<div class="widget_content">
									<ul class="list">
									<?php foreach ($categories as $category) { ?>

										<?php 
											if ($category["category_id"] == "33") {
												print("<li><a href='http://yoshibistro.net/#composes'>Menu Composés</a></li>");
											}
										?>
								        <?php if ($category['children']) { ?>
								          <?php foreach ($category['children'] as $child) { ?>
								          <li>
								            <?php if ($child['category_id'] == $child_id) { ?>
								            <a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a>
								            <?php } else { ?>
								            <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
								            <?php } ?>
								          </li>
								          <?php } ?>
								        <?php } ?>
										 <?php } ?>
									</ul>
								</div>
							</div>
							
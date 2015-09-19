<?php echo $header; ?>

<div id="content" class="span10">
  <div class="box-header well" data-original-title="">
    <h2><i class="icon icon-red icon-book"></i>
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </h2>
      </div>   
    <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>      

      <div class="box">
    
<div class="content">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="list">
          <thead>
            <tr>
              <td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
              <td class="left"><?php echo $column_name; ?></a></td>
              <td class="left"><?php echo $column_url; ?></td>
              <td class="right"><?php echo $column_action; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php if ($stores) { ?>
            <?php foreach ($stores as $store) { ?>
            <tr>
              <td style="text-align: center;"><?php if ($store['selected']) { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $store['store_id']; ?>" checked="checked" />
                <?php } else { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $store['store_id']; ?>" />
                <?php } ?></td>
              <td class="left"><?php echo $store['name']; ?></td>
              <td class="left"><?php echo $store['url']; ?></td>
              <td class="right"><?php foreach ($store['action'] as $action) { ?>
                <a class="btn btn-info" href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> 
                <?php } ?></td>
            </tr>
            <?php } ?>
            <?php } else { ?>
            <tr>
              <td class="center" colspan="4"><?php echo $text_no_results; ?></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?> 
   
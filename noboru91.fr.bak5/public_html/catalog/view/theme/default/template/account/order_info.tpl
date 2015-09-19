<?php echo $header; ?>
<div id="main" role="main">
	<div class="main_bg"></div>
<div id="content" class="container">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <table class="list">
    <thead>
      <tr>
        <td class="left" style="width:100%;" colspan="2"><?php echo $text_order_detail; ?></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="left" style="width: 50%;"><?php if ($invoice_no) { ?>
          <b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />
          <?php } ?>
          <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
          <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
        <td class="left" style="width: 50%;"><?php if ($payment_method) { ?>
          <b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?><br />
          <?php } ?>
          <?php if ($shipping_method) { ?>
          <b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>
          <?php } ?></td>
      </tr>
    </tbody>
  </table>
  <table class="list">
    <thead>
      <tr>
        <td class="left" style="width: 50%;"><?php echo $text_payment_address; ?></td>
        <?php if ($shipping_address) { ?>
        <td class="left" style="width: 50%;"><?php echo $text_shipping_address; ?></td>
        <?php } ?>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="left" style="width: 50%;"><?php echo $payment_address; ?></td>
        <?php if ($shipping_address) { ?>
        <td class="left" style="width: 50%;"><?php echo $shipping_address; ?></td>
        <?php } ?>
      </tr>
    </tbody>
  </table>
  <table class="list" >
    <thead>
      <tr class="order_info">
        <td  style="width:20%"><?php echo $column_name; ?></td>
        <td  style="width:20%"><?php echo $column_model; ?></td>
        <td  style="width:15%"><?php echo $column_quantity; ?></td>
        <td  style="width:20%"><?php echo $column_price; ?></td>
        <td  style="width:20%"><?php echo $column_total; ?></td>
        <?php if ($products) { ?>
        <td style="width:5%"></td>
        <?php } ?>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($products as $product) { ?>
      <tr class="order_info">
        <td style="width:20%"><?php echo $product['name']; ?>
          <?php foreach ($product['option'] as $option) { ?>
          <br />
          &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
          <?php } ?></td>
        <td style="width:20%"><?php echo $product['model']; ?></td>
        <td style="width:15%"><?php echo $product['quantity']; ?></td>
        <td style="width:20%"><?php echo $product['price']; ?></td>
        <td style="width:20%"><?php echo $product['total']; ?></td>
        <td style="width:5%"><a href="<?php echo $product['return']; ?>"><img src="catalog/view/theme/default/image/return.png" alt="<?php echo $button_return; ?>" title="<?php echo $button_return; ?>" /></a></td>
      </tr>
      <?php } ?>
      <?php foreach ($vouchers as $voucher) { ?>
      <tr  class="order_info">
        <td class="left"><?php echo $voucher['description']; ?></td>
        <td class="left"></td>
        <td class="right">1</td>
        <td class="right"><?php echo $voucher['amount']; ?></td>
        <td class="right"><?php echo $voucher['amount']; ?></td>
        <?php if ($products) { ?>
        <td></td>
        <?php } ?>
      </tr>
      <?php } ?>
    </tbody>
    <tfoot>
      <?php foreach ($totals as $total) { ?>
      <tr  class="order_info">
        <td colspan="3"></td>
        <td style="width:20%"><b><?php echo $total['title']; ?>:</b></td>
        <td style="width:20%"><?php echo $total['text']; ?></td>
        <?php if ($products) { ?>
        <td style="width:5%"></td>
        <?php } ?>
      </tr>
      <?php } ?>
      <?php if($fulls){?>
     <tr class="order_info">
     	<td colspan="3"></td>
     	<td><b>促销活动:: </b></td>
     	<td><?php echo $fulls[0];?></td>	
     	<td><b></b></td>	
     </tr>
     <?php }?>
    </tfoot>
  </table>
  <?php if ($comment) { ?>
  <table class="list">
    <thead>
      <tr>
        <td class="left"><?php echo $text_comment; ?></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="left"><?php echo $comment; ?></td>
      </tr>
    </tbody>
  </table>
  <?php } ?>
  <?php if ($histories) { ?>
  <h2><?php echo $text_history; ?></h2>
  <table class="list">
    <thead>
      <tr class="order_info">
        <td style="width:33%"><?php echo $column_date_added; ?></td>
        <td style="width:33%"><?php echo $column_status; ?></td>
        <td style="width:34%"><?php echo $column_comment; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($histories as $history) { ?>
      <tr class="order_info">
        <td style="width:33%"><?php echo $history['date_added']; ?></td>
        <td style="width:33%"><?php echo $history['status']; ?></td>
        <td style="width:34%"><?php echo $history['comment']; ?></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
  <?php } ?>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?> 
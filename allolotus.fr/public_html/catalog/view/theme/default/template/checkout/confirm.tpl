<?php if (!isset($redirect)) { ?>
<div class="checkout-product">
  <table>
    <thead>
      <tr>
        <td class="name"><?php echo $column_name; ?></td>
        <td class="model"><?php echo $column_model; ?></td>
        <td class="quantity"><?php echo $column_quantity; ?></td>
        <td class="price"><?php echo $column_price; ?></td>
        <td class="total"><?php echo $column_total; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php $additional=array();$additionals=array();?>
      <?php foreach ($products as $product) { ?>
        <?php if ($product['model']!="additional") {?>
        <tr>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name'];?></a>
          <?php if(isset($product['meals']) && !empty($product['meals'])){
               foreach ($product['meals'] as $key_meal => $value_meal) {
                ?>
                <br />
                &nbsp;<small> - <?php echo $value_meal['name'];?></small>
            <?php  
             }
            }?>
          
          
            <?php foreach ($product['option'] as $option) { ?>
            
            &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
            <?php } ?></td>
          <td class="model"><?php echo $product['model']; ?></td>
          <td class="quantity"><?php echo $product['quantity']; ?></td>
          <td class="price"><?php echo $product['price']; ?></td>
          <td class="total"><?php echo $product['total']; ?></td>
        </tr>
        <?php }else{
              $additional['name'] = $product['name'];
              $additional['quantity'] = $product['quantity'];
              array_push($additionals, $additional);
          }?>
      <?php } ?>
      <?php foreach ($vouchers as $voucher) { ?>
      <tr>
        <td class="name"><?php echo $voucher['description']; ?></td>
        <td class="model"></td>
        <td class="quantity">1</td>
        <td class="price"><?php echo $voucher['amount']; ?></td>
        <td class="total"><?php echo $voucher['amount']; ?></td>
      </tr>
      <?php } ?>

    </tbody>
    <tfoot>
      <?php foreach ($totals as $total) { ?>
      <tr>
        <td colspan="4" class="price"><b><?php echo $total['title']; ?>:</b></td>
        <td class="total"><?php echo $total['text']; ?></td>
      </tr>
      <?php } ?>
           <?php if($fulls){ ?>
      <tr>
        <td colspan="4">促销活动:: </td>
        <td ><?php echo $fulls[0]; ?></td>
      </tr>
      <?php } ?>
    </tfoot>
  </table>
  <form id="totalS" action="http://<?php echo $_SERVER['SERVER_NAME']?>/index.php?route=common/payrequest" method="post">
    <input name="nihao" value="<?php echo $total['text']; ?>">
  </form>
  <style type="text/css">
  #totalS{
    display: none;
  }
  </style>
  <h5>Additionals</h5>
  <table id="check_addition_table">
    <tr>
      <th>NOM</th>
      <th>QTTY</th>
    </tr>
    <?php if (empty($additionals)) {?>
        <tr>
          <td>NONE</td>
          <td>NONE</td>
        </tr>
      <?php }?>
    <?php foreach ($additionals as $addition) {?>
    <tr>
      <td><?php echo $addition['name'];?></td>
      <td><i class="fa fa-check"></i></td>
    </tr>
    <?php }?>
  </table>
</div><br>
<div class="payment"><?php echo $payment; ?></div>
<?php } else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script> 
<?php } ?>
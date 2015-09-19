<?php echo $header; ?>

<div id="content" class="span10">
  <!--<div class="breadcrumb">
        <a href="index.php?route=common/home&amp;token=d6507771bfe98c6fba8b64200bf44d38">Accueil</a>
      </div>-->
            
    <div class="heading">
      <h1><img src="/admin/img/home.png" alt=""> Tableau de bord</h1>
    </div>


      
      <div class="row-fluid">
        <div class="box span12">
          <div class="box-header well">
            <h2><i class="icon-info-sign"></i> EYELLE Website <small></small></h2>
            <div class="box-icon">
              <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
              <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
              <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
            </div>
          </div>
          <div class="box-content">
            
            <p class="center">
              <a target="_blank" href="index.php?route=report/newreport&token=<?php echo $token; ?>" class="btn btn-large btn-primary"><i class="icon-chevron-left icon-white"></i> Commande Temps-réel</a>
              
            </p>
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
          
      <div class="row-fluid sortable ui-sortable">
        <div class="box span4">
          <div class="box-header well" data-original-title="">
            <h2><i class="icon-list-alt"></i>Présentation</h2>
            <div class="box-icon">
              <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
              <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
            </div>
          </div>
          <div class="box-content">
           <table>
            <tr>
              <td><?php echo $text_total_sale; ?></td>
              <td><?php echo $total_sale; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_sale_year; ?></td>
              <td><?php echo $total_sale_year; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_order; ?></td>
              <td><?php echo $total_order; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_customer; ?></td>
              <td><?php echo $total_customer; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_customer_approval; ?></td>
              <td><?php echo $total_customer_approval; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_review_approval; ?></td>
              <td><?php echo $total_review_approval; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_affiliate; ?></td>
              <td><?php echo $total_affiliate; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_affiliate_approval; ?></td>
              <td><?php echo $total_affiliate_approval; ?></td>
            </tr>
          </table>
          </div>
        </div>

        <div class="box span8">
          <div class="box-header well" data-original-title="">
            <h2><i class="icon-list-alt"></i>Statistiques</h2>
            <div class="box-icon">
              <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
              <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
            </div>
          </div>
          <div class="box-content">
            <div id="report" style="width: 100%; height: 200px; margin: auto; padding: 0px; position: relative;" ></div>
            <div class="range">Choisir une période :              <select id="range" onChange="getSalesChart(this.value)">
                <option selected="selected" value="day">Aujourd’hui</option>
                <option value="week">Cette Semaine</option>
                <option value="month">Ce Mois</option>
                <option value="year">Cette Année</option>
              </select>
            </div>
          </div>
          
        </div>
        
      </div><!--/row-->

</div>


<!--[if IE]>
<script type="text/javascript" src="view/javascript/jquery/flot/excanvas.js"></script>
<![endif]--> 
<script type="text/javascript" src="view/javascript/jquery/flot/jquery.flot.js"></script> 
<script type="text/javascript"><!--
function getSalesChart(range) {
	$.ajax({
		type: 'get',
		url: 'index.php?route=common/home/chart&token=<?php echo $token; ?>&range=' + range,
		dataType: 'json',
		async: false,
		success: function(json) {
			var option = {	
				shadowSize: 0,
				lines: { 
					show: true,
					fill: true,
					lineWidth: 1
				},
				grid: {
					backgroundColor: '#FFFFFF'
				},	
				xaxis: {
            		ticks: json.xaxis
				}
			}

			$.plot($('#report'), [json.order, json.customer], option);
		}
	});
}

getSalesChart($('#range').val());
//--></script> 
<?php echo $footer; ?>
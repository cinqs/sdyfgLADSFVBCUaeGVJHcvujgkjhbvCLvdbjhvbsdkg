<?php
	$token = $_POST['token'];
?>

<?php if (isset($token)) {?>
	
<html>
<!-- License:  LGPL 2.1 or QZ INDUSTRIES SOURCE CODE LICENSE -->
<head><title>WASABI</title>
<script type="text/javascript" src="js/deployJava.js"></script>
<script type="text/javascript" src="js/eyelleprint.js"></script>
<script type="text/javascript">
	
</script>
	<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="js/html2canvas.js"></script>
	<script type="text/javascript" src="js/jquery.plugin.html2canvas.js"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<script type="text/javascript">
  var iii = 0;
    $(document).ready(function(){

      findPrinter();
      setInterval(function(){getCont();},3000);
    });
    function getContent() {
      var xmlhttp = new XMLHttpRequest();
      xmlhttp.onreadystatechange = function() {
          if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            var orderNew = xmlhttp.responseText;/*
            var orderTrans = JSON.parse(orderNew);
            if (orderTrans != null) {
            	printNihao(orderTrans);
            	iii++;
            }else{
            	$('body').append('<span>'+iii+'&nbsp;</span>');
            	iii++;
            };*/
          }
      }
      xmlhttp.open("GET", "getcontentfile.php?q=select", true);
      xmlhttp.send();
    }
    function getCont(){

    	$.ajax({
    		url:"getcontentfile.php",
    		data:"q=select",
    		type:'POST',
    		success: function(dataGet){
    			if (dataGet != null) {
    				//$('#forIn').append(dataGet+'<br><br><br><br><br><br><br><br>'+iii);
    				printNihao(dataGet);
    				//printPDF();
    				iii++;
            //alert(dataGet);
    				//$('body').append('<span>printed&nbsp;</span>');
    				orderTrans = JSON.parse(dataGet);
    				$("#latest_show").html("<div class='col-md-12 orderShow'><h5>Order: "+orderTrans[0].order_id+"</h5><h6>Prenom et NOM: <span class='order_name'>"+orderTrans[0].firstname+" "+orderTrans[0].lastname+"</span></h6><h6>Tel: <span class='order_tel'>"+orderTrans[0].telephone+"</span></h6><h6>Adress: <span class='order_adr'>"+orderTrans[0].payment_address_1+" "+orderTrans[0].payment_address_2+" "+orderTrans[0].payment_city+" "+orderTrans[0].payment_postcode+"</span></h6><h6>Total: <span class='order_total'>"+orderTrans[0].total+"</span></h6><h6>Comment: <span class='order_com'>"+orderTrans[0].comment+"</span></h6><h6>Order:</h6><div class='order_content'></div></div>");
    				$("#showSomething").prepend("<div class='col-md-12 orderShow'><h5>Order: "+orderTrans[0].order_id+"</h5><h6>Prenom et NOM: <span class='order_name'>"+orderTrans[0].firstname+" "+orderTrans[0].lastname+"</span></h6><h6>Tel: <span class='order_tel'>"+orderTrans[0].telephone+"</span></h6><h6>Adress: <span class='order_adr'>"+orderTrans[0].payment_address_1+" "+orderTrans[0].payment_address_2+" "+orderTrans[0].payment_city+" "+orderTrans[0].payment_postcode+"</span></h6><h6>Total: <span class='order_total'>"+orderTrans[0].total+"</span></h6><h6>Comment: <span class='order_com'>"+orderTrans[0].comment+"</span></h6><h6>Order:</h6><div class='order_content'></div></div>");
    				$(".orderShow").removeClass("lastest_order");
    				$(".orderShow:first-child").addClass("lastest_order");
    				var lastest_order_content = '';
    				for(var i = 0; i < orderTrans[1].length; i++){
    					lastest_order_content += orderTrans[1][i].quantity +" X " + orderTrans[1][i].name + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + orderTrans[1][i].total + "<br>";
    				}
    				$(".lastest_order>.order_content").prepend(lastest_order_content);
    				updateStatus(orderTrans[0].order_id);
    			}else{
    				$('#forIn').append('<span>'+iii+'&nbsp;</span>');
    				iii++;
    			};
    		},

    	});
    }

    function updateStatus(order_id){
    	$.ajax({
    		url:"getcontentfile.php",
    		data:"q="+order_id,
    		type:"POST"
    	});
    }
  </script>
  <style type="text/css">
  body{
    background-color: ghostwhite;
  }
  #noshow{
  	display: none;
  }
  .orderShow{
  	margin: 10px;
  	background-color: green;
  	color:red;
  }
  .order_name{
  	color: white;
  }
  .order_tel{
  	color: white;
  }
  .order_adr{
  	color: white;
  }
  .order_com{
  	color: white;
  }
  .order_total{
  	color: white;
  }
  .order_content{
  	float: right;
  	color: white;
  }
  .lastest_order{
  	background-color: blue;
  }
  </style>
	</head>


	<body id="content" bgcolor="#FFF380">
	
		<div class="container">
      <div>
        <h1>WASABI SUSHI ORDER</h1>
      </div>
			<div class="row">
				<div class="col-md-8" id="latest_show"></div>
				<div class="col-md-4" id="showSomething"></div>
			</div>
		</div>
	<div id="noshow">
	<div style="position:absolute;top:0;left:5;" ><h1 id="title">QZ Print Plugin</h1></div><br /><br /><br />
	<table border="1px" cellpadding="5px" cellspacing="0px"><tr>

	<td valign="top"><h2>All Printers</h2>
	<input type="button" onClick="findPrinter()" value="Detect Printer"><br />
	<input id="printer" type="text" value="zebra2" size="15"><br />
	<input type="button" onClick="findPrinters()" value="List All Printers"><br />
	<input type="button" onClick="useDefaultPrinter()" value="Use Default Printer"><br /><br />

	</td><td valign="top"><h2>Raw Printers Only</h2>
	<a href="http://qzindustries.com/WhatIsRawPrinting" target="new">What is Raw Printing?</a><br /><br />
	<input type="button" onClick="printEPL()" value="Print EPL" /><br />
	<input type="button" onClick="printZPL()" value="Print ZPL" /><br /><br />
	<input type="button" onClick="printESCP()" value="Print ESCP" /><br />
		<a href="javascript:findPrinter('Epson');">Epson</a>&nbsp;
		<a href="javascript:findPrinter('Citizen');">Citizen</a>&nbsp;
		<a href="javascript:findPrinter('Star');">Star</a> <br /><br /> 
	<input type="button" onClick="printEPCL()" value="Print EPCL" /><br />
		(Zebra Card Printer)<br /><br />
	<input type="button" onClick="print64()" value="Print Base64" /><br />
	<input type="button" onClick="printPages()" value="Print Spooling Every 2" /><br />
	<input type="button" onClick="printXML()" value="Print XML" /><br />
	<input type="button" onClick="printHex()" value="Print Hex" /><br /><br />
	<input type="button" onClick="printFile('zpl_sample.txt')" value="zpl_sample.txt" /><br />
	<input type="button" onClick="printFile('fgl_sample.txt')" value="fgl_sample.txt" /><br />
	<input type="button" onClick="printFile('epl_sample.txt')" value="epl_sample.txt" /><br /><br />

	<input type="button" onClick="printToFile()" value="Print To File" /><br />
	<input type="button" onClick="printToHost()" value="Print To Host" /><br />
	<input type="button" onClick="useAlternatePrinting()" value="Use Alternate Printing" /><br />

	</td><td valign="top"><h2>PostScript Printers Only</h2>
	<a href="http://qzindustries.com/WhatIsPostScriptPrinting" target="new">What is PostScript Printing?</a><br />
	<p>First find <a href="javascript:findPrinter('XPS');">Microsoft XPS</a> or <a href="javascript:findPrinter('PDF');">PDF</a> printer</p>
	<input type="button" onClick="printHTML()" value="Print HTML" /><br />
	<input type="button" onClick="printPDF()" value="Print PDF" /><br />
	<input type="button" onClick="printImage(false)" value="Print PostScript Image" /><br />
	<input type="button" onClick="printImage(true)" value="Print Scaled PostScript Image" /><br />
	<input type="button" onClick="printHTML5Page()" value="Print Current Page" /><br />
	<input type="button" onClick="logFeatures()" value="Log Printer Features on Print" /><br />

	</td><td valign="top"><h2>Serial</h2>
	<input type="button" id="list_ports" onClick="listSerialPorts()" value="List Serial Ports" /><br />
	<input type=text id="port_name" size="8" />
	<input type="button" id="open_port"  onClick="openSerialPort()" value="Open Port" /><br />
	<input type="button" id="send_data" onClick="sendSerialData()" value="Send Port Cmd" /><br />
	<input type="button" id="close_port"  onClick="closeSerialPort()" value="Close Port" /><br />
	<hr /><h2>Misc</h2>
	<input type="button" onClick="listNetworkInfo()" value="List Network Info" /><br />
	<input type="button" onClick="allowMultiple()" value="Allow Multiple Applets" /><br /></td></tr></table>

	<div id="forIn">
		<h1>this below is to test the auto print</h1>
		
	</div></div>
	</body><canvas id="hidden_screenshot" style="display:none;"></canvas>
</html>
<?php }else{
	//echo $_SERVER['SERVER_NAME'];
	header("Location: http://".$_SERVER['SERVER_NAME']."/admin/index.php");
	}?>


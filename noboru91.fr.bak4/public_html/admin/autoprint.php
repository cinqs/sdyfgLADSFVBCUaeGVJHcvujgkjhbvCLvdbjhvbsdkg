<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script type="text/javascript" src="view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="view/javascript/jquery/ui/external/jquery.bgiframe-2.1.2.js"></script>
<script type="text/javascript" src="view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="view/javascript/jquery/superfish/js/superfish.js"></script>
<script type="text/javascript" src="js/deployJava.js"></script>
<script type="text/javascript" src="js/eyelleprint.js"></script>
<script type="text/javascript" src="js/html2canvas.js"></script>
  <script type="text/javascript" src="js/jquery.plugin.html2canvas.js"></script>
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
            var orderNew = xmlhttp.responseText;
            //$('body').append('<span>'+orderNew+'&nbsp;</span>');
            /*
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
      xmlhttp.open("GET", "getC.php?q=select", true);
      xmlhttp.send();
    }
    function getCont(){
    	$.ajax({
    		url:"getC.php",
    		data:"q=select",
    		type:'POST',
    		success: function(dataGet){
    			var orderTrans = JSON.parse(dataGet);
    			if (orderTrans != null) {
    				printNihao(orderTrans);
    				//printPDF();
    				iii++;
    				$('body').append('<span>printed&nbsp;</span>');
    				//updateStatus(orderTrans[0].order_id);
    			}else{
    				$('body').append('<span>'+iii+'&nbsp;</span>');
    				iii++;
    			};
    		}

    	});
    }
/*
    function updateStatus(order_id){
    	$.ajax({
    		url:"getC.php",
    		data:"q="+order_id;
    		type:"POST"
    	});
    }*/
  </script>
</head>
<body id="content">
	<div>nihao</div>
	<input id="printer" type="text" value="zebra" size="15"><br />

</body>
</html>
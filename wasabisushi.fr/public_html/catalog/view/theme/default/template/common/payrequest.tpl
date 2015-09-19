<?php echo $header;?><br><br><br><br><br><br><br>
<style type="text/css">
	center{
		text-align: left;
	}
</style>
<?php
	//$nihao = $_POST["nihao"];
	$nihao = $_SESSION["total_amount"];
	$nihao = str_ireplace(",", ".", $nihao);
	$nihao = (float)$nihao;
	$amounttotal = $nihao;
	$nihao = $nihao * 100;
?>
<?php
// ATOS VERSION 1.3.5 Par Mickael CAUX pour XYZ-Multimédia 
if(true){
	
	function verif_champ($post){
		$return      = false;
		$conf        = Configuration::getMultiple(array('ATOS_MERCHAND_ID'));
		$cookie      = new Cookie('ps');
		$id_cart     = $cookie->id_cart;
		$cart        = new Cart($id_cart);
		$id_currency = intval($cart->id_currency);
		$currency    = new Currency(intval($id_currency));
		$montant     = number_format(Tools::convertPrice($cart->getOrderTotal(true, 3), $currency), 2, '.', '');
		if(strpos($montant,'.'))  $montant =$montant*100;
		$montant     = str_replace('.','',$montant);
		if($post['amount']==$montant && $post['id_cart']==$id_cart)
		  	$return = true;
			
		//return $return;
		  return true;
    }
	if(true){
		//$conf     = Configuration::getMultiple(array('ATOS_MERCHAND_ID','ATOS_BIN','ATOS_BANK'));

		$path_bin = "/var/www/html/wasabisushi.fr/public_html/payment/bin/glibc-2.5-42/request";
		$parm     = "merchant_id=050998328400027";
		$parm     = "$parm merchant_country=fr";
		$parm     = "$parm amount=".$nihao;
		$parm     = "$parm currency_code=978";
		$parm     = "$parm pathfile=/var/www/html/wasabisushi.fr/public_html/payment/param/pathfile";
		$parm     = "$parm payment_means=CB,2,VISA,2,MASTERCARD,2";
		$trans_id = rand(0,10000);
		$parm     = "$parm transaction_id=".$trans_id;
		//$parm     = "$parm caddie=".$_POST['id_cart'];
		$parm     = "$parm normal_return_url=http://wasabiresto.fr/index.php?route=common/payment";
		$parm     = "$parm cancel_return_url=http://wasabiresto.fr/index.php?route=common/payment";
		// By NeO-NeC XYZ MULTIMEDIA
		$parm     = "$parm automatic_response_url=http://wasabiresto.fr/index.php?route=common/payment";
		// By NeO-NeC XYZ MULTIMEDIA
		$result   = exec("$path_bin $parm");
		$tableau  = explode ("!", "$result");
		$code     = $tableau[1];
		$error    = $tableau[2];
		$message  = $tableau[3];
		//$amount   = $_POST['amount']/100;
		//print ("<CENTER><img src=http://".$_SERVER['HTTP_HOST'].__PS_BASE_URI__."modules/atos/atos.gif>&nbsp;&nbsp;&nbsp;&nbsp;<img src=http://".$_SERVER['HTTP_HOST'].__PS_BASE_URI__."modules/atos/images/".str_replace('test','',str_replace('prod','',$conf['ATOS_BANK'])).".gif></CENTER>");
		if (( $code == "" ) && ( $error == "" ) ){
			print ("<BR><CENTER>erreur appel request</CENTER><BR><br>");
			print (" executable request non trouve $path_bin");
		} else if ($code != 0){
			print ("<center><b>Erreur appel API de paiement.</center></b>");
			print ("<br><br>");
			print (" message erreur : $error <br>");
		} else {
			print ("<center><b>Paiement par Carte Bancaire.</b><br>");
			//print ("<br>R&eacute;gler votre achat d'un montant total de $amount &euro; par carte bancaire.<br><br></center>");
			print (" ".str_replace('SSL, ','SSL,<br />',$message)." <br>");
		}
	}else{
		print ("<center><b>Erreur appel API de paiement.</center></b>");
		print ("<br><br>");
		print ("Champs invalides");
	}
	//include(dirname(__FILE__).'/../../footer.php');
	
	//$nihao = floatval($nihao);
	//$nihaoL = strlen($nihao);
	//$nihaoL = $nihaoL - 3;
	//$nihao = substr($nihao, 0, $nihaoL);
	//$nihao = (int)$nihao;
	//$nihao = (float)$nihao;
	//$nihao = $nihao * 100;
	
	//echo $nihao;
	
}
?>
<?php
	function is_64bit()
	{
	    $int = "9223372036854775807";
	    $int = intval($int);
	    echo $int;
	    if ($int == 9223372036854775807) {
	        /* 64bit */
	        echo "true";
	        return true;
	    } elseif ($int == 2147483647) {
	        /* 32bit */
	        return false;
	    } else {
	        /* error */
	        echo "false";
	        return "error";
	    }
	}

	echo is_64bit();
?>

<?php
	//phpinfo();

	echo file_exists ( 'path to be verified' );

	echo realpath('info.php'); 

	echo "<br>";

	if( ini_get('safe_mode') ){
	   echo "on";
	}else{
	   echo "off";
	}

	

	phpinfo();
?>
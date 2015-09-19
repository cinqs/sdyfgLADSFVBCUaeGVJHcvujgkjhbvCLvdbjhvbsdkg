<?php 
class ControllerInformationContact extends Controller {
	private $error = array(); 
	    
  	public function index() {
		$this->language->load('information/contact');

    	$this->document->setTitle($this->language->get('heading_title'));  
	    // 
    	if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
/*			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->hostname = $this->config->get('config_smtp_host');
			$mail->username = $this->config->get('config_smtp_username');
			$mail->password = $this->config->get('config_smtp_password');
			$mail->port = $this->config->get('config_smtp_port');
			$mail->timeout = $this->config->get('config_smtp_timeout');				
			$mail->setTo($this->config->get('config_email'));
	  		$mail->setFrom($this->request->post['email']);
	  		$mail->setSender($this->request->post['name']);
	  		$mail->setSubject(html_entity_decode(sprintf($this->language->get('email_subject'), $this->request->post['name']), ENT_QUOTES, 'UTF-8'));
	  		$mail->setText(strip_tags(html_entity_decode($this->request->post['enquiry'], ENT_QUOTES, 'UTF-8')));
      		$a=$mail->send();
      		echo $a;die;*/
      		//echo "<pre>";print_r($this->config);echo "</pre>";die;
      		//echo $this->config->get('config_title');die;
			$mail = new PHPMailer(); //建立邮件发送类
			$mail->ClearAddresses();
			//$mail->CharSet = "GB2312";
			$mail->CharSet = "utf-8";
			$mail->IsSMTP(); // 使用SMTP方式发送
			$mail->Host = $this->config->get('config_smtp_host'); // 您的企业邮局域名
			$mail->SMTPAuth = true; // 启用SMTP验证功能
			$mail->Username = $this->config->get('config_smtp_username'); // 邮局用户名(请填写完整的email地址)
			$mail->Password = $this->config->get('config_smtp_password'); // 邮局密码
			$mail->Port = $this->config->get('config_smtp_port');
			$mail->From = "mfkscfgu@163.com"; //邮件发送者email地址
			$mail->FromName = $this->config->get('config_title'); //发件人名称
			$mail->AddAddress($this->config->get('config_mail_parameter'), "周树平"); //收件人地址，可以替换成任何想要接收邮件的email信箱,格式是AddAddress("收件人email","收件人姓名")

		// $mail->AddReplyTo("", "");

		// echo $mail;

		// $mail->AddReplyTo("", "");

		// $mail->AddAttachment("/var/tmp/file.tar.gz"); // 添加附件

		    $mail->IsHTML(true); // set email format to HTML //是否使用HTML格式
			$mail->Subject = $this->config->get('config_title')."-联系我们"; //邮件标题
            $Body = '<div><label>用户名:</label><span>'.$this->request->post['name'].'</span></div>';
  			$Body .='<div><label>邮箱:</label>'.$this->request->post['email'].'</span></div>';
			$Body .='<div><p>'.strip_tags(html_entity_decode($this->request->post['enquiry'], ENT_QUOTES, 'UTF-8')).'</p></div>';
			$mail->Body = $Body; //邮件内容

			//$mail->AltBody = "This is the body in plain text for non-HTML mail clients"; //附加信息，可以省略

			$mail->Send();

	  		$this->redirect($this->url->link('information/contact/success'));
    	}

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),        	
        	'separator' => false
      	);

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('information/contact'),
        	'separator' => $this->language->get('text_separator')
      	);	
			
    	$this->data['heading_title'] = $this->language->get('heading_title');

    	$this->data['text_location'] = $this->language->get('text_location');
		$this->data['text_contact'] = $this->language->get('text_contact');
		$this->data['text_address'] = $this->language->get('text_address');
    	$this->data['text_telephone'] = $this->language->get('text_telephone');
    	$this->data['text_fax'] = $this->language->get('text_fax');

    	$this->data['entry_name'] = $this->language->get('entry_name');
    	$this->data['entry_email'] = $this->language->get('entry_email');
    	$this->data['entry_enquiry'] = $this->language->get('entry_enquiry');
		$this->data['entry_captcha'] = $this->language->get('entry_captcha');

		if (isset($this->error['name'])) {
    		$this->data['error_name'] = $this->error['name'];
		} else {
			$this->data['error_name'] = '';
		}
		
		if (isset($this->error['email'])) {
			$this->data['error_email'] = $this->error['email'];
		} else {
			$this->data['error_email'] = '';
		}		
		
		if (isset($this->error['enquiry'])) {
			$this->data['error_enquiry'] = $this->error['enquiry'];
		} else {
			$this->data['error_enquiry'] = '';
		}		
		

 		if (isset($this->error['captcha'])) {
			$this->data['error_captcha'] = $this->error['captcha'];
		} else {
			$this->data['error_captcha'] = '';
		}	

    	$this->data['button_continue'] = $this->language->get('button_continue');
    
		$this->data['action'] = $this->url->link('information/contact');
		$this->data['store'] = $this->config->get('config_name');
    	$this->data['address'] = nl2br($this->config->get('config_address'));
    	$this->data['telephone'] = $this->config->get('config_telephone');
    	$this->data['fax'] = $this->config->get('config_fax');
    	
		if (isset($this->request->post['name'])) {
			$this->data['name'] = $this->request->post['name'];
		} else {
			$this->data['name'] = $this->customer->getFirstName();
		}

		if (isset($this->request->post['email'])) {
			$this->data['email'] = $this->request->post['email'];
		} else {
			$this->data['email'] = $this->customer->getEmail();
		}
		
		if (isset($this->request->post['enquiry'])) {
			$this->data['enquiry'] = $this->request->post['enquiry'];
		} else {
			$this->data['enquiry'] = '';
		}
		
		if (isset($this->request->post['captcha'])) {
			$this->data['captcha'] = $this->request->post['captcha'];
		} else {
			$this->data['captcha'] = '';
		}		

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/contact.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/contact.tpl';
		} else {
			$this->template = 'default/template/information/contact.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
				
 		$this->response->setOutput($this->render());		
  	}

  	public function success() {
		$this->language->load('information/contact');

		$this->document->setTitle($this->language->get('heading_title')); 

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	);

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('information/contact'),
        	'separator' => $this->language->get('text_separator')
      	);	
		
    	$this->data['heading_title'] = $this->language->get('heading_title');

    	$this->data['text_message'] = $this->language->get('text_message');

    	$this->data['button_continue'] = $this->language->get('button_continue');

    	$this->data['continue'] = $this->url->link('common/home');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/success.tpl';
		} else {
			$this->template = 'default/template/common/success.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
				
 		$this->response->setOutput($this->render()); 
	}
	
  	protected function validate() {
    	if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
      		$this->error['name'] = $this->language->get('error_name');
    	}

    	if (!preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])) {
      		$this->error['email'] = $this->language->get('error_email');
    	}

    	if ((utf8_strlen($this->request->post['enquiry']) < 10) || (utf8_strlen($this->request->post['enquiry']) > 3000)) {
      		$this->error['enquiry'] = $this->language->get('error_enquiry');
    	}

    	if (empty($this->session->data['captcha']) || ($this->session->data['captcha'] != $this->request->post['captcha'])) {
      		$this->error['captcha'] = $this->language->get('error_captcha');
    	}
		
		if (!$this->error) {
	  		return true;
		} else {
	  		return false;
		}  	  
  	}

	public function captcha() {
		$this->load->library('captcha');
		
		$captcha = new Captcha();
		
		$this->session->data['captcha'] = $captcha->getCode();
		
		$captcha->showImage();
	}


	public function reservation(){
			$mail = new PHPMailer(); //建立邮件发送类
			$mail->ClearAddresses();
			//$mail->CharSet = "GB2312";
			$mail->CharSet = "utf-8";
			$mail->IsSMTP(); // 使用SMTP方式发送
			$mail->Host = $this->config->get('config_smtp_host'); // 您的企业邮局域名
			$mail->SMTPAuth = true; // 启用SMTP验证功能
			$mail->Username = $this->config->get('config_smtp_username'); // 邮局用户名(请填写完整的email地址)
			$mail->Password = $this->config->get('config_smtp_password'); // 邮局密码
			$mail->Port = $this->config->get('config_smtp_port');
			$mail->From = "mfkscfgu@163.com"; //邮件发送者email地址
			$mail->FromName = $this->config->get('config_title'); //发件人名称
			$mail->AddAddress($this->config->get('config_mail_parameter'),$this->config->get('config_title')); //收件人地址，可以替换成任何想要接收邮件的email信箱,格式是AddAddress("收件人email","收件人姓名")

		// $mail->AddReplyTo("", "");

		// echo $mail;

		// $mail->AddReplyTo("", "");

		// $mail->AddAttachment("/var/tmp/file.tar.gz"); // 添加附件

		    $mail->IsHTML(true); // set email format to HTML //是否使用HTML格式
			$mail->Subject = $this->config->get('config_title')."-订餐"; //邮件标题
            $Body = '<div><label>姓名:</label><span>'.$this->request->post['name'].'</span></div>';
  			$Body .='<div><label>邮箱:</label>'.$this->request->post['courriel'].'</span></div>';
  			$Body .='<div><label>人数:</label>'.$this->request->post['num'].'</span></div>';
  			$Body .='<div><label>电话:</label>'.$this->request->post['mobile'].'</span></div>';
			$Body .='<div><label>备注:</label>'.$this->request->post['message'].'</span></div>';
			$mail->Body = $Body; //邮件内容

			//$mail->AltBody = "This is the body in plain text for non-HTML mail clients"; //附加信息，可以省略

			if($mail->Send()){
				echo 1;exit;
			}else{
				echo 0;exit;
			}
			
	  			
    	}
	//}
}
?>

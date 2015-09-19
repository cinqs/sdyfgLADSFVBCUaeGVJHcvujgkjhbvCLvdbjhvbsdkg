<?php 
class ControllerAffiliateAccount extends Controller { 
	public function index() {
		if (!$this->affiliate->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('affiliate/account', '', 'SSL');
	  
	  		$this->redirect($this->url->link('affiliate/login', '', 'SSL'));
    	} 
	
		$this->language->load('affiliate/account');

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	); 

      	$this->data['breadcrumbs'][] = array(       	
        	'text'      => $this->language->get('text_account'),
			'href'      => $this->url->link('affiliate/account', '', 'SSL'),
        	'separator' => $this->language->get('text_separator')
      	);

		$this->document->setTitle($this->language->get('heading_title'));

    	$this->data['heading_title'] = $this->language->get('heading_title');

    	$this->data['text_my_account'] = $this->language->get('text_my_account');
    	$this->data['text_my_tracking'] = $this->language->get('text_my_tracking');
		$this->data['text_my_transactions'] = $this->language->get('text_my_transactions');
		$this->data['text_edit'] = $this->language->get('text_edit');
		$this->data['text_password'] = $this->language->get('text_password');
		$this->data['text_payment'] 
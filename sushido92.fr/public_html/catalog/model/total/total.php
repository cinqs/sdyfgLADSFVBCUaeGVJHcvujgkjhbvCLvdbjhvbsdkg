<?php
class ModelTotalTotal extends Model {
	public function getTotal(&$total_data, &$total, &$taxes) {
		$this->language->load('total/total');
		$text_total = $this->language->get('text_total');
		if (isset($this->session->data['isEmporter'])) {
			if ($this->session->data['isEmporter'] == 'true') {
				$text_total = 'Emporter: (-10%)';
				$total *= 0.9;
			}else{
				$text_total = 'Livraison';
			}
		}
	 
		$total_data[] = array(
			'code'       => 'total',
			'title'      => $text_total,
			'text'       => $this->currency->format(max(0, $total)),
			'value'      => max(0, $total),
			'sort_order' => $this->config->get('total_sort_order')
		);
	}
}
?>
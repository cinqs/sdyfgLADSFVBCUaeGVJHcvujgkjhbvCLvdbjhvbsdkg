<?php
class ModelReportNewreport extends Model {
	public function getOrders($data = array()) { 
		//$sql = "select o.order_id,o.email,o.telephone,CONCAT(o.payment_address_1, ' ', o.payment_address_2) AS address,CONCAT(o.firstname, ' ', o.lastname) AS customer,o.payment_zone AS state,o.payment_postcode AS postcode,(SELECT os.name FROM " . DB_PREFIX . "order_status os WHERE os.order_status_id = o.order_status_id AND os.language_id = '" . (int)$this->config->get('config_language_id') . "') AS  status,o.payment_city AS city,GROUP_CONCAT(pd.name) AS pdtname,sum(op.quantity) AS quantity,GROUP_CONCAT(opt.value ) AS options, GROUP_CONCAT(opt.order_product_id )  AS ordprdid,GROUP_CONCAT(op.order_product_id )  AS optprdid, GROUP_CONCAT(op.quantity)   AS opquantity from `" . DB_PREFIX . "order` o LEFT JOIN " . DB_PREFIX . "order_product op ON (op.order_id = o.order_id)  LEFT JOIN " . DB_PREFIX . "product_description pd ON (pd.product_id = op.product_id) LEFT JOIN " . DB_PREFIX . "order_option opt ON (opt.order_product_id = op.order_product_id) ";
		$sql = "select  o.total,o.prompt, isEmporter, comment, date_added AS date_added, date_modified AS date_modified, o.order_id,o.email,o.telephone,CONCAT(o.payment_address_1, ' ', o.payment_address_2) AS address,CONCAT(o.payment_firstname, ' ', o.payment_lastname) AS customer,o.shipping_zone AS zone,o.payment_postcode AS postcode,o.shipping_method AS shipping_method,(SELECT os.name FROM " . DB_PREFIX . "order_status os WHERE os.order_status_id = o.order_status_id AND os.language_id = '" . (int)$this->config->get('config_language_id') . "') AS  status,o.payment_city AS city,GROUP_CONCAT(pd.name) AS pdtname,sum(op.quantity) AS quantity,GROUP_CONCAT(opt.value ) AS options, GROUP_CONCAT(opt.order_product_id )  AS ordprdid,GROUP_CONCAT(op.order_product_id )  AS optprdid, GROUP_CONCAT(op.quantity)   AS opquantity from `" . DB_PREFIX . "order` o LEFT JOIN " . DB_PREFIX . "order_product op ON (op.order_id = o.order_id)  LEFT JOIN " . DB_PREFIX . "product_description pd ON (pd.product_id = op.product_id and pd.language_id = '" . (int)$this->config->get('config_language_id') . "') LEFT JOIN " . DB_PREFIX . "order_option opt ON (opt.order_product_id = op.order_product_id) ";
			
		if (!is_null($data['filter_order_status_id']) && $data['filter_order_status_id'] <> 0) {
			$sql .= " where o.order_status_id = '" . (int)$data['filter_order_status_id'] . "'";
		} else {
			$sql .= " where o.order_status_id > '0'";
		}
		if (!empty($data['filter_date_start'])) {
			$sql .= " AND DATE(o.date_added) >= '" . $this->db->escape($data['filter_date_start']) . "'";
		}

		if (!empty($data['filter_date_end'])) {
			$sql .= " AND DATE(o.date_added) <= '" . $this->db->escape($data['filter_date_end']) . "'";
		}
						
		$sql .= " group by o.order_id,o.customer_id ORDER BY o.order_id	";
		
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}			

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}	
			
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}
			
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getTotalOrders($data = array()) { 
	
		$sql = "select count(order_id) as total from `" . DB_PREFIX . "order` o  ";
			
		if (!is_null($data['filter_order_status_id']) && $data['filter_order_status_id'] <> 0) {
			$sql .= " where o.order_status_id = '" . (int)$data['filter_order_status_id'] . "'";
		} else {
			$sql .= " where o.order_status_id > '0'";
		}
		if (!empty($data['filter_date_start'])) {
			$sql .= " AND DATE(o.date_added) >= '" . $this->db->escape($data['filter_date_start']) . "'";
		}

		if (!empty($data['filter_date_end'])) {
			$sql .= " AND DATE(o.date_added) <= '" . $this->db->escape($data['filter_date_end']) . "'";
		}
						
		
		$query = $this->db->query($sql);
	
		return $query->row['total'];
	}

	public function getShopAddress(){
		$sql_address = "SELECT value FROM  `oc_setting` WHERE  `key` =  'config_address'";
		$query_address = $this->db->query($sql_address);

		return $query_address->rows;
	}
		
}
?>
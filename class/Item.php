<?php
require_once('../database/Database.php');
require_once('../interface/iItem.php');
class Item extends Database implements iItem{
	public function __construct()
	{
		parent:: __construct();
	}

	public function insert_item($account_number, $owner_address, $iN, $sN, $mN, $b, $a, $rfid_code, $sticker_type, 
		$sticker_number, $pD, $eID, $cID, $coID)
	{
		$sql = "INSERT INTO tbl_item(account_number, owner_address, item_name, item_serno, item_modno, item_brand, item_amount, rfid_code, vehicle_sticker_type, vehicle_sticker_number, item_purdate, emp_id, cat_id, con_id)
				VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?);
		";
		$result = $this->insertRow($sql, [$account_number, $owner_address, $iN, $sN, $mN, $b, $a, $rfid_code, $sticker_type, $sticker_number, $pD, $eID, $cID, 1]);
		return $result;
	}

	public function update_item($account_number, $owner_address, $iN, $sN, $mN, $b, $a, $rfid_code, $sticker_type, 
		$sticker_number, $pD, $eID, $cID, $coID, $iID)
	{	
		$sql="UPDATE tbl_item
			  SET 
			  account_number = ?, 
			  owner_address = ?, 
			  item_name = ?, 
			  item_serno = ?, 
			  item_modno = ?, 
			  item_brand = ?, 
			  item_amount = ?, 
			  rfid_code = ?,
			  vehicle_sticker_type = ?, 
			  vehicle_sticker_number = ?, 
			  item_purdate = ?, 	
			  emp_id = ?, 
			  cat_id = ?, 
			  con_id = ?
			  WHERE item_id = ?
		";
		$result = $this->updateRow($sql, [$account_number, $owner_address, $iN, $sN, $mN, $b, $a, $rfid_code, $sticker_type, 
		$sticker_number, $pD, $eID, $cID, $coID, $iID]);
		return $result;
	}

	public function get_item($id)
	{
		$sql="SELECT *
			  FROM tbl_item i
			  INNER JOIN tbl_employee e
			  ON i.emp_id = e.emp_id
			  INNER JOIN tbl_off o
			  ON e.off_id = o.off_id
			  INNER JOIN tbl_con c 
			  ON c.con_id = i.con_id
			  INNER JOIN tbl_cat ca
			  ON ca.cat_id = i.cat_id
			  WHERE i.item_id = ?
		";
		$result = $this->getRow($sql, [$id]);
		return $result;
	}

	public function get_all_items()
	{
		/*get all items with the office nga naa sa emp*/
		$sql = "SELECT *
				FROM tbl_item i
				INNER JOIN tbl_employee e
				ON i.emp_id = e.emp_id
				INNER JOIN tbl_off o
				ON e.off_id = o.off_id
				INNER JOIN tbl_con c 
				ON c.con_id = i.con_id
				INNER JOIN tbl_cat ca
				ON ca.cat_id = i.cat_id
				ORDER by i.item_name
		";
		$result = $this->getRows($sql);
		return $result;
	}

	public function item_categories()
	{
		$sql = "SELECT * FROM tbl_cat";
		return $this->getRows($sql);
	}

	public function item_conditions()
	{
		$sql = "SELECT * FROM tbl_con";
		return $this->getRows($sql);
	}

	public function vehicle_violation()
	{
		$sql = "SELECT * FROM tbl_violations";
		return $this->getRows($sql);
	}
	public function insert_violation($account_number, $owner, $plate_number, $driver_name, $date_apprehended, $violation_officer, $violation_number, $violation, $iID, $status)
	{
		$status_id = 1;
		$sql = "INSERT INTO tbl_violations(account_number, owner, plate_number, driver_name, date_apprehended, violation_officer, violation_number, violation, vehicle_id, status)
				VALUES(?,?,?,?,?,?,?,?,?,?);
		";
		$result = $this->insertRow($sql, [$account_number, $owner, $plate_number, $driver_name, $date_apprehended, $violation_officer, $violation_number, $violation, $iID, $status_id]);
		return $result;
	}

	public function item_report($choice)
	{
		$sql = "";
		if($choice == 'all'){
			$sql = "SELECT *
					FROM tbl_item i 
					INNER JOIN tbl_employee e 
					ON i.emp_id = e.emp_id
					INNER JOIN tbl_cat c 
					ON i.cat_id = c.cat_id
					INNER JOIN tbl_con co 
					ON i.con_id = co.con_id
					INNER JOIN tbl_off o 
					ON o.off_id = e.off_id";
			return $this->getRows($sql);
		}else if($choice == 'working'){
			$sql = "SELECT *
					FROM tbl_item i 
					INNER JOIN tbl_employee e 
					ON i.emp_id = e.emp_id
					INNER JOIN tbl_cat c 
					ON i.cat_id = c.cat_id
					INNER JOIN tbl_con co 
					ON i.con_id = co.con_id
					INNER JOIN tbl_off o 
					ON o.off_id = e.off_id
					WHERE i.con_id = ?";
			return $this->getRows($sql, [1]);
		}else{
			//condemed
			$sql = "SELECT *
					FROM tbl_item i 
					INNER JOIN tbl_employee e 
					ON i.emp_id = e.emp_id
					INNER JOIN tbl_cat c 
					ON i.cat_id = c.cat_id
					INNER JOIN tbl_con co 
					ON i.con_id = co.con_id
					INNER JOIN tbl_off o 
					ON o.off_id = e.off_id
					WHERE i.con_id = ?
					ORDER BY i.item_name ASC";
			return $this->getRows($sql, [2]);
		}
	}//end item_report
}

$item = new Item();

/* End of file Item.php */
/* Location: .//D/xampp/htdocs/deped/class/Item.php */


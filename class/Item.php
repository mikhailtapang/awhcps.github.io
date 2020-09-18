<?php
require_once('../database/Database.php');
require_once('../interface/iItem.php');
class Item extends Database implements iItem{
	public function __construct()
	{
		parent:: __construct();
	}

	public function insert_item($account_number, $owner_address, $iN, $sN, $mN, $b, $a, $rfid_code, $sticker_type, 
		$sticker_number, $pD)
	{
		$sql = "INSERT INTO tbl_item(account_number, owner_address, item_name, item_serno, item_modno, item_brand, item_amount, rfid_code, vehicle_sticker_type, vehicle_sticker_number, item_purdate)
				VALUES(?,?,?,?,?,?,?,?,?,?,?);
		";
		$result = $this->insertRow($sql, [$account_number, $owner_address, $iN, $sN, $mN, $b, $a, $rfid_code, $sticker_type, $sticker_number, $pD]);
		return $result;
	}

	public function update_item($account_number, $owner_address, $iN, $sN, $mN, $b, $a, $rfid_code, $sticker_type, 
		$sticker_number, $pD, $iID)
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
			  item_purdate = ?
			  WHERE item_id = ?
		";
		$result = $this->updateRow($sql, [$account_number, $owner_address, $iN, $sN, $mN, $b, $a, $rfid_code, $sticker_type, 
		$sticker_number, $pD, $iID]);
		return $result;
	}

	public function get_item($id)
	{
		$sql="SELECT *
			  FROM tbl_item i
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
	public function insert_violation($driver_name, $date_apprehended, $violation_officer, $violation_number, $violation, $iID, $status)
	{
		$status_id = 1;
		$sql = "INSERT INTO tbl_violations(driver_name, date_apprehended, violation_officer, violation_number, violation, vehicle_id, status)
				VALUES(?,?,?,?,?,?,?);
		";
		$result = $this->insertRow($sql, [$driver_name, $date_apprehended, $violation_officer, $violation_number, $violation, $iID, $status_id]);
		return $result;
	}

	public function insert_payment($amount_paid, $or_number, $date_paid, $vID, $iID)
	{
		//$date = date("Y-m-d"); //year month day
		$status = 2;
		$sql = "INSERT INTO tbl_payment(amount_paid, or_number, date_paid, violation_id, vehicle_id)
				VALUES(?, ?, ?, ?, ?);
		";
		$sql2= "UPDATE tbl_violations
				SET status = ?
				WHERE violation_id = ?;
		";
		$this->Begin();
		 	$this->insertRow($sql, [$amount_paid, $or_number, $date_paid, $vID, $iID]);
		 	$this->updateRow($sql2, [$status, $vID]);
		$this->Commit();
	 	return true;
	}

	public function item_report($choice)
	{
		$sql = "";
		date_default_timezone_set('Asia/Singapore');
		$date = date('Y-m-d');

		if($choice == 'today'){
			$sql = "SELECT *
					FROM tbl_item i 
					INNER JOIN tbl_violations v
					ON i.item_id = v.vehicle_id
					WHERE v.date_apprehended = ?";

			return $this->getRows($sql, [$date]);
		}	else {
			$sql = "SELECT *
					FROM tbl_item i 
					INNER JOIN tbl_violations v
					ON i.item_id = v.vehicle_id";
				return $this->getRows($sql, [1]);

			}
	}//end item_report

		public function violation_list()
	{
		//display all pending request OR where req_status_id is pending
		$status_id = 1;//1 means pending pa siya
		$sql = "SELECT *
				FROM tbl_item i
				INNER JOIN tbl_violations v 
				ON i.item_id = v.vehicle_id
				WHERE v.status = ?
		";
		$result = $this->getRows($sql, [$status_id]);

		return $result;
	}

	public function get_vehicle($id)
	{
		$sql="SELECT *
				FROM tbl_item i
				INNER JOIN tbl_violations v 
				ON i.item_id = v.vehicle_id
				WHERE v.vehicle_id = ?
		";
		$result = $this->getRow($sql, [$id]);
		return $result;
	}

		public function get_violation($id)
	{
		$sql="SELECT *
				FROM tbl_item i
				INNER JOIN tbl_violations v 
				ON i.item_id = v.vehicle_id
				WHERE v.violation_id = ?
		";
		$result = $this->getRow($sql, [$id]);
		return $result;
	}


}

$item = new Item();

/* End of file Item.php */
/* Location: .//D/xampp/htdocs/deped/class/Item.php */


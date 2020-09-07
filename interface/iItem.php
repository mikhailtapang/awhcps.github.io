<?php 
interface iItem{
	public function insert_item($account_number, $owner_address, $iN, $sN, $mN, $b, $a, $rfid_code, $sticker_type, 
		$sticker_number, $pD, $eID, $cID, $coID);
	public function update_item($account_number, $iN, $sN, $mN, $b, $a, $pD, $eID, $cID, $coID, $iID);
	public function get_item($id);
	public function get_all_items();
	public function item_categories();
	public function item_conditions();
	public function item_report($choice);
}



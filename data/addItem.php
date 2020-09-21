<?php 
require_once('../class/Item.php');
if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);

	$account_number = $data[0];
	$owner_address = $data[1];
	$iN = ucwords($data[2]);
	$sN = $data[3];
	$mN = $data[4];
	$b = ucwords($data[5]);
	$a = $data[6];
	$rfid_code = $data[7];
	$sticker_type = $data[8];
	$sticker_number = $data[9];
	$pD = $data[10];


	// $result = $item->insert_item($account_number, $owner_address, $iN, $sN, $mN, $b, $a, $pD, $eID, $cID, $coID);
	$result['valid'] = $item->insert_item($account_number, $owner_address, $iN, $sN, $mN, $b, $a, $rfid_code, $sticker_type, $sticker_number, $pD);
	if($result['valid']){
		$result['msg'] = "Item Added Successfully!";
		$result['action'] = "Add Data";
		echo json_encode($result);
	}
	// echo $result;
}

$item->Disconnect();
 ?>


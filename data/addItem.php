<?php 
require_once('../class/Item.php');
if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);

	$account_number = $data[0];
	$iN = ucwords($data[1]);
	$sN = $data[2];
	$mN = $data[3];
	$b = ucwords($data[4]);
	$a = $data[5];
	$pD = $data[6];
	$eID = $data[7];
	$cID = $data[8];
	$coID = $data[9];


	// $result = $item->insert_item($account_number, $iN, $sN, $mN, $b, $a, $pD, $eID, $cID, $coID);
	$result['valid'] = $item->insert_item($account_number, $iN, $sN, $mN, $b, $a, $pD, $eID, $cID, $coID);
	if($result['valid']){
		$result['msg'] = "Item Added Successfully!";
		$result['action'] = "Add Data";
		echo json_encode($result);
	}
	// echo $result;
}

$item->Disconnect();
 ?>


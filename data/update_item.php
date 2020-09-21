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
	// $eID = $data[11];
	// $cID = $data[12];
	// $coID = $data[13];
	$iID = $data[11];
	// $account_number = $data[0]; 
	// $iN  = $data[1]; 		
	// $sN  = $data[2];	
	// $mN  = $data[3];	
	// $b   = $data[4]; 			
	// $a   = $data[5]; 			
	// $pD  = $data[6]; 		
	// $eID = $data[7]; 		
	// $cID = $data[8]; 			
	// $coID= $data[9]; 
	// $iID = $data[10];

	$result['valid'] = $item->update_item($account_number, $owner_address, $iN, $sN, $mN, $b, $a, $rfid_code, $sticker_type, $sticker_number, $pD, $iID);
	if($result['valid']){
		$result['msg'] = 'Data Updated Successfully!';
		echo json_encode($result);
	}

}
$item->Disconnect();
 ?>

					
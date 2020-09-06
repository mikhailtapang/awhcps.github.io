<?php 
require_once('../class/Item.php');
if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);
	
	$account_number = $data[0]; 
	$iN  = $data[1]; 		
	$sN  = $data[2];	
	$mN  = $data[3];	
	$b   = $data[4]; 			
	$a   = $data[5]; 			
	$pD  = $data[6]; 		
	$eID = $data[7]; 		
	$cID = $data[8]; 			
	$coID= $data[9]; 
	$iID = $data[10];

	$result['valid'] = $item->update_item($account_number, $iN, $sN, $mN, $b, $a, $pD, $eID, $cID, $coID, $iID);
	if($result['valid']){
		$result['msg'] = 'Data Updated Successfully!';
		echo json_encode($result);
	}

}
$item->Disconnect();
 ?>

					
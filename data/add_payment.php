<?php 
require_once('../class/Item.php');
if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);
	

	$accounting_officer = $data[0];
	$amount_paid = $data[1];
	$or_number = $data[2];
	$date_paid = $data[3];
	$iID = $data[4];
	$status = $data[5];
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

	$result['valid'] = $item->insert_payment($accounting_officer,  $amount_paid, $or_number, $date_paid, $iID, $status);
	if($result['valid']){
		$result['msg'] = 'Payment added Successfully!';
		echo json_encode($result);
	}

}
$item->Disconnect();
 ?>

					
<?php 

require_once('../class/Item.php');
if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);
	

	$amount_paid = $data[0];
	$or_number = $data[1];
	$date_paid = $data[2];
	$vID = $data[3];
	$iID = $data[4];

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

	$result['valid'] = $item->insert_payment($amount_paid, $or_number, $date_paid,$vID, $iID);
	if($result['valid']){
		$result['msg'] = 'Payment added Successfully!';
		echo json_encode($result);
	}

}
$item->Disconnect();
 ?>

					
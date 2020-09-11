<?php 
require_once('../class/Item.php');
if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);
	

	$driverName = $data[0];
	$dateApprehended = $data[1];
	$violationOfficer = $data[2];
	$violationNumber = $data[3];
	$violation = $data[4];
	$iID = $data[5];
	$status = $data[6];
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

	$result['valid'] = $item->insert_violation($driverName,  $dateApprehended, $violationOfficer, $violationNumber, $violation,$iID, $status );
	if($result['valid']){
		$result['msg'] = 'Violation added Successfully!';
		echo json_encode($result);
	}

}
$item->Disconnect();
 ?>

					
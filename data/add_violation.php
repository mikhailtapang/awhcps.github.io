<?php 
require_once('../class/Item.php');
if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);
	
	$account_number_violation = $data[0];
	$ownerName_violation = $data[1];
	$plateNumber_violation = $data[2];
	$driverName = $data[3];
	$dateApprehended = $data[4];
	$violationOfficer = $data[5];
	$violationNumber = $data[6];
	$violation = $data[7];
	$iID = $data[8];
	$status = $data[9];
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

	$result['valid'] = $item->insert_violation($account_number_violation, $ownerName_violation, $plateNumber_violation, $driverName,  $dateApprehended, $violationOfficer, $violationNumber, $violation,$iID, $status );
	if($result['valid']){
		$result['msg'] = 'Violation added Successfully!';
		echo json_encode($result);
	}

}
$item->Disconnect();
 ?>

					
<?php 
require_once('../class/Employee.php');

if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);
	$fN = $data[0];
	$mN = $data[1];
	$lN = $data[2];
	$type = $data[3];
	$eid = $data[4];

	$result['valid'] = $employee->update_employee($fN, $mN, $lN, $type, $eid);
	if($result['valid']){
		$result['msg'] = "Employee Updated Successfully!";
		echo json_encode($result);	
	}

}


$employee->Disconnect();
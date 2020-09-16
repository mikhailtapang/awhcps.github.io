<?php 
require_once('../class/item.php'); 

if(isset($_POST['iID'])){
	$iID = $_POST['iID'];
	$id = $_SESSION['admin_logged_in'];
	$result = $item->get_vehicle($iID);
	
	echo json_encode($result);

}

$item->Disconnect();
?>
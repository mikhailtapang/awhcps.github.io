<?php 
require_once('../class/item.php'); 

if(isset($_POST['iID'])){
	$iID = $_POST['iID'];

	$result = $item->get_violation($iID);
	echo json_encode($result);

}

$item->Disconnect();
?>
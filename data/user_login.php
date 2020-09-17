<?php 
require_once('../class/Login.php');


if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);
	$un = $data[0];
	$pwd = md5($data[1]);

	$login->set_un_pwd($un, $pwd);//setter
	$user_exist = $login->check_user();
	$result['valid'] = false;

	// print_r($user_exist);

	// echo $user_exist['type_id'];


	if($user_exist > 0){
		// echo 'allright';
		$result['valid'] = true;

		if($user_exist['type_id'] == 1){ // ADMIN
			$_SESSION['admin_logged_in'] = $user_exist['emp_id'];
			$empSession = $_SESSION['admin_logged_in'];
			$result['url'] = 'admin/item.php';



		}else if($user_exist['type_id'] == 2){ // SECURITY
			$_SESSION['admin_logged_in'] = $user_exist['emp_id'];
			$empSession = $_SESSION['admin_logged_in'];
			$result['url'] = 'security/item.php';

		}else if($user_exist['type_id'] == 3){ // ACCCOUNTING
			$_SESSION['admin_logged_in'] = $user_exist['emp_id'];
			$empSession = $_SESSION['admin_logged_in'];
			$result['url'] = 'accounting/request.php';
		}
	}else{
		// echo 'invalid user';
		$result['msg'] = "Invalid username or password";
	}
	echo json_encode($result);

}

$login->Disconnect();
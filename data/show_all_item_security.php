<?php 
require_once('../class/Item.php'); 
$allItemsec = $item->get_all_items();
// echo '<pre>';
// 	print_r($allItem);
// echo '</pre>';
?>

<br />
<table id="myTable" class="table table-bordered table-hover" cellspacing="0" width="100%">
	<thead>
	    <tr>
	    	<th><center>Action</center></th>
	    	<th>Account Number</th>
	        <th>Plate Number</th>
	        <th>Owner</th>
	        <th>Model</th>
	        <th>Color</th>
	    </tr>
	</thead>
    <tbody>
		<?php 
			foreach ($allItemsec as $i) {
				# code...
				// $fN = $i['emp_fname'];
				// $mN = $i['emp_mname'];
				// $mN = $mN[0].'.';
				// $lN = $i['emp_lname'];
				// $fullName = "$fN $mN $lN";
				// $fullName = ucwords($fullName);

		?> 
			<tr>
				<td align="center" style='white-space: nowrap'>
    				<div class="col-sm">
						<button class="btn btn-success btn-sm" onclick="item_profile('<?php echo $i['item_id']; ?>');">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						View
						</button>
						<button onclick="add_violation('<?php echo $i['item_id']; ?>')" class="btn btn-danger btn-sm" >
						<span class="glyphicon glyphicon-dashboard" aria-hidden="true"></span>
						Tag
						</button>
					</div>
				</td>
				<td onclick="item_profile('<?php echo $i['item_id']; ?>');"><?php echo $i['account_number']; ?></td>
				<td onclick="item_profile('<?php echo $i['item_id']; ?>');"><?php echo $i['item_name']; ?></td>
				<td onclick="item_profile('<?php echo $i['item_id']; ?>');"><?php echo $i['item_amount']; ?></td>
				<!-- <td onclick="item_profile('<?php echo $i['item_id']; ?>');"><?php echo $fullName; ?></td> -->
				<td onclick="item_profile('<?php echo $i['item_id']; ?>');"><?php echo ucwords($i['item_modno']); ?> <?php echo ucwords($i['item_brand']); ?></td>
				<td onclick="item_profile('<?php echo $i['item_id']; ?>');"><?php echo ucwords($i['item_serno']); ?></td>


			</tr>
		<?php		
			}//end foreach
		 ?>
    </tbody>
</table>


<?php 
$item->Disconnect();
 ?>

<!-- for the datatable of item -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable').DataTable({
			responsive:true
		});
	});




</script>

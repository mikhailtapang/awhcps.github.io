<?php 
require_once('../class/item.php');

$result = $item->violation_list();

// echo '<pre>';
// 	print_r($results);
// echo '</pre>';

?>
<div class="table-responsive">
<table id="myTable-violation" class="table table-bordered table-hover" cellspacing="0" width="100%" style="overflow: hidden">
	<thead>
	    <tr>
	    	<td><center>Actions</center></td>
	        <td><center>Plate Number</center></td>
	        <td><center>Owner</center></td>
	        <td><center>Violation</center></td>
	        <td><center>Date</center></td>
	        <th><center>Violation officer</center></th>
	    </tr>
	</thead>
 	<tbody>
<?php foreach($result as $r):
 		$pN = $r['item_name'];
 		$o = $r['item_amount'];
 		$v = $r['violation'];
 		$dA = $r['date_apprehended'];
 		$vO = $r['violation_officer'];


 		$text_color = '';
 	 ?>
 		<tr>
 			<td align ='center'>
 				
 				<button onclick="add_payment('<?php echo $r['violation_id']; ?>');" class="btn btn-warning btn-sm" >
						<span class="glyphicon glyphicon-ruble" aria-hidden="true"></span>
						Payment
						</button>
 			</td>
 			<td align ='center' onclick="violation_profile('<?php echo $r['violation_id']; ?>');"<?= $text_color; ?> ><?= $pN; ?></td>
 			<td align ='center' onclick="violation_profile('<?php echo $r['violation_id']; ?>');"<?= $text_color; ?> ><?= $o; ?></td>
 			<td align ='center' onclick="violation_profile('<?php echo $r['violation_id']; ?>');"<?= $text_color; ?> ><?= $v; ?></td>
 			<td align ='center' onclick="violation_profile('<?php echo $r['violation_id']; ?>');"<?= $text_color; ?> ><?= $dA; ?></td>
 			<td align ='center' onclick="violation_profile('<?php echo $r['violation_id']; ?>');"<?= $text_color; ?> ><?= $vO; ?></td>
 		</tr>
 		<?php endforeach; ?>
 	</tbody>
</table>
</div>

<?php 
$item->Disconnect();
 ?>

<!-- for the datatable of employee -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable-violation').DataTable({
			responsive:true
		});
	});


</script>





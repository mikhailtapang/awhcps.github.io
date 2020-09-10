<?php 
require_once('../class/Request.php');

$results = $request->violation_list();

// echo '<pre>';
// 	print_r($results);
// echo '</pre>';

?>

<table id="myTable-violation" class="table table-bordered table-hover" cellspacing="0" width="100%">
	<thead>
	    <tr>
	        <td>Plate Number</td>
	        <td>Owner</td>
	        <td>Violation</td>
	        <td>Date</td>
	        <th><center>Violation officer</center></th>
	    </tr>
	</thead>
 	<tbody>
<?php foreach($results as $r):
 		$pN = $r['item_name'];
 		$o = $r['item_amount'];
 		$v = $r['violation'];
 		$dA = $r['date_apprehended'];
 		$vO = $r['violation_officer'];


 		$text_color = '';
 	 ?>
 		<tr>
 			<td <?= $text_color; ?> ><?= $pN; ?></td>
 			<td <?= $text_color; ?> ><?= $o; ?></td>
 			<td <?= $text_color; ?> ><?= $v; ?></td>
 			<td <?= $text_color; ?> ><?= $dA; ?></td>
 			<td <?= $text_color; ?> ><?= $vO; ?></td>
 		</tr>
 		<?php endforeach; ?>
 	</tbody>
</table>


<?php 
$request->Disconnect();
 ?>

<!-- for the datatable of employee -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable-violation').DataTable();
	});
</script>





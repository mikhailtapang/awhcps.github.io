<?php 
require_once('../class/item.php');

$resultSec = $item->violation_list();

// echo '<pre>';
// 	print_r($results);
// echo '</pre>';

?>
<div class="table-responsive">
<table id="myTable-violation" class="table table-bordered table-hover" cellspacing="0" width="100%" style="overflow: hidden">
	<thead>
	    <tr>
	        <td><center>Plate Number</center></td>
	        <td><center>Owner</center></td>
	        <td><center>Violation</center></td>
	        <td><center>Date</center></td>
	        <td><center>Violation officer</center></td>
	        <td><center>Ticket Citation Number</center></td>
	    </tr>
	</thead>
 	<tbody>
<?php foreach($resultSec as $r):
 		$pN = $r['item_name'];
 		$o = $r['item_amount'];
 		$v = $r['violation'];
 		$dA = $r['date_apprehended'];
 		$vO = $r['violation_officer'];
 		$vN = $r['violation_number'];
 		$violationArray = array(",");
 		$newLine = '<br/>';
 		$newstr = str_replace($violationArray, $newLine, $v);
 		$text_color = '';
 	 ?>
 		<tr>

 			<td align ='center' onclick="violation_profile('<?php echo $r['violation_id']; ?>');"<?= $text_color; ?> ><?= $pN; ?></td>
 			<td align ='center' onclick="violation_profile('<?php echo $r['violation_id']; ?>');"<?= $text_color; ?> ><?= $o; ?></td>
 			<td style= "white-space: nowrap;" onclick="violation_profile('<?php echo $r['violation_id']; ?>');"<?= $text_color; ?> ><?= $newstr; ?></td>

 			<td align ='center' style= "white-space: nowrap;" onclick="violation_profile('<?php echo $r['violation_id']; ?>');"<?= $text_color; ?> ><?= $dA; ?></td>

 			<td align ='center' onclick="violation_profile('<?php echo $r['violation_id']; ?>');"<?= $text_color; ?> ><?= $vO; ?></td>

 			<td align ='center' onclick="violation_profile('<?php echo $r['violation_id']; ?>');"<?= $text_color; ?> ><?= $vN; ?></td>
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





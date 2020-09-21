<?php 
require_once('../class/Item.php'); 
require_once('../class/Employee.php'); 

$employees = $employee->get_employees();
$categories = $item->item_categories();
$conditions = $item->item_conditions();


?>
<div class="modal fade" id="modal-add-violation">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Add Violation</h4>
			</div>
			<div class="modal-body">
				<!-- main form -->
					<form class="form-horizontal" role="form" id="add-violation-form">
					<input type="hidden" id="iID">

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="accountNumber-violation">Account Number:</label>
					    <div class="col-sm-9">
					      <input type="text" class="form-control" id="accountNumber-violation" disabled placeholder="Enter Account Number">
					    </div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="ownerName">Owner:</label>
					    <div class="col-sm-9">
					      <input type="text" class="form-control" id="ownerName" disabled placeholder="Enter Owner's Address">
					    </div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="plateNumber">Plate Number:</label>
					    <div class="col-sm-9">
					      <input type="text" class="form-control" id="plateNumber" disabled placeholder="Enter Item Name" autofocus>
					    </div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="driverName">Driver's name:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="driverName" placeholder="Driver's Name">
					    </div>
					  </div>

					   <div class="form-group">
					    <label class="control-label col-sm-3" for="dateApprehended">Date:</label>
					    <div class="col-sm-9"> 
					      <input type="date" class="form-control" id="dateApprehended" placeholder="Date Apprehended">
					    </div>
					  </div>
					
					  <div class="form-group">
					    <label class="control-label col-sm-3" for="violationOfficer">Violation Officer:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="violationOfficer" placeholder="Enter Violation Officer's Name">
					    </div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="ticketNumber">Violation Ticket Number:</label>
					    <div class="col-sm-9"> 
					      <input type="text" step="any"  class="form-control" id="ticketNumber" placeholder="Enter Ticket Number">
					    </div>
					  </div>	

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="violation">Violation:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="violation" placeholder="Enter Violation">
					    </div>
					  </div>

					  <div class="form-group"> 
					    <div class="col-sm-offset-2 col-sm-10">
					      <button type="submit" id="btn-add-violation" class="btn btn-primary">Save
					      <span class="glyphicon glyphicon-saved" aria-hidden="true"></span>
					      </button>
					    </div>
					  </div>

					  <input type="hidden" class="form-control" id="status">
					</form>
				<!-- /main form -->
			</div>
		</div>
	</div>
</div>

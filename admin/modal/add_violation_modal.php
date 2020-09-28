<?php 
// require_once('../../index.php'); 
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

<!-- 					  <div class="form-group">
					    <label class="control-label col-sm-3" for="violation">Violation:</label>
					    <div class="col-sm-9"> 
					      <input type="text" class="form-control" id="violation" placeholder="Enter Violation">
					    </div>
					  </div> -->

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="violation">Violation:</label>
					    <div class="col-sm-9"> 
						    <select class="form-control" id="basic-multiple" name="states[]" multiple="multiple" style="width: 100%">
							  <option value="Vehicle has no valid Parking Permit">Vehicle has no valid Parking Permit</option>
							  <option value="Parked in No Parking Area/Space">Parked in No Parking Area/Space</option>
							  <option value="Parked in Fire Lane">Parked in Fire Lane</option>
							  <option value="Improperly parked in bay">Improperly parked in bay</option>
							  <option value="Parked in reserved or assigned space">Parked in reserved or assigned space</option>
							  <option value="Double Parking">Double Parking</option>
							  <option value="Blocking driveway or access">Blocking driveway or access</option>
							  <option value="Blocking other vehicle">Blocking other vehicle</option>
							  <option value="Parked in two spaces">Parked in two spaces</option>
							  <option value="Parked in handicapped Space">Parked in handicapped Space</option>
							  <option value="Parked in Visitor's bay">Parked in Visitor's bay</option>
							</select>
					    </div>
					  </div>

					  <div class="form-group"> 
					    <div class="modal-footer">
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


<!-- <script type="text/javascript">
$('#basic-multiple').select2({
  dropdownParent: $('#modal-add-violation')
});

$('body').on('shown.bs.modal', '.modal', function() {
  $(this).find('select').each(function() {
    var dropdownParent = $(document.body);
    if ($(this).parents('.modal.in:first').length !== 0)
      dropdownParent = $(this).parents('.modal.in:first');
    $(this).select2({
      dropdownParent: dropdownParent
      // ...
    });
  });
});
</script> -->

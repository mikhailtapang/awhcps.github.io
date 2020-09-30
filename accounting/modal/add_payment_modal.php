<?php 
require_once('../class/Item.php'); 
require_once('../class/Employee.php'); 

$employees = $employee->get_employees();



?>
<div class="modal fade" id="modal-add-payment">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Add Payment</h4>
			</div>
			<div class="modal-body">
				<!-- main form -->
					<form class="form-horizontal" role="form" id="add-payment-form">
					<input type="hidden" id="iID">
					<input type="hidden" id="vID">

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="accountNumber-payment">Account Number:</label>
					    <div class="col-sm-9">
					      <input type="text" class="form-control" id="accountNumber-payment" disabled placeholder="Enter Account Number">
					    </div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="ownerName-payment">Owner:</label>
					    <div class="col-sm-9">
					      <input type="text" class="form-control" id="ownerName-payment" disabled placeholder="Enter Owner's Address">
					    </div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="plateNumber-payment">Plate Number:</label>
					    <div class="col-sm-9">
					      <input type="text" class="form-control" id="plateNumber-payment" disabled placeholder="Enter Item Name" autofocus>
					    </div>
					  </div>

					   <div class="form-group">
					    <label class="control-label col-sm-3" for="dateApprehended-payment">Ticket date issued:</label>
					    <div class="col-sm-9"> 
					      <input type="date" class="form-control" id="dateApprehended-payment" disabled placeholder="Date Apprehended">
					    </div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="ticketNumber-payment">Citation Ticket Number:</label>
					    <div class="col-sm-9"> 
					      <input type="text" step="any"  class="form-control" id="ticketNumber-payment" disabled placeholder="Enter Ticket Number">
					    </div>
					  </div>	

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="amount_payment">Amount:</label>
					    <div class="col-sm-9"> 
					      <input type="text" step="any"  class="form-control" id="amount_payment" placeholder="Amount">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-sm-3" for="or_number">OR number:</label>
					    <div class="col-sm-9"> 
					      <input type="text" step="any"  class="form-control" id="or_number" placeholder="OR Number">
					    </div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="paymentDate">Payment Date:</label>
					    <div class="col-sm-9"> 
					      <input type="date" class="form-control" id="paymentDate" placeholder="Date Apprehended">
					    </div>
					  </div>	

					  <div class="form-group"> 
					    <div class="modal-footer">
					      <button type="submit" id="btn-add-violation" class="btn btn-primary">Save
					      <span class="glyphicon glyphicon-saved" aria-hidden="true"></span>
					      </button>
					    </div>
					  </div>


					</form>
				<!-- /main form -->
			</div>
		</div>
	</div>
</div>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css' rel='stylesheet'>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" >
    </script>
<link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
     <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/fixedcolumns/3.3.0/css/fixedColumns.dataTables.min.css">
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css">
      <!-- ----------------------ALL THE JS FILE INCLUDED----------------------------------------- -->    
<script
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//datatables.net/download/build/nightly/jquery.dataTables.js"></script>
<script src="https://cdn.datatables.net/fixedcolumns/3.3.0/js/dataTables.fixedColumns.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>  --%>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
     <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css' rel='stylesheet'>
      
  
      
    <script src=
"https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" >
    </script>
 <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet" type="text/css">
 <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script> 

 <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>
    <script src="src/jquery.table2excel.js"></script>
    
     <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js" ></script>
 <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js" ></script>
 
<style type="text/css">
p {
	margin: 8px 25px 8px;
	font-size: 14px;
	text-align: right;
	font-weight: 600;
}

.container {
	margin-top: 10px;
	margin-left: 35px;
	width: 1300px;
}

.modal-dialog {
	width: 1020px;
}

label {
	/* display: inline-block; */
	max-width: 100%;
	margin-bottom: 5px;
	font-weight: 700;
	display: inline-flex;
	margin-top: 7px;
}

legend {
	border: 0;
}

.alert {
	float: left;
	padding: 0px;
	margin-bottom: 0px;
	border: 2px solid transparent;
	border-radius: 18px;
	margin-top: 1px;
	padding-top: 12px;
	padding-left: -14px;
}

.col-md-3 {
	width: 23%;
}

/** code by Sunil **/
* {
	box-sizing: border-box;
}

body {
	font-family: 'Open Sans', sans-serif;
	color: #202020;
}

table {
	width: 100%;
	border-collapse: collapse;
	text-align: left;
	overflow: hidden;
}

table td, table th {
	border-top: 1px solid #ECF0F1;
	padding: 10px;
}

table th {
	border: 1px solid #6c757d;
	background: #6c757d;
	font-weight: normal;
	color: #ffffff;
}

table td {
	border-left: 1px solid #ECF0F1;
	border-right: 1px solid #ECF0F1;
}

table th {
	background-color: #435865;
}

table tr:nth-of-type(even) td {
	/* background-color: #FFB2B3; */
	
}

.responsive-toggle {
	display: none;
}
</style>
</head>

<body>
 <jsp:include page="header.jsp" />
<div class="container">
	<div align="right">
		<div class="form-check form-switch">
		  <input class="form-check-input" type="checkbox" id="loanStatus" checked>
		  <label class="form-check-label" for="loanStatus">Show Active Loan</label>
		</div>
	</div>
		<div id="divOutputWindow">
		<table id="example" class="table table-striped table-bordered nowrap"
			style="width: 100%">
			<thead id="mainHead">

			</thead>

			<tbody id="tdata">


			</tbody>

		</table>
	</div>
    </div>      
            <!---container closing---->
            <div class="modal fade" id="userDataModel" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
          
          <h4 class="modal-title">Case Payment</h4>
        </div>
        <div class="modal-body">
        <div class="tableRow">
						<div class="col-md-12">
							<table class="table" border="1" id="tblLnDtl">
								<thead>
									<tr >
									    <th>Customer Name</th>
										<th>Garantor Name</th>
										<th>Area</th>
										<th>Case No</th>
										<th>Case Date</th>
										<th>Case Amount</th>
										<th>Case Tenure</th>
										<th>Daily Amount</th>
										<th>Total Received</th>
										<th>Pending As On</th>
										<th>Delay In (Days)</th>
										<th>Last Received Date</th>
										
									</tr>
								</thead>
								<tbody id="loanDtlBody">
								</tbody>
							</table>
						</div>
					</div>
       				<div class="row">
						<div class="col-md-3">
							<p>Payment Type :</p>
						</div>
						<div class="col-md-3">
							 <select id="ddlpymntType" class="form-control"
								aria-label="Default select example"> 
								<option value="0" selected="selected">-- Select Payment Type --</option>
								<option value="1">Advance-EMI</option>	
								<option value="2">Interest</option>
								<option value="3">Principle</option>									
						</select>	
						</div>
						<div class="col-md-3">
							<p>Amount :</p>
						</div>
						<div class="col-md-3">
						<div class="input-group">
						 <span class="input-group-addon"><i class="fa fa-rupee-sign"></i></span>
								<input type="text" id="receivedAmount" class="form-control form-control-sm">						
						</div>
						</div>
					</div>
					<br>
						<div class="row" id="dvPaymentDays">
						<div class="col-md-3" align="right" >
							<p>Days:</p>
						</div>
						<div class="col-md-3">
							<input class="form-control form-control-sm" id="txtInputDays" onkeypress="return isNumber(event)" type="text" >
						</div>				
							<div class="col-md-3"><p>Receipt Upto Date:</p></div>
						<div class="col-md-3" align="left">
							<input type="text" id="pymntRecvdUptoDt" class="form-control form-control-sm" type="date" placeholder="Select Date" readonly >
						</div>
					</div>
					<br>
					<fieldset class="border p-2" id="fldMetrCalc">
					<legend class="float-none w-auto p-2">Meter Calculation</legend>
					<div class="row" id="divMetrCalc">
					  <div class="com-md-12">
					    <div class="col-md-4" align="left">
					     <label >Mtr Bal:<input class="form-control form-control-sm" id="txtMtrPrncpl" onkeypress="return isNumber(event)" type="text" >
					    </label>
					    </div>
					    <div class="col-md-4" align="left">				    
					     <label>Bal Int.:<input class="form-control form-control-sm" id="txtMtrPrvBal" onkeypress="return isNumber(event)" type="text" >
					     </label>	
					     </div>					    
				     <div class="col-md-4" align="left">
					     <label>Case Amt:<input class="form-control form-control-sm" id="txtNewMtrEmiAmt" onkeypress="return isNumber(event)" type="text" >
					     </label>
					     </div>
					  </div>
					</div>
					  </fieldset>

					<br>
					<div class="row">
						<div class="col-md-3" align="right">
							<p>Payment Mode:</p>
						</div>
						<div class="col-md-3">
							<label><input type="checkbox" class="radio" value="Cash" name="pType" checked/>&nbsp  Cash</label>&nbsp &nbsp 
							<label><input type="checkbox" class="radio" value="Online" name="pType" /> &nbsp Online</label>
						</div>	
						<div class="col-md-3" align="right">
							<p>Payment Date:</p>
						</div>					
						<div class="col-md-3">
							<input type="text" id="pymntDate" class="form-control form-control-sm" type="date" placeholder="Select Date" readonly >
						</div>	
					</div>
		  </div>
<br>
<br>

       <div class="modal-footer">
       <div class="col-md-6">
       <div id="msgId">
    <h4 id="alertMsg"></h4></div>
    </div>
     <div class="col-md-2"></div>
      <div class="col-md-4">
          <button type="button" class="btn btn-primary" id="payBTNId" onclick="doPayment()">Pay Amount</button> &nbsp &nbsp
	<button type="button" class="btn btn-danger" class="close" data-dismiss="modal" data-toggle="modal"  onclick="closeModal()">Close</button>							
		</div>
		</div>	
   			<div id="waitSave" style="display: none" align="center">
           		<img src="https://ebiztradewebapp.azurewebsites.net/resources/images/loading_blue2.gif" width="45" height="45" alt="Loading..." />
			</div>       
      </div>
     </div>
    </div>
  </div>  
  
  <!-- -------------SOA Model_________----------------------------------------------------------------------------------- -->
           <div class="modal fade" id="soaDataModel" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
          
          <h4 class="modal-title">SOA</h4>
        </div>
        <div class="modal-body">
        <div class="tableRow">
						<div class="col-md-12">
							<table border="1" class="table table-striped table-bordered" id="soaTable">
			<thead class="thead-dark">
				<tr>
					<th>Srl.No</th>
					<th>Received Date</th>
					<th>Description</th>
					<th>Loan Amount</th>
					<th>Received Amount</th>
					<th>Balance Amount</th>
				</tr>
			</thead>
			
				<tbody id="soaTBoady">
					
				</tbody>
			
		</table>
						</div>
					</div>
					
					
  </div>
<br>
<br>

       <div class="modal-footer">
       <div class="col-md-6">
       <div id="msgId">
    <h4 id="alertMsg"></h4></div>
    </div>
     <div class="col-md-2"></div>
      <div class="col-md-4">
        
	<button type="button" class="btn btn-danger" class="close"    data-toggle="modal" data-target="#soaDataModel">Close</button>							
		</div>
    			<div id="wait" style="display: none" align="center">
           		<img src="https://ebiztradewebapp.azurewebsites.net/resources/images/loading_blue2.gif" width="45" height="45" alt="Loading..." />
			</div>         
      </div>
     </div>
    </div>
  </div>
  <%-- <jsp:include page="footer.jsp" /> --%>
</body>
<script type="text/javascript">
var lstPymntRevdDt;
var paymentsucees=0;
var caseEmiAmount = 0;
var caseType;
var caseAmount = 0;
var pendingPayment = 0;
var loanTypeId = 0;
var customerId = 0;
$('#fldMetrCalc').hide();

function closeModal()

{

    if(paymentsucees>0)

		window.location.href = '/ebizTradeWebApp/dashBoard';
    //	window.location.href = 'https://ebiztradewebapp.azurewebsites.net/dashBoard';

       //$('#userDataModel').modal('toggle');

}
function isNumber(evt) {
	console.log("number");
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
jQuery(document).ready(function($){
	LoadDashboardData("A");
var table ;
var paymentBtn;
var soaBtn;
//Checkbox 

 $(document).ajaxStart(function () {
        $('#wait').show();
    });
    $(document).ajaxStop(function () {
        $('#wait').hide();
    });
    $(document).ajaxError(function () {
        $('#wait').hide();
    });  
 
$("input:checkbox").on('click', function() {
  var $box = $(this);
  if ($box.is(":checked")) {
    var group = "input:checkbox[name='" + $box.attr("name") + "']";
    $(group).prop("checked", false);
    $box.prop("checked", true);
  } else {
    $box.prop("checked", false);
  }
});

function numberWithCommas(x) {
    return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
} 
function toInputFormat(date) {
    alert(date); 
	var yyyy = date.getFullYear().toString();
   var mm = (date.getMonth()+1).toString(); // getMonth() is zero-based
   var dd  = date.getDate().toString();
   // return yyyy + "-" + (mm[1]?mm:"0"+mm[0]) + "-" + (dd[1]?dd:"0"+dd[0]);
  
   return (dd[1]?dd:"0"+dd[0]) + '/' + getMonthName((mm[1]?mm:"0"+mm[0])) + '/' + yyyy;
   
}

//-----------------------------------------------------------------------
function limitText(field, maxChar){
    var ref = $(field),
        val = ref.val();
    if ( val.length >= maxChar ){
        ref.val(function() {
            console.log(val.substr(0, maxChar))
            return val.substr(0, maxChar);    
        });
    }
}
  



function getMonthName(monthNumber) {
   const date = new Date();
   date.setMonth(monthNumber - 1);

   return date.toLocaleString('en-US', { month: 'long' });
 }   
// var prvsdays=$("#pymntRecvdUptoDt").val();
$("#txtInputDays").on('keyup', function() {
	  setPaymentRecdDat();
	  limitText(this, 3);
	 });	   
});


function setPaymentRecdDat() {
	var date = new Date(lstPymntRevdDt),
    days = parseInt($("#txtInputDays").val(), 10);
	 
     if(!isNaN(date.getTime())){
    	date.setDate(date.getDate() + days);

    	var yyyy = date.getFullYear().toString();
    	var mm = (date.getMonth()+1).toString(); // getMonth() is zero-based
    	var dd  = date.getDate().toString();
    	   
	   const dateMon = new Date();
	   dateMon.setMonth((mm[1]?mm:"0"+mm[0]) - 1);
	
	    var dateMonth = dateMon.toLocaleString('en-US', { month: 'long' });    	
    	
        $("#pymntRecvdUptoDt").val((dd[1]?dd:"0"+dd[0]) + '/' + dateMonth + '/' + yyyy);
     }  	
}

function ClosedLoanDashboard(loanstatus){
	$.ajax({
	    url: '/ebizTradeWebApp/get-all-user-loan-data',
	 //    url: 'https://ebiztradewebapp.azurewebsites.net/get-all-user-loan-data',		
	    type: 'POST',
	    contentType: 'application/json',
	    data: JSON.stringify(
    	{
    		"searchVarData":loanstatus
    		
    	}),	   
    	dataType: 'json',
    	success: function (data) {
            var k=1;
            $('#mainHead').html(
          		 '<tr>'+
          		// '<th>Sr. No</th>'+
                   '<th hidden>clientId</th>'+
                   '<th hidden>loanId</th>'+
                   '<th class="dlySlsFcstWkTtl"> Customer Name</th>'+
                   '<th style="width:30%">Guaranteer Name</th>'+
                   '<th >Area</th>'+
                   '<th >Case No</th>'+
                   '<th >Case Date</th>'+
                   '<th >Closure Date</th>'+
                   '<th>Case Amount</th>'+
                   '<th >Total Received</th>'+
                   '<th >EMI Amount</th>'+
                   '<th >Loan Tenure</th>'+
                   '<th >Action</th>'+
                   '<th hidden>loanTypeId</th>'+
                   '</tr>'	
          );    	
           for(var i=0;i<data.length;i++){
        	   paymentBtn= '<button type="button" class="btn btn-danger btn-sm" id="paybtn" data-toggle="modal" data-target="#userDataModel" disabled="true" onclick=LeaveID('+data[i].loanId+')>Pay</button>';
        	   soaBtn='<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#soaDataModel" onclick=SOAData('+data[i].loanId+')>SOA</button>';
        	   
           	$('#tdata').append(
                	'<tr>'+
                	//'<td>'+k+++'</td>'+
                	'<td hidden>'+data[i].clientId +'</td>'+
                	'<td hidden>'+data[i].loanId +'</td>'+
                	'<td style="width:30%">'+data[i].clientName+'</td>'+
                	'<td style="width:30%">'+data[i].guarantorName+'</td>'+
                	'<td>'+data[i].clientArea+'</td>'+
                	'<td>'+data[i].loanNmber +'</td>'+
                	'<td>'+data[i].loanDate +'</td>'+
                	'<td>'+data[i].loanClosureDate +'</td>'+
                	'<td>'+data[i].loanAmount+'</td>'+
                	'<td>'+data[i].totalRcvdAmount +'</td>'+
                	'<td>'+data[i].emiAmount +'</td>'+
                	'<td>'+data[i].loanTenure +'</td>'+
                	'<td>'+paymentBtn +'  '+soaBtn+'</td>'+
                	'<td hidden>'+data[i].loanTypeId +'</td>'+
                	'</tr>'
                	);        	   
           }
           createClosedDatatable();
    	},
        error: function (error) {
            console.log(`Error ${error}`);
        }
	});
}

function LoadDashboardData(loanstatus){
$.ajax({
    url: '/ebizTradeWebApp/get-all-user-loan-data',
  //  url: 'https://ebiztradewebapp.azurewebsites.net/get-all-user-loan-data',
   type: 'POST',
   contentType: 'application/json',
   data: JSON.stringify(
   	{
   		"searchVarData":loanstatus
   		
   	}),
    dataType: 'json',
    success: function (data) {
        console.log(data);
       /*  var table1 = $('#example').DataTable();
        table1.destroy();
       */
        var k=1;
          $('#mainHead').html(
        		 '<tr>'+
        		// '<th>Sr. No</th>'+
                 '<th hidden>clientId</th>'+
                 '<th hidden>loanId</th>'+
                 '<th class="dlySlsFcstWkTtl"> Customer Name</th>'+
                 '<th style="width:30%">Guaranteer Name</th>'+
                 '<th >Area</th>'+
                 '<th >Case No.</th>'+
                 '<th >Case Date</th>'+
                 '<th>Case Amount</th>'+
                 '<th >EMI Amount</th>'+
                 '<th >Pending</th>'+
                 '<th >Due Days</th>'+
                 '<th >Received</th>'+
                 '<th hidden>Deu Days</th>'+
                 '<th >Tenure</th>'+
                 '<th >Action</th>'+
                 '<th hidden>loanTypeId</th>'+
                 '</tr>'	
        ); 
        for(var i=0;i<data.length;i++){
        	if (loanstatus == "C") {
        		paymentBtn= '<button type="button" class="btn btn-danger btn-sm" id="paybtn" data-toggle="modal" data-target="#userDataModel" disabled="true" onclick=LeaveID('+data[i].loanId+')>Pay</button>';
        	} else {
        		paymentBtn= '<button type="button" class="btn btn-danger btn-sm" id="paybtn" data-toggle="modal" data-target="#userDataModel"  onclick=LeaveID('+data[i].loanId+')>Pay</button>';	
        	}
        	soaBtn='<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#soaDataModel" onclick=SOAData('+data[i].loanId+')>SOA</button>';
            

        	
        	$('#tdata').append(
        	'<tr>'+
        	//'<td>'+k+++'</td>'+
        	'<td hidden>'+data[i].clientId +'</td>'+
        	'<td hidden>'+data[i].loanId +'</td>'+
        	'<td style="width:30%">'+data[i].clientName+'</td>'+
        	'<td style="width:30%">'+data[i].guarantorName+'</td>'+
        	'<td>'+data[i].clientArea+'</td>'+
        	'<td>'+data[i].loanNmber +'</td>'+
        	'<td>'+data[i].loanDate +'</td>'+
        	'<td>'+data[i].loanAmount+'</td>'+
        	'<td>'+data[i].emiAmount +'</td>'+
        	'<td>'+data[i].pendingAmount+'</td>'+
        	'<td>'+data[i].dueDays +'</td>'+
        	'<td>'+data[i].totalRcvdAmount +'</td>'+
        	'<td>'+data[i].loanTenure +'</td>'+
        	'<td hidden>'+data[i].lastRcvngDate +'</td>'+
        	'<td>'+paymentBtn +'  '+soaBtn+'</td>'+
        	'<td hidden>'+data[i].loanTypeId +'</td>'+
        	'</tr>'
        	);
        }
       
         createDatatable();
          $('div#divOutputWindow table tr td').eq(13).css('width','1px');
          
         //$('div#divOutputWindow table tr td').eq(3).css('width','1px');   */       
    },
    error: function (error) {
        console.log(`Error ${error}`);
    }
});
}

function createClosedDatatable() {
	table=new DataTable('#example', {
		  buttons:        ['csv', 'excel'],
		  bAutoWidth: true,  
			 "ordering": false,
			 fixedHeader: false,
			 "pageLength": 8,
			 scrollX:        true,
			
			 columnDefs: [{
				    class: 'details-control',
				    orderable: false,
				    data: null,
				    defaultContent: '',
				    targets: 0
				  },
				  { 
					    targets: 'dlySlsFcstWkTtl',
					    width: '30px'
					  }
			 ],
			 
			  columnDefs: [
		        { "width": "10%", "targets": [0,1,3,4,5,6] }      
		        
		      ], 
		      dom: 'Bfrtip',
		      buttons: [
		         
		          {
		        	  className: 'btn btn-primary btn-sm',
		              extend: 'excelHtml5',
		              exportOptions: {
		            	  columns: [  2,3,4,5,6,7,8,9 ],
		            	  filename: 'repot'
		              }
		          },
		          {
		              extend: 'pdfHtml5',
		              exportOptions: {
		                  columns: [  2,3,4,5,6,7,8,9],
		                  filename:'report'
		              }
		          },
		         // 'colvis'
		      ] 
		      
		  });	
	}
	
	function createDatatable(){
		
  table=new DataTable('#example', {
  buttons:        ['csv', 'excel'],
  bAutoWidth: true,  
	 "ordering": false,
	 fixedHeader: false,
	 "pageLength": 8,
	 scrollX:        true,
	
	 columnDefs: [{
		    class: 'details-control',
		    orderable: false,
		    data: null,
		    defaultContent: '',
		    targets: 0
		  },
		  { 
			    targets: 'dlySlsFcstWkTtl',
			    width: '30px'
			  }
	 ],
	 
	  columnDefs: [
        { "width": "10%", "targets": [0,1,3,4,5,6] }      
        
      ], 
      dom: 'Bfrtip',
      buttons: [
         
          {
        	  className: 'btn btn-primary btn-sm',
              extend: 'excelHtml5',
              exportOptions: {
            	  columns: [  2,3,4,5,6,7,8,9,10 ],
            	  filename: 'repot'
              }
          },
          {
              extend: 'pdfHtml5',
              exportOptions: {
                  columns: [  2,3,4,5,6,7,8,9,10],
                  filename:'report'
              }
          },
         // 'colvis'
      ] 
      
  });
}
     /* initComplete: function () {
        this.api()
            .columns()
            .every(function () {
                let column = this;
                let title = column.header().textContent;
 
                // Create input element
                let input = document.createElement('input');
                input.placeholder = "Search...";
                column.header().replaceChildren(input);
 
                // Event listener for user input
                input.addEventListener('keyup', () => {
                    if (column.search() !== this.value) {
                        column.search(input.value).draw();
                    }
                });
            });
    }  */
  

  //$('#example tfoot tr').appendTo('#example thead');
 /*  table.on('click', 'tbody tr', function () {
	    /* var data = table.row(this).data();
	 
	    alert('You clicked on ' + data[0] + "'s row");
	    $('#userDataModel').modal('show');
	    var currentRow=$(this).closest("tr"); 
	       var col1=currentRow.find("td:eq(0)").text(); // get current row 1st TD value
	       alert(col1);
	       
	        
	       var row = $(this.node());
	        var loanId= row.find('td:eq(0)').text();
	        alert(loanId);
	       
	}); */  
	
	$( "#pymntRecvdUptoDt" ).datepicker({
		dateFormat:'dd/MM/yy'
	   
	   
	});
	
	var loanID;
function LeaveID(loanId){
	 
	 loanID=loanId;
}

function loanValidate(data) {
	$('#payBTNId').prop('disabled', true);
	   var xhr = new XMLHttpRequest();
	//   xhr.open("POST", "https://ebiztradewebapp.azurewebsites.net/validate-payment-receipt", true);
	  xhr.open("POST", "/ebizTradeWebApp/validate-payment-receipt", true);
	   xhr.setRequestHeader("Content-Type", "application/json");
	   xhr.onreadystatechange = function () {
		   if (xhr.readyState === 4 && xhr.status === 200) {
			   var responseData = JSON.parse(xhr.responseText);
			   if (responseData.errorFlag == true) {
				   if (confirm(responseData.strMessage + '\nAre you sure you want to save?')) {
					   savePaymentReceipt(data);
				   } else {
					   $('#receivedAmount').focus();
				   }
			   } else {
				   savePaymentReceipt(data);
			   }
		   }
	   };
	   xhr.send(JSON.stringify(data));
		$('#payBTNId').prop('disabled', false);
}

function autoLoanClose(data) {
	//$('#payBTNId').prop('disabled', true);
	   var xhr = new XMLHttpRequest();
	//   xhr.open("POST", "https://ebiztradewebapp.azurewebsites.net/validate-loan-close", true);
	   xhr.open("POST", "/ebizTradeWebApp/validate-loan-close", true);
	   xhr.setRequestHeader("Content-Type", "application/json");
	   xhr.onreadystatechange = function () {
		   if (xhr.readyState === 4 && xhr.status === 200) {
			   var responseData = JSON.parse(xhr.responseText);
			   if (responseData.errorFlag == true) {
				   if (confirm(responseData.strMessage + '\nAre you want to close the case?')) {
					   closeLoan(data);
				   } else {
					   $('#receivedAmount').focus();
				   }
			   } 
		   }
	   };
	   xhr.send(JSON.stringify(data));
	 //  $('#payBTNId').prop('disabled', false);
}

function savePaymentReceipt(data) {
   var xhr = new XMLHttpRequest();
 //  xhr.open("POST", "https://ebiztradewebapp.azurewebsites.net/create-new-payment-receipt", true);
   xhr.open("POST", "/ebizTradeWebApp/create-new-payment-receipt", true);
   xhr.setRequestHeader("Content-Type", "application/json");
   xhr.onreadystatechange = function () {
   if (xhr.readyState === 4 && xhr.status === 200) {
       var responseData = JSON.parse(xhr.responseText);
       console.log(responseData);
       if (responseData.errorFlag == false) {
           $("#msgId").addClass("alert alert-success");
    	   $("#alertMsg").append(" Payment Received successfully  ");
           paymentsucees++;
           $('#payBTNId').prop('disabled', true);
           $('#receivedAmount').attr('disabled', true);
    	   $('#pymntRecvdUptoDt').attr('disabled', true);
    	   $('#ddlpymntType').attr('disabled', true);
    	   $('input[name="pType"]').attr('disabled', 'disabled');
    	   $('#txtInputDays').attr('disabled', true);		   
    	   autoLoanClose(data);
       } else {
			alert(responseData.strMessage);
			$("#msgId").addClass("alert alert-danger");
			$("#alertMsg").append(responseData.strMessage);
       }
     }
   };
	 xhr.send(JSON.stringify(data));	
}

function closeLoan(data) {
	   var xhr = new XMLHttpRequest();
	 //  xhr.open("POST", "https://ebiztradewebapp.azurewebsites.net/loan-close", true);
	   xhr.open("POST", "/ebizTradeWebApp/loan-close", true);
	   xhr.setRequestHeader("Content-Type", "application/json");
	   xhr.onreadystatechange = function () {
	   if (xhr.readyState === 4 && xhr.status === 200) {
	       var responseData = JSON.parse(xhr.responseText);
	       console.log(responseData);
	       $("#msgId").addClass("alert alert-success");
		   $("#alertMsg").append("<br>"+responseData.strMessage);
		   alert(responseData.strMessage);		   
				   
	     }
	   };
		 xhr.send(JSON.stringify(data));	
	}


function doPayment(){
	if (confirm('Are you sure you want to save?')) {
	$('#payBTNId').prop('disabled', true);
	 var meterValidation = 0;
	 $("#alertMsg").html('');
	 $("#msgId").removeClass('alert alert-danger');
	   var recvdAmt=$('#receivedAmount').val();
	   var pymntRcvdUpto=$('#pymntRecvdUptoDt').val();
	   var paymentType=$('#ddlpymntType').val();
	  var payementMode=  $('input[name=pType]:checked', '#userDataModel').val();
	  var txtInputDays=$('#txtInputDays').val();
	  var meterPrnclBal = $('#txtMtrPrncpl').val();
	  var newMeterEmi = $('#txtNewMtrEmiAmt').val();
	  var validation=0;
	  if(paymentType ==0 || paymentType ==null || paymentType =="")
	   {
	   $("#msgId").addClass("alert alert-danger");
	   $("#alertMsg").append("Please Select Payement Type. ");
	   validation++;
	   $('#payBTNId').prop('disabled', false);
	   return false;
	   
	   }
	   if(recvdAmt ==0 || recvdAmt ==null || recvdAmt =="")
		   {
		   $("#msgId").addClass("alert alert-danger");
		   $("#alertMsg").append("Please Enter the Receipt Amount. ");
		   validation++;
		   $('#payBTNId').prop('disabled', false);

		   return false;
		   }
	    if (loanTypeId == "6") {
	    	if (($('#ddlpymntType').val() == "3") && (meterPrnclBal > 0)) {
	    		meterValidation = 1;
	    	}
	    }
	   
	   if(txtInputDays ==null || txtInputDays =="" && meterValidation == "0")  
	   {
	   $("#msgId").addClass("alert alert-danger");
	   $("#alertMsg").append(" Please Enter Days ");
	   validation++;
	   $('#payBTNId').prop('disabled', false);

	   return false;
	   } 
    if(txtInputDays ==0 && meterValidation == "0")  
	   {
	   $("#msgId").addClass("alert alert-danger");
	   $("#alertMsg").append(" Days Can't be Zero");
	   validation++;
	   $('#payBTNId').prop('disabled', false);

	   return false;
	   }
	   if(pymntRcvdUpto ==0 || pymntRcvdUpto ==null || pymntRcvdUpto =="" && meterValidation == "0")
	   {
	   $("#msgId").addClass("alert alert-danger");
	   $("#alertMsg").append(" Please select  date.  ");
	   validation++;
	   $('#payBTNId').prop('disabled', false);

	   return false;
	   }
	  
	    if(payementMode ==0 || payementMode ==null || payementMode == "")  
	   {
	   $("#msgId").addClass("alert alert-danger");
	   $("#alertMsg").append(" Please Select Payment Mode  ");
	   validation++;
	   $('#payBTNId').prop('disabled', false);

	   return false;
	   } 
	    
	    if(meterValidation == "1") {
	    	if (newMeterEmi == "0" || newMeterEmi == null || newMeterEmi == "") {
    		   $("#msgId").addClass("alert alert-danger");
    		   $("#alertMsg").append(" Please Select New Meter Days  ");
    		   validation++;
    		   $('#txtNewMtrEmiAmt').focus();
    		   $('#payBTNId').prop('disabled', false);

    		   return false;	    		
	    	}
	    }
	    
	    if(validation==0){
	    	$('#payBTNId').prop('disabled', true);
	   var data= 
	    {
		"loanId":loanID,
		"rcvd_amt":recvdAmt, 
		"rvcd_till_date":pymntRcvdUpto,
		"loanIssueBy":1,
		"advEmiFlag":paymentType,
		"newMeterAmount":meterPrnclBal,
		"prevMeterBalInt":$('#txtMtrPrvBal').val(),
		"newMeterEmi":newMeterEmi,
		"loanTypeId":loanTypeId,
		"customerId":customerId,
		"loanDate": $('#pymntDate').val()
	    } 

	   console.log(data)
	   
	   loanValidate(data);
	   $('#payBTNId').prop('disabled', false);
	
	   
    }
	} else {
		$('#payBTNId').prop('disabled', false);
	}
}

$("#example").on('click','#paybtn',function(){
	
	 $("#ddlpymntType").val('0');
	$('#pymntRecvdUptoDt').val('');
	$('#txtInputDays').val('');
	$('#receivedAmount').val('');
    currentRow=$(this).closest("tr");
    $('#loanDtlBody').html('');
    $('#receivedAmount').attr('readonly', true);
    $('#txtInputDays').attr('readonly', true);

    
    var cname=currentRow.find("td:eq(2)").text(); 
    
	if (isValidDate(currentRow.find("td:eq(13)").text())) {
		$("#pymntRecvdUptoDt").val(currentRow.find("td:eq(13)").text());	
		lstPymntRevdDt = currentRow.find("td:eq(13)").text();
	} else {
		$("#pymntRecvdUptoDt").val(currentRow.find("td:eq(6)").text());
		lstPymntRevdDt = currentRow.find("td:eq(6)").text();
	}       
	caseEmiAmount = currentRow.find("td:eq(8)").text();
	caseType = currentRow.find("td:eq(5)").text();
	caseAmount = currentRow.find("td:eq(7)").text();
	pendingPayment = currentRow.find("td:eq(9)").text();
	loanTypeId = currentRow.find("td:eq(15)").text();
	customerId = currentRow.find("td:eq(0)").text();
	
     $('#loanDtlBody').append(
    '<tr>'+
    '<td>'+currentRow.find("td:eq(2)").text() +'</td>'+
    '<td>'+currentRow.find("td:eq(3)").text() +'</td>'+
	'<td>'+currentRow.find("td:eq(4)").text() +'</td>'+
	'<td>'+currentRow.find("td:eq(5)").text()+'</td>'+
	'<td>'+currentRow.find("td:eq(6)").text()+'</td>'+
	'<td>'+currentRow.find("td:eq(7)").text()+'</td>'+
	'<td>'+currentRow.find("td:eq(12)").text()+'</td>'+ 
	'<td>'+currentRow.find("td:eq(8)").text() +'</td>'+
	'<td>'+currentRow.find("td:eq(11)").text() +'</td>'+
	'<td>'+currentRow.find("td:eq(9)").text()+'</td>'+
	'<td>'+currentRow.find("td:eq(10)").text() +'</td>'+
	'<td>'+currentRow.find("td:eq(13)").text() +'</td>'+
	'</tr>'
     );
     $('#ddlpymntType').find('[value="2"]').remove();
     $('#ddlpymntType').append('<option value=2>Interest</option>');
     if (loanTypeId == "1" || loanTypeId == "2" || loanTypeId == "3") {
    	 $('#ddlpymntType').find('[value="2"]').remove();
     }
     $("#pymntDate").datepicker("destroy");

     var end = new Date();
     var start = new Date(lstPymntRevdDt);
     
     var diff = new Date(end - start);
     var days = Math.floor(diff/1000/60/60/24);

     var minvar = '-' + days + 'd';
     
     $( "#pymntDate" ).datepicker({
     	dateFormat:'dd/MM/yy',
     	minDate: minvar
 	});    
     $("#pymntDate").datepicker("setDate", new Date());
    // alert(minvar);	
});
									

//------------------------SOA----------------------------------------------------------------------------------

function SOAData(loanId)
{
	   $('#soaTBoady').html('');
	$.ajax({
	 //   url: 'https://ebiztradewebapp.azurewebsites.net/showFormVWSOADtl',
	    url: '/ebizTradeWebApp/showFormVWSOADtl',
	    type: 'POST',
	    contentType: 'application/json',
		   data: JSON.stringify(
	    	{
	    		"loanID":loanId
	    		
	    	}),
	    success: function (data) {
	        console.log(data);
	        var k=1;
	        for(var i=0;i<data.length;i++){
	        	$('#soaTBoady').append(
	                	'<tr>'+
	                	'<td>'+k+++'</td>'+
	                	'<td >'+data[i].receivedDate +'</td>'+
	                	'<td >'+data[i].description +'</td>'+
	                	'<td>'+data[i].loanAmount+'</td>'+
	                	'<td>'+data[i].receivedAmount+'</td>'+
	                	'<td>'+data[i].balanceAmount+'</td>'+
	                	'</tr>'
	                	);
	        }
	    },
	    error: function (error) {
	        console.log(`Error ${error}`);
	    }
	});
	
	
	}




function isValidDate(s) {
	   
	   if (!isNaN(Date.parse(s))) {
		   return true;
	   } else {
		   return false;
	   }
	 }

 $('#ddlpymntType').on('change', function() {
		$('#divlblMsg').hide();
		 $('#receivedAmount').attr('readonly', false);
		 $('#receivedAmount').val(0);
		    $('#txtInputDays').attr('readonly', false);
		if ($('#ddlpymntType').val() == "3") {
			$("#pymntRecvdUptoDt").datepicker("setDate", new Date());
			$('#ddlpymntType').attr('readonly', true);
			$('#txtInputDays').val("0");
			$('#txtInputDays').attr('readonly', true);
		} else {
			$("#pymntRecvdUptoDt").val(lstPymntRevdDt);
			 $('#ddlpymntType').attr('readonly', false);
			 $('#txtInputDays').val("");
			 $('#txtInputDays').attr('readonly', false);
			 $('#txtMtrPrncpl').val(0);
			 $('#txtMtrPrvBal').val(0);
			 $('#txtNewMtrEmiAmt').val(0);
			 $('#fldMetrCalc').hide();
		}
			 $('#dvPaymentDays').show();
	}); 
	
 function calculateDaysAnddate(recvdAmount,inputDays) {
     $('#txtInputDays').val(Math.floor(recvdAmount/caseEmiAmount));		   
	 setPaymentRecdDat();	 
 }
 
 $("#receivedAmount").on('keyup', function() {
		 $('#txtMtrPrncpl').val(0);
		 $('#txtMtrPrvBal').val(0);
		 $('#txtNewMtrEmiAmt').val(0);
		 $('#fldMetrCalc').hide();
		 if(event.which >= 37 && event.which <= 40) return;

		  // format number
/* 		  $(this).val(function(index, value) {
		    return value
		    .replace(/\D/g, "")
		    .replace(/\B(?=(\d{3})+(?!\d))/g, ",")
		    ;
		  });		  */
	 });	   



 $("#receivedAmount").on("change", function() {
	 	$('#fldMetrCalc').hide();
	    var recvdAmount = $("#receivedAmount").val();
	    var inputDays = $('#txtInputDays').val();
	    var intrestPrncl = Number(caseAmount) + Number(pendingPayment);
		if (recvdAmount > intrestPrncl) {
			alert('Received Amount Is More Than Total Outstanding Balance.')
			$("#receivedAmount").val('');
			$("#receivedAmount").focus();
			return;
		}	  
	    if (loanTypeId == "6") {
	    	if ($('#ddlpymntType').val() == "3") {
	    		var shortPayment = (caseAmount - recvdAmount);
	    		var prnclVldLoan = "false";
	    		if (Number(recvdAmount) >= Number(caseAmount)) {
	    			prnclVldLoan = "true";
	    		}
	    		if (pendingPayment > 0 && (intrestPrncl-recvdAmount)>0 && prnclVldLoan == "true") {
	    			alert('Interest of [' + pendingPayment + '] is pending.\nDeduct the Interest through Separate Entry.' );
	    			$("#receivedAmount").val('');
	    			$("#receivedAmount").focus();
	    			$('#txtInputDays').val(Math.floor(inputDays));
	    			return false;
	    		} else {
	    			calculateDaysAnddate(recvdAmount,inputDays);
		    		if (shortPayment > 0) {
		    			$('#fldMetrCalc').show();
		    			$('#dvPaymentDays').hide();
		    			alert("Please Adjust Shortage Meter Calculation");
		    			$('#txtMtrPrncpl').val(shortPayment);
		    			$('#txtMtrPrvBal').val(pendingPayment);
		    			$("#txtNewMtrEmiAmt").focus();
		    			$('#txtMtrPrncpl').attr('readonly', true);
		    			$('#txtMtrPrvBal').attr('readonly', true);
		    		}	    			
	    		}
		   	} else {
		   		calculateDaysAnddate(recvdAmount,inputDays);
		   	}
	    } else {
	    	calculateDaysAnddate(recvdAmount,inputDays);
	    }

 });	   

  $('#loanStatus').on('click', function() {
	  var x=$("#loanStatus").is(":checked");
	  if (x == false) {
		  $("label[for = loanStatus]").text("Show Close Loan");
		  $('#example').DataTable().clear().destroy();
		  ClosedLoanDashboard("C");
	  } else {
		  $("label[for = loanStatus]").text("Show Active Loan");
		  $('#example').DataTable().clear().destroy();
		  LoadDashboardData("A");
	  }
 }); 
 
  $(document).ready(function () {
	     $("#payBTNId").one('click', function (event) {  
	           event.preventDefault();
	           //do something
	           $(this).prop('disabled', true);
	     });
	});

</script>
</html>
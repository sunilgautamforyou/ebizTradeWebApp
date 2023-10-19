
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css' rel='stylesheet'>
  <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>
  <link href='https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css' rel='stylesheet'>
    <script src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>
</head>

 <style>
td.details-control {
    background: url('https://cdn.rawgit.com/DataTables/DataTables/6c7ada53ebc228ea9bc28b1b216e793b1825d188/examples/resources/details_open.png') no-repeat center center;
    cursor: pointer;
}
tr.shown td.details-control {
    background: url('https://cdn.rawgit.com/DataTables/DataTables/6c7ada53ebc228ea9bc28b1b216e793b1825d188/examples/resources/details_close.png') no-repeat center center;
}
@media screen and (max-width: 481px){
.navbar {
  overflow: hidden;
  background-color: #6699ff;
  position: fixed;
  top: 0;
  
  width: 100%;
}

.navbar .navbar-nav>li>a {
    color: #fff;
	font-weight: bold;
	font-size: 16px;
}
.navbar .navbar-brand {
    color: #fff;
	font-weight: bold;
	font-size: 16px;
}
 body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #cce2ff;
	  
    }
 .header {
      background-color: #ff6666; /* Background color of the header */
      color: #fff; /* Text color of the header */
      padding: 5px;
      text-align: center;
    }

    .header h1 {
      margin: 0;
    }
    .container {
      
      margin: 15px auto;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 15px;
	  padding-top:25px;
    }

    .container h2 {
      text-align: center;
	  margin-top: 10px;
    margin-bottom: 10px;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }

    .form-group input[type="text"],
    .form-group input[type="tel"],
    .form-group input[type="email"],
    .form-group textarea {
      width: 100%;
      padding: 6px;
      border: 1px solid #ccc;
      border-radius: 3px;
      box-sizing: border-box;
    }

    .form-group input[type="file"] {
      display: none;
    }

    .form-group .file-label {
      cursor: pointer;
      background-color: #4CAF50;
      color: #fff;
      padding: 10px;
      border-radius: 3px;
      text-align: center;
    }

    .form-group .file-name {
      margin-top: 5px;
    }

    .form-group input[type="submit"] {
      width: 95%;
      padding: 10px;
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }
 p{
    margin: 8px 25px 8px;
	    font-size: 14px;
		text-align: right;
		font-weight:600;
}
.sector{background-color: white;
margin-top:10px;
  width: auto;
 /*  border: 2px solid #6699ff; */
  padding:5px;
 
  }
  .row {
    margin-right: 80px;
    margin-left: -15px;
	margin-top:14px;
}
.filepond--root  {
	width:500px
}

.filepond--drop-label {
	color: #4c4e53;
}

.filepond--label-action {
	text-decoration-color: #babdc0;
}

.filepond--panel-root {
	border-radius: 2em;
	background-color: #edf0f4;
	height: 1em;
}

.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   height: 19px;
   width: 100%;
   background-color: #6699ff;
   color: white;
   text-align: center;
}
   .container {
     
      background-color: #f2f2f2;
      margin-top: 175px;
  }
  .searchBtn
  {
  margin-top: 10px;
  }
  p{
    margin: 8px 25px 8px;
	    font-size: 14px;
		text-align: left;
		font-weight:600;
}

.btn-primary {
    color: #fff;
    background-color: #337ab7;
    border-color: #2e6da4;
    margin-left: 110px;
}
.alert {
    padding: 0px;
    margin-bottom: 0px;
    border: 2px solid transparent;
    border-radius: 18px;
    margin-top: 15px;
    padding-top: 10px;
    padding-left: 10px;
}	
}
</style> 

<body>
 <%
	String name=session.getAttribute("pkey").toString().split("_")[0].split("\\.")[0];
%>
	<div class="container">
		<div id="msgId">
			<h4 id="alertMsg"></h4>
			<input type="hidden" id="hdnLoginId" name="hdnLoginId" value="<% out.print(name.substring(0, 1).toUpperCase()+name.substring(1)); %>" />
			
		</div>
		<br>
		<div class="row" id="searhBox">
			<div class="col-md-1"></div>
			<div class="col-md-4">
				<b>Enter Name/Mobile No./Email Id/Registration Id :</b>
			</div>
			<div class="col-md-4">
				<input class="form-control" id="searchData" type="text"
					placeholder="Enter Details......">
			</div>
			<div class="col-md-2">
				<button type="button" class="btn btn-primary searchBtn" data-target="#userDataModel" onclick="searchBarrowerData()">Search</button>
			</div>
		</div>
		<!-- ---user Data model -->
		<div class="modal fade" id="userDataModel" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">View Barrower Details</h4>
					</div>
					<div class="modal-body">
						<div id=optionData>
							<table class="table" id="userTable">
								<thead id='tHead'>
									<tr>
										<th hidden>id</th>
										<th>Barrower Name</th>
										<th>Gaurnter Name</th>
										<th>Area</th>
										<th>Select One</th>
									</tr>
								</thead>
								<tbody id='tbodyLoan'>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div id="msgId">
				<h4 id="alertMsg"></h4>
			</div>
		</div>
		<div class="row" id="controlInfo">
			<table id="example" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th></th>
						<th>Case Number</th>
						<th>Case Amount</th>
						<th>EMI Amount</th>
						<th>Pending As On</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
</body>
<script type="text/javascript">
var lstPymntRevdDt;
var caseAmount;
var pendingPayment;
var caseEmiAmount;
var loanID;
var customerId;
var srchData;
$(document).ready(function() {
	$('#controlInfo').hide();
});
   function searchBarrowerData(){
	   $("#msgId").removeClass("alert alert-danger");
	   $("#alertMsg").html("");
	   $('#controlInfo').hide();
	   $('#loanInfo').hide();
	   $('#tbodyLoan').html('');
	   $('#example').DataTable().clear().destroy();
	   var searchDataVal=$('#searchData').val();
	   if(searchDataVal==null || searchDataVal =="" )
		   {
		   }
	   else
		   {
		   
		   $.ajax({
			    url: 'https://ebiztradewebapp.azurewebsites.net/get-barrower-loan-pymnt-list',
			  //  url: '/ebizTradeWebApp/get-barrower-loan-pymnt-list',
			    type: 'Post',
			    contentType: 'application/json',
			   data: JSON.stringify(
			    {
			    	"searchVarData":searchDataVal
			    }),
			    success: function (data) {
			        console.log(data);
			        if(data.length!=0)
			        	{
			        	 $('#userDataModel').modal('show');
			        	for(var i=0;i<data.length;i++){
			        	 $('#tbodyLoan').append(
			                        '<tr>'+
			                        '<td hidden>'+data[i].clientId+'</td>'+
			                        '<td>'+data[i].name+'</td>'+
			                      '<td>'+data[i].granterName+'</td>'+
			                      '<td>'+data[i].area+'</td>'+
			                      '<td><label class="radio-inline"> <input type="radio" class="radioUser" name="selectUser" value='+data[i].clientId+'>Yes </label></td></tr>');
			        	}
			                     
			        	}
			        else{
			        	 $("#msgId").addClass("alert alert-danger");
			  		   $("#alertMsg").append("No details are available on given details. ");
			        }
			       
			    },
			    error: function (error) {
			        console.log(error);
			    }
			});
		   }
   }
   
   $("#userTable").on('click','.radioUser',function(){
       var currentRow=$(this).closest("tr"); 
       var col1=currentRow.find("td:eq(0)").text(); // get current row 1st TD value
       clientId=col1; //passing ClinetId as global var
       $('#userDataModel').modal('hide');
        srchData = {
               "searchVarData" : "A",
               "clientId":clientId
        };       	
       fillDataIntoGrid(srchData);
       $('#controlInfo').show();
   });
   
   
   /* Formatting function for row details - modify as you need */
   function format ( d ) {
	   // `d` is the original data object for the row
	   	   if (isValidDate(d.LastRcvngDate)) {
	   			lstPymntRevdDt = d.LastRcvngDate;
	   	   } else {
	   			lstPymntRevdDt = d.LoanDate;
	   	   }
	   	   caseAmount = d.LoanAmount;
	   	   pendingPayment = d.PendingAmount;
	   	   caseEmiAmount = d.EmiAmount;
	   	   loanID = d.LoanId;
	   	   customerId = d.ClientId;
	   	   
	   	   
/*            return '<div class=\"row\"><div class=\"col-sm-2\"><p>Payment Type :</p></div>' 
      	    + "							 <div class=\"col-sm-4\"><select id=\"ddlpymntType\" class=\"form-control\"\r\n"
      		+ "								aria-label=\"Default select example\" onchange=\"ddlpymntType_change();\"> \r\n"
      		+ "								<option value=\"0\" selected=\"selected\">-- Select Payment Type --</option>\r\n"
       		+ "								<option value=\"2\">Interest</option>\r\n"
      		+ "								<option value=\"3\">Principle</option>									\r\n"
      		+ "						</select></div><div class=\"col-sm-2\"><p>Amount :</p></div><div class=\"input-group col-sm-4\"><span class=\"input-group-addon\"><i class=\"fa fa-rupee-sign\"></i></span><input type=\"text\" id=\"receivedAmount\" class=\"form-control form-control-sm\" disabled=\"disabled\" onkeyup=\"receivedAmount_keyUp();\" onkeypress=\"return isNumber(event)\"></div></div>"
       		+ "<div class=\"row\"><div class=\"col-sm-12\" align=\"left\"><fieldset class=\"border p-2\" id=\"fldMetrCalc\" hidden=\"true\"><legend class=\"float-none w-auto p-2\">Meter Calculation</legend><div class=\"col-md-4\" align=\"left\"><label >Mtr Bal:<input class=\"form-control form-control-sm\" id=\"txtMtrPrncpl\" onkeypress=\"return isNumber(event)\" type=\"text\" >"
		    + "</label></div><div class=\"col-md-4\" align=\"left\"><label>Bal Int.:<input class=\"form-control form-control-sm\" id=\"txtMtrPrvBal\" onkeypress=\"return isNumber(event)\" type=\"text\" ></label></div>"
      		+ "<div class=\"col-md-4\" align=\"left\"><label>Case Amt:<input class=\"form-control form-control-sm\" id=\"txtNewMtrEmiAmt\" onkeypress=\"return isNumber(event)\" type=\"text\" ></label></div></div>"
      		+ "<div class=\"row\"><div class=\"col-sm-3\" align=\"right\"><p>Payment Mode:</p></div><div class=\"col-md-3\"><label><input type=\"checkbox\" class=\"radio\" value=\"Cash\" name=\"pType\" checked onclick=\"checkbox_click();\"/>Cash</label><label><input type=\"checkbox\" class=\"radio\" value=\"Online\" name=\"pType\" onclick=\"checkbox_click();\"/>Online</label></div><div class=\"col-sm-3\"></div><div class=\"col-sm-3\"><button type=\"button\" class=\"btn btn-primary\" id=\"payBTNId\" onclick=\"doPayment()\">Pay Amount</button></div>"
      		+ "</div></div><div><input type=\"hidden\" id=\"LoanTypeId\" name=\"LoanTypeId\" value='"+ d.LoanTypeId + "'></div>"
		    + "<div><input type=\"hidden\" id=\"txtInputDays\" name=\"txtInputDays\"></div>"
		    + "<div><input type=\"hidden\" id=\"pymntRecvdUptoDt\" name=\"pymntRecvdUptoDt\"></div>"; */
		    
           return '<div class=\"row\"><div class=\"col-sm-8\"><div class=\"col-sm-2\"><p>Payment Type :</p></div>' 
     	    + "							 <div class=\"col-sm-2\"><select id=\"ddlpymntType\" class=\"form-control\"\r\n"
     		+ "								aria-label=\"Default select example\" onchange=\"ddlpymntType_change();\"> \r\n"
     		+ "								<option value=\"0\" selected=\"selected\">-- Select --</option>\r\n"
      		+ "								<option value=\"2\">Interest</option>\r\n"
     		+ "								<option value=\"3\">Principle</option>									\r\n"
     		+ "						</select></div><div class=\"col-sm-2\"><p>Amount :</p></div><div class=\"input-group col-sm-2\"><span class=\"input-group-addon\"><i class=\"fa fa-rupee-sign\"></i></span><input type=\"text\" id=\"receivedAmount\" class=\"form-control form-control-sm\" disabled=\"disabled\" onkeyup=\"receivedAmount_keyUp();\" onkeypress=\"return isNumber(event)\"></div></div></div>"
      		+ "<div class=\"row\"><div class=\"col-sm-12\" align=\"left\"><fieldset class=\"border p-2\" id=\"fldMetrCalc\" hidden=\"true\"><legend class=\"float-none w-auto p-2\">Meter Calculation</legend><div class=\"col-md-4\" align=\"left\"><label >Mtr Bal:<input class=\"form-control form-control-sm\" id=\"txtMtrPrncpl\" onkeypress=\"return isNumber(event)\" type=\"text\" >"
		    + "</label></div><div class=\"col-md-4\" align=\"left\"><label>Bal Int.:<input class=\"form-control form-control-sm\" id=\"txtMtrPrvBal\" onkeypress=\"return isNumber(event)\" type=\"text\" ></label></div>"
     		+ "<div class=\"col-md-4\" align=\"left\"><label>Case Amt:<input class=\"form-control form-control-sm\" id=\"txtNewMtrEmiAmt\" onkeypress=\"return isNumber(event)\" type=\"text\" ></label></div></div>"
     		+ "<div class=\"row\"><div class=\"col-sm-3\" align=\"right\"><p>Payment Mode:</p></div><div class=\"col-md-3\"><label><input type=\"checkbox\" class=\"radio\" value=\"Cash\" name=\"pType\" checked onclick=\"checkbox_click();\"/>Cash</label><label><input type=\"checkbox\" class=\"radio\" value=\"Online\" name=\"pType\" onclick=\"checkbox_click();\"/>Online</label></div><div class=\"col-sm-3\"></div><div class=\"col-sm-3\"><button type=\"button\" class=\"btn btn-primary\" id=\"payBTNId\" onclick=\"doPayment()\">Pay Amount</button></div>"
     		+ "</div></div><div><input type=\"hidden\" id=\"LoanTypeId\" name=\"LoanTypeId\" value='"+ d.LoanTypeId + "'></div>"
		    + "<div><input type=\"hidden\" id=\"txtInputDays\" name=\"txtInputDays\"></div>"
		    + "<div><input type=\"hidden\" id=\"pymntRecvdUptoDt\" name=\"pymntRecvdUptoDt\"></div>";		    
      		
      		
   		
   }
   
   function fillDataIntoGrid(srchData) {
	   $(document).ready(function() {
/* 	        var srchData = {
	                "searchVarData" : "A",
	                "clientId":clientId
	            };  */   	
	        var table = $('#example').DataTable({
	          //   'ajax': '/ebizTradeWebApp/get-pymnt-receipt?' + $.param(srchData),
        		   'ajax': 'https://ebiztradewebapp.azurewebsites.net/get-pymnt-receipt?' + $.param(srchData),
	            'columns': [
	                {
	                    'className':      'details-control',
	                    'orderable':      false,
	                    'data':           null,		
	                    'contentType': 'application/json',
	                    'type':      'POST',
	                    'dataType':      'json',
	                    'defaultContent': ''
	                },
	                { 'data': 'LoanNmber' },
	                { 'data': 'LoanAmount' },
	                { 'data': 'EmiAmount' },
	                { 'data': 'PendingAmount' }
	            ],
	            'order': [[1, 'asc']]
	        } );   	
	/*         function loadDataIntoTable(var data) {
	            var table = $('#example').DataTable({
	                  'columns': [
	                      {
	                          'className':      'details-control',
	                          'orderable':      false,
	                          'data':           null,
	                          'defaultContent': ''
	                      },
	                      { 'data': 'LoanNmber' },
	                      { 'data': 'LoanAmount' },
	                      { 'data': 'EmiAmount' },
	                      { 'data': 'PendingAmount' }
	                  ],
	                  'order': [[1, 'asc']]        	
	        	});
	        } */
	        
	       // Add event listener for opening and closing details
	       $('#example tbody').on('click', 'td.details-control', function(){
	           var tr = $(this).closest('tr');
	           var row = table.row( tr );
	           
				table.rows().every(function() {
					// If row has details expanded
					if (this.child.isShown()) {
						// Collapse row details
						this.child.hide();
						$(this.node()).removeClass('shown');
					}
				});
				
	           if(row.child.isShown()){
	               row.child.hide();
	               tr.removeClass('shown');
	                             
	           } else {
	               row.child(format(row.data())).show();
	               tr.addClass('shown');
	           }
	       });

	       
		$('#example tbody').on('click', 'tr', function() {

				var tr = $(this).closest('tr');
				var row = table.row(tr);
				
				var tableData = $(this).children("td").map(function() {
					return $(this).text();
				}).get();
				 
				if ($.trim(tableData[1]).indexOf("Daily") != -1) {
					$('#ddlpymntType').find('[value="2"]').remove();
				}
			
				if(row.child.isShown()){
					 $("#receivedAmount").on("change", function() {
						 var txtreceivedAmount = $(this).closest('tr').find("input").val();
						 receivedAmount_change(txtreceivedAmount,caseAmount,pendingPayment);
					 });				
				}

				
				//$('#ddlpymntType').append('<option value=2>Interest</option>');

				//  alert(" " + $.trim(tableData[0]) + " , " + $.trim(tableData[1]) + " , " + $.trim(tableData[2])+ " , " + $.trim(tableData[3])+ " , " + $.trim(tableData[4]));

			});

			// Handle click on "Expand All" button
			$('#btn-show-all-children').on('click', function() {
				// Enumerate all rows
				table.rows().every(function() {
					if (!this.child.isShown()) {
						this.child(format(this.data())).show();
						$(this.node()).addClass('shown');
					}
				});
			});

			// Handle click on "Collapse All" button
			$('#btn-hide-all-children').on('click', function() {
				// Enumerate all rows
				table.rows().every(function() {
					// If row has details expanded
					if (this.child.isShown()) {
						// Collapse row details
						this.child.hide();
						$(this.node()).removeClass('shown');
					}
				});
			});
		});	   
   }

    
    
	function createDatatable() {

		table = new DataTable('#example', {
			'columns' : [ {
				'className' : 'details-control',
				'orderable' : false,
				'data' : null,
				'defaultContent' : ''
			} ],
		});
	}
	function ddlpymntType_change() {
 		$('#receivedAmount').attr('disabled', false);	
		 $("#receivedAmount").focus(); 
	}
	function receivedAmount_change(recvdAmount,caseAmount,pendingPayment) {
		var intrestPrncl = Number(caseAmount) + Number(pendingPayment);
		var inputDays = $('#txtInputDays').val();
		if (Number(recvdAmount) > intrestPrncl) {
			alert('Received Amount Is More Than Total Outstanding Balance.')
			$("#receivedAmount").val('');
			$('#txtInputDays').val(Math.floor(inputDays));
			$("#receivedAmount").focus();
			return;			
		}
		if ($("#LoanTypeId").val() == "6") {
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
	}
	function receivedAmount_keyUp () {
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
	function checkbox_click() {
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
		    if ($("#LoanTypeId").val() == "6") {
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
/* 	    if(txtInputDays ==0 && meterValidation == "0")  
		   {
		   $("#msgId").addClass("alert alert-danger");
		   $("#alertMsg").append(" Days Can't be Zero");
		   validation++;
		   $('#payBTNId').prop('disabled', false);

		   return false;
		   } */
		   if(pymntRcvdUpto ==0 || pymntRcvdUpto ==null || pymntRcvdUpto =="" && meterValidation == "0")
		   {
		   $("#msgId").addClass("alert alert-danger");
		   $("#alertMsg").append(" Please select  date.  ");
		   validation++;
		   $('#payBTNId').prop('disabled', false);

		   return false;
		   }
		  
/* 		    if(payementMode ==0 || payementMode ==null || payementMode == "")  
		   {
		   $("#msgId").addClass("alert alert-danger");
		   $("#alertMsg").append(" Please Select Payment Mode  ");
		   validation++;
		   $('#payBTNId').prop('disabled', false);

		   return false;
		   }  */
		    
		    if(meterValidation == "1") {
		    	if (newMeterEmi == "0" || newMeterEmi == null || newMeterEmi == "") {
	    		   $("#msgId").addClass("alert alert-danger");
	    		   $("#alertMsg").append(" Please Enter New Meter Amount  ");
	    		   validation++;
	    		   $('#txtNewMtrEmiAmt').focus();
	    		   $('#payBTNId').prop('disabled', false);
				    alert($("#alertMsg").html());	
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
			"loanIssueBy":$('#hdnLoginId').val(),
			"advEmiFlag":paymentType,
			"newMeterAmount":meterPrnclBal,
			"prevMeterBalInt":$('#txtMtrPrvBal').val(),
			"newMeterEmi":newMeterEmi,
			"loanTypeId":$("#LoanTypeId").val(),
			"customerId":customerId
		    } 

		   console.log(data)
		   
		   loanValidate(data);
		   $('#payBTNId').prop('disabled', false);
		
		   
	    }
		} else {
			$('#payBTNId').prop('disabled', false);
		}
	}
	function loanValidate(data) {
		$('#payBTNId').prop('disabled', true);
		   var xhr = new XMLHttpRequest();
		   xhr.open("POST", "https://ebiztradewebapp.azurewebsites.net/validate-payment-receipt", true);
		//  xhr.open("POST", "/ebizTradeWebApp/validate-payment-receipt", true);
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
	function savePaymentReceipt(data) {
		   var xhr = new XMLHttpRequest();
		   xhr.open("POST", "https://ebiztradewebapp.azurewebsites.net/create-new-payment-receipt", true);
		 //  xhr.open("POST", "/ebizTradeWebApp/create-new-payment-receipt", true);
		   xhr.setRequestHeader("Content-Type", "application/json");
		   xhr.onreadystatechange = function () {
		   if (xhr.readyState === 4 && xhr.status === 200) {
		       var responseData = JSON.parse(xhr.responseText);
		       console.log(responseData);
		       if (responseData.errorFlag == false) {
			       $("#msgId").addClass("alert alert-success");
				   $("#alertMsg").append(" Payment Received successfully  ");
				   alert($("#alertMsg").html());
				   
			       //paymentsucees++;
			       $('#receivedAmount').attr('disabled', true);
				   $('#pymntRecvdUptoDt').attr('disabled', true);
				   $('#ddlpymntType').attr('disabled', true);
				   $('input[name="pType"]').attr('disabled', 'disabled');
				   $('#txtInputDays').attr('disabled', true);		  
				   $('#payBTNId').attr('disabled', true);
				  // alert("Payment Received successfully");		   
				   autoLoanClose(data);	
				  // fillDataIntoGrid(srchData);
		       } else {
					alert(responseData.strMessage);
					$("#msgId").addClass("alert alert-danger");
					$("#alertMsg").append(responseData.strMessage);
		       }
		     }
		   };
			 xhr.send(JSON.stringify(data));	
		}	
	
	function autoLoanClose(data) {
		//$('#payBTNId').prop('disabled', true);
		   var xhr = new XMLHttpRequest();
		   xhr.open("POST", "https://ebiztradewebapp.azurewebsites.net/validate-loan-close", true);
		 //  xhr.open("POST", "/ebizTradeWebApp/validate-loan-close", true);
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
	
	 function calculateDaysAnddate(recvdAmount,inputDays) {
	     $('#txtInputDays').val(Math.floor(recvdAmount/caseEmiAmount));		   
		 setPaymentRecdDat();	 
	 }	
	 function isValidDate(s) {
		   
		   if (!isNaN(Date.parse(s))) {
			   return true;
		   } else {
			   return false;
		   }
		 }	 
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
 	  $(document).ready(function () {
 	     $("#payBTNId").one('click', function (event) {  
 	           event.preventDefault();
 	           //do something
 	           $(this).prop('disabled', true);
 	     });
 	}); 	 
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Customer</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
 <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css' rel='stylesheet'>
 <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>

<style>
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
	padding: 1px;
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
	padding-top: 25px;
}

}
.container h2 {
	text-align: center;
	margin-top: 10px;
	margin-bottom: 5px;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

.form-group input[type="text"], .form-group input[type="tel"],
	.form-group input[type="email"], .form-group textarea {
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

p {
	margin: 8px 25px 8px;
	font-size: 14px;
	text-align: right;
	font-weight: 600;
}

.sector {
	background-color: white;
	margin-top: 10px;
	width: auto;
	/*  border: 2px solid #6699ff; */
	padding: 5px;
}

.row {
	margin-right: 80px;
	margin-left: -15px;
	margin-top: 15px;
}

.filepond--root {
	width: 500px
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

.lblMsg {
	font-family: 'Open Sans', century gothic;
	font-size: 8Pt;
	font-variant: normal;
	color: Blue;
	font-weight: bold;
}

.info, .success, .warning, .error, .validation {
	border: 1px solid;
	margin: 10px 0px;
	padding: 15px 10px 15px 50px;
	background-repeat: no-repeat;
	background-position: 10px center;
}

.info {
	color: #00529B;
	background-color: #BDE5F8;
}

.success {
	color: #4F8A10;
	background-color: #DFF2BF;
}

.warning {
	color: #9F6000;
	background-color: #FEEFB3;
}

.error {
	color: #D8000C;
	background-color: #FFC2B2;
}
legend {
  border: 0;
}
</style>
<script type="text/javascript">
var GuaranteerId = "";
var CustomerId = "";
$(document).ready(function () {
	$('#divlblMsg').hide();
	$('#GuaranteerInfo').hide();
	if ("${sMode}" == "edit" || "${sMode}" == "view") {
		$('#userDataModel').modal('hide');
		$('#divSrch').hide();
		$('#infoLabelGurant').hide();
		$('#GuaranteerInfo').show();
		$("#txtCustomerName").val("${data.getName()}");
		$("#txtCustomerAdd").val("${data.getCurrent_address()}");
		$("#txtMobileNo").val("${data.getMobile_number()}");
		$("#txtArea").val("${data.getClient_Area()}");
	    $('#txtGuaranteerName').val("${data.getGuarantor_name()}"); 
	    $('#txtGuaranteerMobileNo').val("${data.getGuarantor_Mobile_No()}");
	    $('#txtGuaranteerArea').val("${data.getGuarantor_area()}");
	    $('#txtGuaranteerAdd').val("${data.getGuarantor_Address()}");	
	    GuaranteerId = "${data.getGuarantor_master_id()}";
	    CustomerId = "${data.getClient_id()}";
	    
		$('#txtGuaranteerName').attr('readonly', true);
		$('#txtGuaranteerMobileNo').attr('readonly', true);
		$('#txtGuaranteerAdd').attr('readonly', true);
		$('#txtGuaranteerArea').attr('readonly', true);	
		$('#txtCustomerName').attr('readonly', true);
		$('#txtArea').attr('readonly', true);
		$('#txtMobileNo').attr('readonly', true);
		$('#txtCustomerAdd').attr('readonly', true);	
		
		$('#btnSave').hide();
		if ("${sMode}" == "edit") {
			$('#txtGuaranteerMobileNo').attr('readonly', false);
			$('#txtGuaranteerAdd').attr('readonly', false);
			$('#txtGuaranteerArea').attr('readonly', false);		
			$('#txtArea').attr('readonly', false);
			$('#txtMobileNo').attr('readonly', false);
			$('#txtCustomerAdd').attr('readonly', false);
			$('#btnSave').show();
		}
		
	} else {
		$("#accordionGuaranteer").accordion({collapsible : true, active : 'none'});
		$('.accordion-toggle').on('click', function(event){
	        event.preventDefault();
	        // create accordion variables
	        var accordion = $(this);
	        var accordionContent = accordion.next('.accordion-content');
	
	        // toggle accordion link open class
	        accordion.toggleClass("open");
	        // toggle accordion content
	        accordionContent.slideToggle(250);
	
	    });
	}
	$("#txtMobileNo").on("change", function(){
		if ($("#txtMobileNo").val() != '') { 
			if (validatePhone(this.value) == false) {
				alert("Provided Mobile Number is Invalid, Please Input Correct Mobile Number");
				$("#txtMobileNo").val('');
				$("#txtMobileNo").focus();
			}			
		}
	});

	$("#txtGuaranteerMobileNo").on("change", function(){
		if ($("#txtGuaranteerMobileNo").val() != '') {
			if (validatePhone(this.value) == false) {
				alert("Provided Mobile Number is Invalid, Please Input Correct Mobile Number");
				$("#txtGuaranteerMobileNo").val('');
				$("#txtGuaranteerMobileNo").focus();
			}			
		}
	});	
	
	$("#userTable").on('click', '.radioUser', function() {
		  var currentRow=$(this).closest("tr"); 
		    var col1=currentRow.find("td:eq(0)").text(); // get current row 1st TD value
		    $('#userDataModel').modal('hide');
		    $('#GuaranteerInfo').show();
		    $('#txtGuaranteerName').val(currentRow.find("td:eq(1)").text()); 
		    $('#txtGuaranteerMobileNo').val(currentRow.find("td:eq(2)").text());
		    $('#txtGuaranteerArea').val(currentRow.find("td:eq(3)").text());
		    $('#txtGuaranteerAdd').val(currentRow.find("td:eq(3)").text());
		    $('#txtGuaranteerName').attr('readonly', true);
		    $('#txtGuaranteerMobileNo').attr('readonly', true);
		    $('#txtGuaranteerAdd').attr('readonly', true);
		    $('#txtGuaranteerArea').attr('readonly', true);
		    GuaranteerId = currentRow.find("td:eq(0)").text();
		    
	});	
});	


function validatePhone(txtPhone) {
    var a = txtPhone;
    var filter = /^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
    if (filter.test(a) && txtPhone.length <= 10) {
        return true;
    }
    else {
        return false;
    }
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

function validateSave() {
	if ($('#txtCustomerName').val() == "") {
		alert("Customer Name Can't be left Blank");
		$("#txtCustomerName").focus();
		return false;
	}
/* 	if ($('#txtMobileNo').val() == "") {
		alert("Customer MobileNo Can't be left Blank");
		$("#txtMobileNo").focus();
		return false;
	} */	
/* 	if ($('#txtCustomerAdd').val() == "") {
		alert("Customer Address Can't be left Blank");
		$("#txtCustomerAdd").focus();
		return false;
	}	 */	
	if ($('#txtArea').val() == "") {
		alert("Customer Area Can't be left Blank");
		$("#txtArea").focus();
		return false;
	}		
	if ($('#txtGuaranteerName').val() == "") {
		alert("Guaranteer Name Can't be left Blank");
		$("#txtGuaranteerName").focus();
		return false;
	}	
/* 	if ($('#txtGuaranteerMobileNo').val() == "") {
		alert("Guaranteer Mobile Can't be left Blank");
		$("#txtGuaranteerMobileNo").focus();
		return false;
	}	 */	
/* 	if ($('#txtGuaranteerAdd').val() == "") {
		alert("Guaranteer Address Can't be left Blank");
		$("#txtGuaranteerAdd").focus();
		return false;
	}	 */
	if ($('#txtGuaranteerArea').val() == "") {
		alert("Guaranteer Area Can't be left Blank");
		$("#txtGuaranteerArea").focus();
		return false;
	}		
}

function saveCustomerData() {
	$('#btnSave').prop('disabled', true);
   $('#divlblMsg').hide();
   $("#lblmsg").empty();
	if (validateSave() == false) {
		$('#btnSave').prop('disabled', false);
		return false;
	}
	if (confirm('Are you sure you want to save?')) {
	   var data= 
	    {
			 "name":$('#txtCustomerName').val(),
			 "current_address":$('#txtCustomerAdd').val(),
			 "mobile_number":$('#txtMobileNo').val(),
			 "guarantor_name":$('#txtGuaranteerName').val(),
			 "guarantor_Mobile_No":$('#txtGuaranteerMobileNo').val(),
			 "guarantor_area":$('#txtGuaranteerArea').val(),
			 "guarantor_master_id":GuaranteerId,
			 "guarantor_Address":$('#txtGuaranteerAdd').val(),
			 "client_Area":$('#txtArea').val(),
			 "sMode":"${sMode}",
			 "client_id":CustomerId
	    }	
	   console.log(data);
	   var xhr = new XMLHttpRequest();
	   xhr.open("POST", "https://ebiztradewebapp.azurewebsites.net/save-CustomerData", true);
	 //  xhr.open("POST", "/ebizTradeWebApp/save-CustomerData", true);
	   xhr.setRequestHeader("Content-Type", "application/json");

	   xhr.onreadystatechange = function () {
	     if (xhr.readyState === 4 && xhr.status === 200) {
	       var responseData = JSON.parse(xhr.responseText);
	       // Process the JSON response data received from the server
	       console.log(responseData);
	       if (responseData.strMessage != "Success") {
	    	   $('#divSrch').show();
			   $('#txtGuaranteerName').val(''); 
			   $('#txtGuaranteerMobileNo').val(''); 
			   $('#txtGuaranteerAdd').val('');	
			   $('#txtGuaranteerArea').val('');	
			   $('#GuaranteerInfo').show();
			   $('#divlblMsg').show();
			   $("#lblmsg").empty();
			   $("#lblmsg").append(responseData.strMessage);
			   $('#txtCustomerName').attr('readonly', true);
			   $('#txtArea').attr('readonly', true);
			   $('#txtMobileNo').attr('readonly', true);
			   $('#txtCustomerAdd').attr('readonly', true);
			   $('#txtGuaranteerName').attr('readonly', true);
			   $('#txtGuaranteerMobileNo').attr('readonly', true);
			   $('#txtGuaranteerArea').attr('readonly', true);
			   $('#txtGuaranteerAdd').attr('readonly', true);			   
			   $("#lblmsg").show();
			   $('#btnSave').hide();
	       } else {
			   $('#divlblMsg').show();
			   $("#lblmsg").empty();
			   $("#lblmsg").append('Record Saved Successfully!!!');
			   $("#lblmsg").show();
			   $('#txtCustomerName').attr('readonly', true);
			   $('#txtArea').attr('readonly', true);
			   $('#txtMobileNo').attr('readonly', true);
			   $('#txtCustomerAdd').attr('readonly', true);
			   $('#txtGuaranteerName').attr('readonly', true);
			   $('#txtGuaranteerMobileNo').attr('readonly', true);
			   $('#txtGuaranteerArea').attr('readonly', true);
			   $('#txtGuaranteerAdd').attr('readonly', true);
			   $('#btnSave').hide();
			   $('#divSrch').hide();	    	   
		       alert('Record Saved Successfully!!!');

	       }
	     }
	   };
	   $('#btnSave').prop('disabled', false);
	   xhr.send(JSON.stringify(data));				
	} 

}

function searchGuaranteer() {
		$('#userDataModel').modal('hide');
	   $('#GuaranteerInfo').hide();
	   $("#lblmsg").empty();
	   $("#lblmsg").hide();
	   var searchDataVal=$('#searchData').val();
	   if (searchDataVal == "") {
		   alert('Please Enter Text in Search Box');
		    $("#searchData").focus();
		   return false;
	   }
	   $('#divlblMsg').hide();
	   //alert('Please enter and search details'+searchDataVal)
	   $('#txtGuaranteerName').val(''); 
	   $('#txtGuaranteerMobileNo').val(''); 
	   $('#txtGuaranteerAdd').val('');

	   if(searchDataVal==null)
		   {alert('Please enter and search details')}
	   else
		   {
		   $("#ddlArea option[value='']").attr('selected', true);
		   /* $("#selLoanType option[value='']").attr('selected', true); */
		   $.ajax({
			//   url:'/ebizTradeWebApp/get-Guaranteer-srch',
			    url: 'https://ebiztradewebapp.azurewebsites.net/get-Guaranteer-srch',
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
			        	 $('#GuaranteerInfo').hide();
			        	 
			        	 $('#tblLnDtl').hide();
			        	//$('#optionData').show();
			        	$('#userTable').find("tr:gt(0)").remove();
				        	for(var i=0;i<data.length;i++){
				        	 $('#tbodyLoan').append(
				                        '<tr>'+
				                      '<td hidden>'+data[i].guarantor_master_id+'</td>'+
				                      '<td>'+data[i].guarantor_name+'</td>'+
				                      '<td>'+data[i].guarantor_Mobile_No+'</td>'+
				                      '<td>'+data[i].guarantor_area+'</td>'+
				                      '<td hidden>'+data[i].guarantor_Address+'</td>'+
				                      '<td><label class="radio-inline"> <input type="radio" class="radioUser" name="selectUser" value='+data[i].clientId+'>Yes </label></td></tr>');
				        	}
			        	}
			        else{
			        	alert('No details found');
			        	$('#userDataModel').modal('hide');
			        }
			       
			    },
			    error: function (error) {
			        console.log(error);
			    }
			});
		   }
	}
	function addNewData() {
		  $('#GuaranteerInfo').show();
		  $('#divSrch').hide();
		   $("#lblmsg").empty();
		   $("#lblmsg").hide();		  
		   $('#txtGuaranteerName').val(''); 
		   $('#txtGuaranteerMobileNo').val(''); 
		   $('#txtGuaranteerAdd').val('');	
		   $('#txtGuaranteerArea').val('');	
		   $('#searchData').val('');
		   $('#txtGuaranteerName').attr('readonly', false);
		    $('#txtGuaranteerMobileNo').attr('readonly', false);
		    $('#txtGuaranteerAdd').attr('readonly', false);
		    $('#txtGuaranteerArea').attr('readonly', false);
		    $('#GuaranteerInfo').show();
		    GuaranteerId = "";
	}

</script>
</head>
<body>
<jsp:include page="header.jsp"/>
	<div class="container">
		<div class="header">
			<h2>Customer Registration</h2>
		</div>
		<br>
		<form action="#" method="post">
				<fieldset class="border p-2">
				<legend class="float-none w-auto p-2">Customer Information</legend>				
				<div id="clientInfo">
					<div class="row">
						<div class="col-md-3">
							<p>Customer Name :</p>
						</div>
						<div class="col-md-3">
							<input type="text" id="txtCustomerName" class="form-control form-control-sm" placeholder="Customer Name"  />
						</div>
						<div class="col-md-3">
							<p>Mobile Number:</p>
						</div>
						<div class="col-md-3">
							
								<input type="text" id="txtMobileNo" class="form-control form-control-sm" onkeypress="return isNumber(event)" placeholder="Mobile Number" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-3" align="right">
							<p>Current Address:</p>
						</div>
						<div class="col-md-3">
							<input type="text"  id="txtCustomerAdd" class="form-control form-control-sm" placeholder="Address"/>
						</div>
						<div class="col-md-3" align="right">
							<p>Area:</p>
						</div>
						<div class="col-md-3">
						<input type="text"  id="txtArea" class="form-control form-control-sm" placeholder="Area"/>
					</div>						
					</div>
					<br>
				</div>
				</fieldset>
				
				<div class="accordion-container" id="accordionGuaranteer">
						
				    <a href="#" class="accordion-toggle" id="infoLabelGurant">Click To Fill Guaranteer Information</a>
				    
				    <div class="accordion-content">
     			<fieldset class="border p-2">
				<legend class="float-none w-auto p-2">Guaranteer Information</legend>
				<div class="row" id="divSrch">
					<div class="col-md-4">
						<b>Enter Name/Mobile No./Email Id/Registration Id :</b>
					</div>
					<div class="col-md-3">
						<input class="form-control" id="searchData" type="text" placeholder="Search..">
					</div>
					<div class="col-md-4">
						<button type="button" class="btn btn-primary" 
							onclick="searchGuaranteer()">Search</button>
						<button type="button" class="btn btn-primary" onclick="addNewData()">Add New</button>
					</div>
				</div>					
				<div id="GuaranteerInfo">
					<div class="row">
						<div class="col-md-3">
							<p>Guaranteer Name :</p>
						</div>
						<div class="col-md-3">
							<input type="text" id="txtGuaranteerName" class="form-control form-control-sm" />
						</div>
						<div class="col-md-3">
							<p>Mobile Number:</p>
						</div>
						<div class="col-md-3">
							
								<input type="text" id="txtGuaranteerMobileNo" onkeypress="return isNumber(event)" class="form-control form-control-sm" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-3" align="right">
							<p>Address:</p>
						</div>
						<div class="col-md-3">
							<input type="text"  id="txtGuaranteerAdd" class="form-control form-control-sm" />
						</div>
						<div class="col-md-3" align="right">
							<p>Area:</p>
						</div>
						<div class="col-md-3">
						<input type="text"  id="txtGuaranteerArea" class="form-control form-control-sm" />
					</div>						
					</div>					
				</div>
				
				</fieldset>
				    </div>
				   
				</div>				
				
				<div class="row">
				    <div class="col-md-12 offset-2 info warning" id="divlblMsg" align="center">
				       <label id="lblmsg" class="lblMsg"></label>
				    </div>
				</div>	
				<div class="row">
				<div class="col-md-6 offset-3"></div>
						<div class="col-md-4 offset-6">
							<button type="button" class="btn btn-primary" id="btnSave" onclick="saveCustomerData()">Save</button>
							<button type="button" class="btn btn-danger" onclick="window.location.href='https://ebiztradewebapp.azurewebsites.net/Customer'">Close</button>
						</div>
					</div>
				
				

		</form>
	</div>
			<div class="modal fade" id="userDataModel" tabindex="-1"
				role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">
								<b>Select Any One Borrower</b>
							</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div id=optionData>
								<table border="1" class="table table-hover" id="userTable">
									<thead class="thead-dark" id='tHead'>
										<tr>
											<th hidden>id</th>
											<th>Gauranter Name</th>
											<th>Gauranter Mobile</th>
											<th>Area</th>
											<th>Select One</th>
										</tr>
									</thead>
									<tbody id='tbodyLoan'>

									</tbody>
								</table>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>	
<jsp:include page="footer.jsp" />
</body>
</html>
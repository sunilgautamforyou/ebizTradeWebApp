<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Remove Loan Data</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
 <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css' rel='stylesheet'>
 <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>
<style type="text/css">
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
    margin-left: 15px;
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
@media only screen and (max-width: 768px) {
 
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
<jsp:include page="header.jsp"/>
<%
	String name=session.getAttribute("pkey").toString().split("_")[0].split("\\.")[0];
%>
<div class="container">
	<div id="msgId">
		<h4 id="alertMsg"></h4>
		<input type="hidden" id="hdnLoginId" name="hdnLoginId" value="<% out.print(name.substring(0, 1).toUpperCase()+name.substring(1)); %>" />
	</div>
	<div id="wait" style="display: none" align="center">
    	<img src="https://ebiztradewebapp.azurewebsites.net/resources/images/loading_blue2.gif" width="45" height="45" alt="Loading..." />
	</div>  	
	<br>
	 <div class="row" id="searhBox">
	  <div class="col-md-1"></div>
	 <div class="col-md-4">
	 <b>Enter Name/Mobile No./Email Id :</b>
	 </div>
    <div class="col-md-4">
      <input class="form-control" id="searchData" type="text" placeholder="Enter Details......">
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
<div class="row">
	<!-- <div class="col-md-4"></div> -->
	<div id="loanDtlDiv" class="col-md-12" align="center" hidden="true">
		<table id="loanDtl" class="table table-striped table-bordered nowrap"
			style="width: 100%">
			<thead id='tHead'>
				<tr>
					<th hidden="true">id</th>
					<th>Borrower Name</th>
					<th>Case Date</th>
					<th>Case Number</th>
					<th>Case Amount</th>
					<th>Select One</th>
				</tr>
			</thead>
			<tbody id='tbodyLoanDtl'>
	
			</tbody>
		</table>
	</div>
</div>
<div class="row">
	<div id="DivLoanPymntDat" class="col-md-12" align="center" hidden="true">
		<table id="LoanPymntDat" class="table table-striped table-bordered nowrap"
			style="width: 100%">
			<thead id='tHead'>
				<tr>
					<th hidden="true">LoanId</th>
					<th>Borrower Name</th>
					<th>Case No</th>
					<th>Case Date</th>
					<th>Case Amount</th>
					<th>Case EMI</th>
					<th>Pending Amount</th>
					<th>Action</th>
			</tr>
			</thead>
			<tbody id='tbodyLoanPymntDat'>
	
			</tbody>
		</table>
	</div>
</div>
<div class="row">
	<div id="DivPymnRcvdDat" class="col-md-12" align="center" hidden="true">
		<table id="pymntRcvdDat" class="table table-striped table-bordered nowrap"
			style="width: 100%">
			<thead id='tHead'>
				<tr>
					<th hidden="true">PaymentRecvdId</th>
					<th>Received By</th>
					<th>Received Date</th>
					<th>Payment Type</th>
					<th>Received Amount</th>
					<th>Action</th>
			</tr>
			</thead>
			<tbody id='tbodyPymnRcvdDat'>
	
			</tbody>
		</table>
	</div>
</div>
</div>
<jsp:include page="footer.jsp" />
</body>
<script type="text/javascript">
var clientId;
var delLoanDataBtn,delPymntRecvdBtn;
	function searchBarrowerData() {
		$("#msgId").removeClass("alert alert-danger");
		$("#alertMsg").html("");
		//$('#loanInfo').hide();
		$('#tbodyLoan').html('');
		$('#tbodyLoanDtl').html('');
		$('#tbodyLoanPymntDat').html('');
		$('#tbodyPymnRcvdDat').html('');
		$('#loanDtlDiv').hide();
		$('#DivLoanPymntDat').hide();
		$('#DivPymnRcvdDat').hide();
		var searchDataVal = $('#searchData').val();
		if (searchDataVal == null || searchDataVal == "") {
		} else {
			$.ajax({
		 	   url : 'https://ebiztradewebapp.azurewebsites.net/get-barrower-loan-pymnt-list',
			 //  url: '/ebizTradeWebApp/get-barrower-loan-pymnt-list',
				type : 'Post',
				contentType : 'application/json',
				data : JSON.stringify({
					"searchVarData" : searchDataVal
				}),
				success : function(data) {
					console.log(data);
					if (data.length != 0) {
						$('#userDataModel').modal('show');
						//$('#optionData').show();
						for (var i = 0; i < data.length; i++) {
							$('#tbodyLoan').append(
								'<tr>'
								+ '<td hidden>' + data[i].clientId + '</td>'
								+ '<td>' + data[i].name + '</td>'
								+ '<td>' + data[i].granterName + '</td>'
								+ '<td>' + data[i].area + '</td>'
								+ '<td><label class="radio-inline"> <input type="radio" class="radioUser" name="selectUser" value='+data[i].clientId+'>Yes </label></td></tr>');
						}
					} else {
						$("#msgId").addClass("alert alert-danger");
						$("#alertMsg").append("No details are available on given details. ");
					}
				},
				error : function(error) {
					console.log(error);
				}
			});
		}
	}
	
	$("#userTable").on('click','.radioUser',function(){
	       var currentRow=$(this).closest("tr"); 
	       clientId=currentRow.find("td:eq(0)").text(); // get current row 1st TD value
	       $('#loanDtlDiv').hide();
	       $('#userDataModel').modal('hide');
	       $('#tbodyLoanDtl').html();
	       $.ajax({
	    	 //  url: '/ebizTradeWebApp/InActive-CustWise-LoanPymntData',
	    	   url: 'https://ebiztradewebapp.azurewebsites.net/InActive-CustWise-LoanPymntData',
	    	   type: 'Post',
	    	   contentType: 'application/json',
	    	   data: JSON.stringify(
   			   {
 		    	"clientId":clientId,
 		    	"searchVarData":"A"
  			  }),
  			success: function (data) {
  				if(data.length!=0) {
  					$('#loanDtlDiv').show(); 
  					for (var i = 0; i < data.length; i++) {
					$('#tbodyLoanDtl').append(
							'<tr>'
							+ '<td hidden>' + data[i].loanId + '</td>'
							+ '<td>' + data[i].clientName + '</td>'
							+ '<td>' + data[i].loanDate + '</td>'
							+ '<td>' + data[i].loanNmber + '</td>'
							+ '<td>' + data[i].loanAmount + '</td>'
							+ '<td><label class="radio-inline"> <input type="radio" class="radioUser" name="selectLoan" value='+data[i].loanId+'>Select </label></td></tr>');
	    			
  					}
  				} else {
	    			$('#loanDtlDiv').hide();
	    			$("#msgId").addClass("alert alert-danger");
					$("#alertMsg").append("No details are available on given details. ");
	    		}
  			},
		     error: function (error) {
	          console.log(error);
		    }
	       });
	});	
	
	$("#loanDtl").on('click','.radioUser',function(){
		var currentRow=$(this).closest("tr"); 
		var col1=currentRow.find("td:eq(0)").text(); // get current row 1st TD value
		$('#tbodyLoanPymntDat').html();
		$.ajax({
			//url: '/ebizTradeWebApp/InActive-CustWise-LoanPymntData',
			url: 'https://ebiztradewebapp.azurewebsites.net/InActive-CustWise-LoanPymntData',
	    	   type: 'Post',
	    	   contentType: 'application/json',
	    	   data: JSON.stringify(
   			   {
 		    	"clientId":clientId,
 		    	"loanId":col1,
 		    	"searchVarData":"A"
  			  }),
   			success: function (data) {
   				$('#DivLoanPymntDat').show();
   				$('#loanDtlDiv').hide();
   				if(data.length!=0) {
   					for (var i = 0; i < data.length; i++) {
   						delLoanDataBtn = '<button type="button" class="btn btn-danger btn-sm" disabled id="delLnbtn" onclick=delPaymentRecvd('+data[i].loanId+',"","pymnt")>Delete</button>';
 	   					$('#tbodyLoanPymntDat').append(
 	   						'<tr>'
 	   						+ '<td hidden>' + data[i].loanId + '</td>'
 	   						+ '<td>' + data[i].clientName + '</td>'
 	   			        	+ '<td>'+data[i].loanNmber +'</td>'
 	   			        	+ '<td>'+data[i].loanDate +'</td>'
 	   			        	+ '<td>'+data[i].loanAmount+'</td>'
 	   			        	+ '<td>'+data[i].emiAmount +'</td>'
 	   			        	+ '<td>'+data[i].pendingAmount+'</td>'
 	   						+ '<td>'+ delLoanDataBtn +'</td></tr>');
   					}
   					getPymntRecvdDat(col1);
   				} else {
	    			$('#DivLoanPymntDat').hide();
	    			$("#msgId").addClass("alert alert-danger");
					$("#alertMsg").append("No details are available on given details. ");
	    		}
   			},
		     error: function (error) {
	          console.log(error);
		    }
		});
	});
	
	function getPymntRecvdDat(loanId) {
		$('#tbodyPymnRcvdDat').html('');
		$.ajax({
			//url: '/ebizTradeWebApp/InActive-PymntRecvdData',
			url: 'https://ebiztradewebapp.azurewebsites.net/InActive-PymntRecvdData',
	    	   type: 'Post',
	    	   contentType: 'application/json',
	    	   data: JSON.stringify(
			   {
		    	"loanId":loanId
			  }),
			  success: function (data) {
				  if(data.length!=0) {
					  $('#DivPymnRcvdDat').show();
					  for (var i = 0; i < data.length; i++) {
						  if ((i+1) == data.length) {
							  delPymntRecvdBtn = '<button type="button" class="btn btn-danger btn-sm" style="display:block" id="delPymntBtn" onclick=delPaymentRecvd('+data[i].loanId+','+ data[i].pymntRecevingId +',"recvd")>Delete</button>';  
						  } else {
							  delPymntRecvdBtn = '<button type="button" class="btn btn-danger btn-sm" hidden="true" style="display:none" id="delPymntBtn" onclick=delPaymentRecvd('+data[i].loanId+','+ data[i].pymntRecevingId +',"recvd")>Delete</button>';
						  }
						  
 	   					$('#tbodyPymnRcvdDat').append(
 	 	   						'<tr>'
 	 	   						+ '<td hidden>' + data[i].pymntRecevingId + '</td>'
 	 	   						+ '<td>' + data[i].loanIssueBy + '</td>'
 	 	   			        	+ '<td>'+data[i].pymntRecevingDateTime +'</td>'
 	 	   			        	+ '<td>'+data[i].loanType +'</td>'
 	 	   			        	+ '<td>'+data[i].rcvd_amt+'</td>'
 	 	   						+ '<td>'+ delPymntRecvdBtn +'</td></tr>');
					  }
				  } else {
					 //delLoanDataBtn = '<button type="button" class="btn btn-danger btn-sm" id="delLnbtn")>Delete</button>'; 
					 $('#delLnbtn').removeAttr('disabled');
  					 alert('No Payment Receipt Available!!! You Can Now Delete the Issued Case')
  					$('#DivPymnRcvdDat').hide();
				  }
			  },
 		      error: function (error) {
	      	    console.log(error);
		     }
		});
	}
    function delPaymentRecvd(loanId,pymntId,queryType) {
    	if (confirm('Are you sure you want to Delete?')) {
    		var xhr = new XMLHttpRequest();
    		var data = {
    			"loanIssueBy":$('#hdnLoginId').val(),
    			"loanId":loanId,
    			"pymntRecevingId":pymntId,
    			"customerId":clientId,
    			"queryType":queryType
    		}
        	//xhr.open("POST", "/ebizTradeWebApp/InActive-Del-pymntRecvd", true);
    		xhr.open("POST", "https://ebiztradewebapp.azurewebsites.net/InActive-Del-pymntRecvd", true);
        	xhr.setRequestHeader("Content-Type", "application/json");
        	xhr.onreadystatechange = function () {
        		if (xhr.readyState === 4 && xhr.status === 200) {
        			var responseData = JSON.parse(xhr.responseText);
        			if (responseData.errorFlag == false) {
        				    alert(responseData.strMessage);
        					if (queryType == "recvd") {
        						getPymntRecvdDat(loanId);	
        					} else if (queryType == "pymnt") {
        						$('#delLnbtn').attr('disabled','disabled');
								$('#tbodyLoanPymntDat').html('');
        						$('#DivLoanPymntDat').hide();
        					}
        			} else if (responseData.errorFlag == true) {
        				alert(responseData.strMessage);
    	    			$("#msgId").addClass("alert alert-danger");
    					$("#alertMsg").append(responseData.strMessage);
        			}
        		}
        	};   
        	xhr.send(JSON.stringify(data));
    	}
    }
	$(document).ready(function () { 
		 $(document).ajaxStart(function () {
		        $('#wait').show();
		    });
		    $(document).ajaxStop(function () {
		        $('#wait').hide();
		    });
		    $(document).ajaxError(function () {
		        $('#wait').hide();
		    });   
		});    
</script>

</html>
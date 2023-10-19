<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">


<%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
 <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css' rel='stylesheet'> 
 <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>     
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"/>
 --%>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
     <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css' rel='stylesheet'>
          <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>
      
  
</head>

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
	margin-top:15px;
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
</style>
<script type="text/javascript">


var lnTypeIdMap = new Map();
 function searchBarrowerData(){
	   $('#loanInfo').hide();
	   var searchDataVal=$('#searchData').val();
	   if (searchDataVal == "") {
		   alert('Please Enter Text in Search Box');
		    $("#searchData").focus();
  		   return false;
	   }
	   $('#divlblMsg').hide();
	   alert('Please enter and search details'+searchDataVal)
	   $('#customerName').val(''); 
	   $('#txtLoanType').val(''); 
	    $('#customerName').attr('readonly', true);
	    $('#txtLoanType').attr('readonly', true);
	   if(searchDataVal==null)
		   {alert('Please enter and search details')}
	   else
		   {
		   $("#loanNo option[value='']").attr('selected', true);
		   /* $("#selLoanType option[value='']").attr('selected', true); */
		   $.ajax({
			    url: 'https://ebiztradewebapp.azurewebsites.net/get-pymntRcvd-srch',
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
			        	 $('#loanInfo').hide();
			        	 
			        	 $('#tblLnDtl').hide();
			        	//$('#optionData').show();
			        	$('#userTable').find("tr:gt(0)").remove();
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
			        	alert('No details found');
			        }
			       
			    },
			    error: function (error) {
			        console.log(error);
			    }
			});
		   }
   }

   $(document).ready(function() {	
	   $('#loanInfo').hide();
	   $('#divlblMsg').hide();
	   document.getElementById("pymntRecvdUptoDt").readOnly = true;
	   $( function() {
		    $( "#pymntRecvdUptoDt" ).datepicker({
		    	dateFormat:'dd/MM/yy'
		       
		       
			});
		  } );
	   
	   /* $( function() {
		    $( "#pymntRecvdUptoDt" ).datepicker({
		    	dateFormat:'dd/MM/yy',
			 minDate: '-0d',
			 changeMonth: true,
             changeYear: true
			});
		    $("#pymntRecvdUptoDt").datepicker("setDate", new Date());
		  } ); */
	   
	   $("#txtInputDays").on("change", function(){
		   var date = new Date($("#pymntRecvdUptoDt").val()),
           days = parseInt($("#txtInputDays").val(), 10);
		   
	        if(!isNaN(date.getTime())){
	            date.setDate(date.getDate() + days);
	          //  alert(date);
	            $("#pymntRecvdUptoDt").val(toInputFormat(date));
	        } else {
	            alert("Invalid Date");  
	        }		   
		   

		 });	   

	   $('#loanNo').on('change', function() {
	    	loanId=this.value;
	    	$('#divlblMsg').hide();
	    	var loanTypeTxt=$('#loanNo option:selected').html();
	    	if(loanId!=0){
				   $.ajax({
					    url: 'https://ebiztradewebapp.azurewebsites.net/get-barrower-loan-pymntRcvd-data',
					    type: 'POST',
					    contentType: 'application/json',
						   data: JSON.stringify(
						    {
						    "loanId":loanId,
						    "sMode":"EmiRecvd-LoanDtl"
						    }),
					    success: function (data) {
					        console.log(data);
					        if(data.length!=0) {
					        	$('#tblLnDtl').find("tr:gt(0)").remove();
					        	$('#tblLnDtl').show();
					        	for(var i=0;i<data.length;i++){
					        		if (i == 0) {
					        			/* $('#selLoanType option[value='+data[i].loanTypeId+']').attr('selected','selected'); */
					        			$('#txtLoanType').val(data[0].loanType); 
					        			$('#txtLoanType').attr('readonly', true);
					        			//$("#tblLnDtl").find("tr.someClass").first().children("th:nth-child41)").text(data[0].loanType + " Amount");
					        			$("#tblLnDtl tr.someClass").eq(0).children("th").eq(3).text(data[0].loanType + " Amount");
				        		}
					        		$('#loanDtlBody').append(
					        			'<tr>'+
				        				 '<td>'+data[i].loanDate+'</td>'+
				        				 '<td>'+numberWithCommas(data[i].loanAmount)+'</td>'+
				        				 '<td>'+data[i].loanTenure+'</td>'+
				        				 '<td>'+data[i].emiAmount+'</td>'+
				        				 '<td>'+numberWithCommas(data[i].rcvd_amt)+'</td>'+
				        				 '<td>'+data[i].noOfTimePymntRecvd+'</td>'+
				        				 '<td>'+data[i].rvcd_till_date+'</td>'+
				        				 '<tr>'
			        				 );
					        	}
					        }

					    },
					    error: function (error) {
					        console.log(`Error ${error}`);
					    }
					});	    		
	    	}
	    });
		$("#userTable").on('click', '.radioUser', function() {
			  var currentRow=$(this).closest("tr"); 
			    var col1=currentRow.find("td:eq(0)").text(); // get current row 1st TD value
			    $('#userDataModel').modal('hide');
			    $('#loanNo').html("");
			    $('#selLoanType').html("");
			    $.ajax({
					    url: 'https://ebiztradewebapp.azurewebsites.net/get-barrower-loan-pymntRcvd-data',
					    type: 'Post',
					    contentType: 'application/json',
					   data: JSON.stringify(
					    {
					    "clientId":col1,
					    "loanTypeId":col1,
					    "sMode":"EmiRecvd-DataFill"
					    }),
					    success: function (data) {
					        console.log(data);
					        if(data.length!=0)
					        	{
					        	$('#searchData').val('');
					        	 $('#loanInfo').show();
					        	  $('#customerName').val(data[0].clientName); 
					        	  $('#customerName').attr('readonly', true);
					        	  $('#loanNo').append('<option value=0>--Please Select --</option>');
					        	  $('#selLoanType').attr('disabled', true);
					 	        for(var i=0;i<data.length;i++){
						        	 lnTypeIdMap.set(data[i].loanTypeId,data[i].loanId);
 					 	        	 $('#loanNo').append('<option value='+data[i].loanId+'>'+data[i].loanNmber+'</option>');
						        	 
/*  					 	        	 if ( $("#selLoanType option[value='" + data[i].loanTypeId + "']").val() === undefined) 
						        	 { 
						        		 $('#selLoanType').append('<option value='+data[i].loanTypeId+'>'+data[i].loanType+'</option>');
						        	 }
 */						        }		        	 
					 	          $('#divSrch').hide();
					        	}
					        else{
					        	alert('No details found');
					        }
					       
					    },
					    error: function (error) {
					        console.log(error);
					    }
					})
		});
		
 		 $('#ddlpymntType').on('change', function() {
 			$('#divlblMsg').hide();
		}); 
		
	}); 
    
   function saveLoanData() {
	   if (validate() == false) {
		   return;
	   }
	   
	   var loanId=$('#loanNo').val();
	   var recvdAmt=$('#receivedAmount').val();
	   var pymntRcvdUpto=$('#pymntRecvdUptoDt').val();
	   var paymentType=$('#ddlpymntType').val();
	   var data= 
	    {
		"loanId":loanId,
		"rcvd_amt":recvdAmt, 
		"rvcd_till_date":pymntRcvdUpto,
		"loanIssueBy":1,
		"advEmiFlag":paymentType
	    }
	   console.log(data)
	   
	   var xhr = new XMLHttpRequest();
	   xhr.open("POST", "https://ebiztradewebapp.azurewebsites.net/create-new-payment-receipt", true);
	   xhr.setRequestHeader("Content-Type", "application/json");

	   xhr.onreadystatechange = function () {
	     if (xhr.readyState === 4 && xhr.status === 200) {
	       var responseData = JSON.parse(xhr.responseText);
	       // Process the JSON response data received from the server
	       console.log(responseData);
		   $('#divlblMsg').show();
		   $("#lblmsg").empty();
		   $("#lblmsg").append(" Saved Successfully !!! ");
		   $('#btnSave').hide();

		   
	     }
	   };

	   xhr.send(JSON.stringify(data));	   
	   
   }
   
   function validate() {
	   if ($('#loanNo').val() == "0") {
		   $('#divlblMsg').show();
		   $("#lblmsg").empty();
		   $("#lblmsg").append("-- Please Select the Loan --");
		   $('#loanNo').show().focus().click();
		   return false;
	   }
	   if ($('#ddlpymntType').val() == "0") {
		   $('#divlblMsg').show();
		   $("#lblmsg").empty();
		   $("#lblmsg").append("-- Please Select the Payment Type --");
		   $('#ddlpymntType').show().focus().click();
		   return false;
	   }
	   
	   if ($('#receivedAmount').val() == "") {
		   $('#divlblMsg').show();
		   $("#lblmsg").empty();
		   $("#lblmsg").append("-- Please Enter the Receipt Amount --");
		   $('#receivedAmount').show().focus().click();
		   return false;
	   }
	   
	   if ($('#receivedAmount').val() == "0") {
		   $('#divlblMsg').show();
		   $("#lblmsg").empty();
		   $("#lblmsg").append("-- Receipt Amount Should be Greator then Zero --");
		   $('#receivedAmount').show().focus().click();
		   return false;
	   }
	   
	   if ($('#txtInputDays').val() == "") {
		   $('#divlblMsg').show();
		   $("#lblmsg").empty();
		   $("#lblmsg").append("-- Please Enter the Days --");
		   $('#txtInputDays').show().focus().click();
		   return false;
	   }	   
	   
	   if ($('#txtInputDays').val() == "0") {
		   $('#divlblMsg').show();
		   $("#lblmsg").empty();
		   $("#lblmsg").append("-- Days Can't be Zero --");
		   $('#txtInputDays').show().focus().click();
		   return false;
	   }		   
   }
   
   function hideMsgDiv() {
	   $('#divlblMsg').hide();
   }

   function numberWithCommas(x) {
	    return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
	} 
   function toInputFormat(date) {
	   var yyyy = date.getFullYear().toString();
       var mm = (date.getMonth()+1).toString(); // getMonth() is zero-based
       var dd  = date.getDate().toString();
       // return yyyy + "-" + (mm[1]?mm:"0"+mm[0]) + "-" + (dd[1]?dd:"0"+dd[0]);
       return (dd[1]?dd:"0"+dd[0]) + '/' + getMonthName((mm[1]?mm:"0"+mm[0])) + '/' + yyyy;
       
   }
   function getMonthName(monthNumber) {
	   const date = new Date();
	   date.setMonth(monthNumber - 1);

	   return date.toLocaleString('en-US', { month: 'long' });
	 }   
   
</script>


<body>
<jsp:include page="header.jsp" />
	<div class="container">
		<div class="header">
			<h2>Payment Receipt (New)</h2>
		</div>
		<br>
		<form action="#" method="post">
	
			<div class="row" id="divSrch"> 
				<div class="col-md-2"></div> 
				<div class="col-md-4">
					<b>Enter Name/Mobile No./Email Id/Registration Id :</b>
				</div>
				<div class="col-md-3">
					<input class="form-control" id="searchData" type="text"
						placeholder="Search..">
				</div>
				<div class="col-md-2">
					<button type="button" class="btn btn-primary" data-target="#userDataModel" onclick="searchBarrowerData()">Search</button>
				</div>
				</div>
			<!-- ---user Data model -->
			
				<div class="modal fade" id="userDataModel" tabindex="-1" role="dialog">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title"><b>Select Any One Borrower</b></h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
						<div id=optionData>
							<table border="1" class="table table-hover" id="userTable">
								<thead class="thead-dark" id='tHead'>
									<tr>
										<th hidden>id</th>
										<th>Borrower Name</th>
										<th>Guarantor Name</th>
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
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
				</div>			
				<div id="loanInfo">
					<div class="row">
						<div class="col-md-3">
							<p>Case Number :</p>
						</div>
						<div class="col-md-3">
							<select class="form-control" id="loanNo" aria-label="Default select example"></select>
						</div>
						<div class="col-md-3">
							<p>Case Type :</p>
						</div>
						<div class="col-md-3">
							
								<input type="text" id="txtLoanType" class="form-control form-control-sm" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-3" align="right">
							<p>Customer Name:</p>
						</div>
						<div class="col-md-3">
							<input type="text" id="customerName" class="form-control form-control-sm" />
						</div>
						<div class="col-md-3" align="right">
							<p>Case Type:</p>
						</div>
						  <div class="col-md-3">
<!--    				         <label class="radio-inline">
					      <input type="radio" name="optradio" id ='optradio' checked>Interest
					    </label>
					    <label class="radio-inline">
					      <input type="radio" name="optradio" id ='optradio' name="optradio">Principle
					    </label>
					    <label class="radio-inline">
					      <input type="radio" name="optradio" id ='optradio' name="optradio"> AdvanceEmi
					    </label> -->	
					      <select id="ddlpymntType" class="form-control"
								aria-label="Default select example"> 
								<option value="0" selected="selected">-- Select Payment Type --</option>
								<!-- <option value="2">Interest</option> -->
								<option value="3">Principle</option>
								<option value="1">Advance-EMI</option>								
						</select>				    
					  </div>
					</div>
					<br>
					<div class="tableRow">
						<div class="col-md-12">
							<table class="table" border="1" id="tblLnDtl">
								<thead>
									<tr >
										<th>Case Date</th>
										<th>Case Amount</th>
										<th>Case Tenure</th>
										<th>Daily Amount</th>
										<th>Total Received</th>
										<th>Payment Received In (Days)</th>
										<th>Last Received Date</th>
										
									</tr>
								</thead>
								<tbody id="loanDtlBody">
								</tbody>
							</table>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3" align="right"><p>Amount:</p></div>
						<div class="col-md-3" align="left"><input type="text" id="receivedAmount" 
						class="form-control form-control-sm" onkeyup="hideMsgDiv()" /></div>
						<div class="col-md-3" align="right">
							<p>Receipt Type:</p>
						</div>
						<div class="col-md-3">
							<select class="form-control" aria-label="Default select example">
								<option>Cash</option>
								<option>Online</option>
							</select>
						</div>						
					</div>
				<div class="row">
						<div class="col-md-3" align="right">
							<p>Days:</p>
						</div>
						<div class="col-md-3">
							<input class="form-control form-control-sm" id="txtInputDays" onkeyup="hideMsgDiv()"
								type="text" />
						</div>				
							<div class="col-md-3" align="right">Receipt Upto Date:</div>
						<div class="col-md-3" align="left">
							<input type="text" id="pymntRecvdUptoDt" class="form-control form-control-sm" type="date" />
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
							<button type="button" class="btn btn-primary" id="btnSave" onclick="saveLoanData()">Save</button>&nbsp &nbsp
							<button type="button" class="btn btn-danger" onclick="window.location.href='/ebizTradeWebApp/showPymntRecvd'">Close</button>
						</div>
					</div>
				</div>
		</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>

</html>
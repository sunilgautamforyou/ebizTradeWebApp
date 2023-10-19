
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
</style>



<body>

   <jsp:include page="header.jsp"/>
<div class="container">
  
	<div id="msgId">
    <h4 id="alertMsg"></h4>
  </div>
     <br>
	 <div class="row" id="searhBox">
	  <div class="col-md-1"></div>
	 <div class="col-md-4">
	 <b>Enter Name/Mobile No./Email Id/Registration Id :</b>
	 </div>
    <div class="col-md-4">
      <input class="form-control" id="searchData" type="text" placeholder="Enter Details......">
	  </div>
	  <div class="col-md-2">
    <button type="button" class="btn btn-primary searchBtn" data-target="#userDataModel"  onclick="searchBarrowerData()">Search</button>
	  
	  </div>
	 
   </div>
   <div id=loanInfo>
    <div class="row">
    <div class="col-md-3">
	<p>Borrower Name :</p>
	  </div>
	  <div class="col-md-3">
      <input class="form-control" id="borrowerName" type="text" >
	  </div>
	   <div class="col-md-3">
      <p>Gauranter Name :</p>
	  </div>
	  <div class="col-md-3">
      <input class="form-control" id="gauranterName" type="text" >
     
	  </div>
	 
  </div>
  
   <div class="row">
   <div class="col-md-3">
	<p>Loan Type :</p>
	  </div>
	  <div class="col-md-3">
     <select class="form-control" id="loanTypeDrop" aria-label="Default select example">
 
</select>
	  </div>
	  <div class="col-md-3">
	<p>Loan Amount :</p>
	  </div>
	  <div class="col-md-3">
      <input class="form-control" id="loanAmount" type="text" onkeypress="return isNumber(event)" >
	  </div>
  </div>
 <div class="row">
    
	  <div class="col-md-3">
	<p id="NoOfDaysTxt">No of Days :</p>
	  </div>
	  <div class="col-md-3">
      <input class="form-control" id="noOfDays" type="text" onkeypress="return isNumber(event)">
	  </div>
	   <div class="col-md-3">
       <p id="dailyPaymentTxt">Daily Payment :</p>
	  </div>
	  <div class="col-md-3">
      <input class="form-control" id="dailyPayment" type="text" >
     
	  </div>
  </div>
  
  
  

   <div class="row">
    
	  <div class="col-md-3">
      <p>Total Amount :</p>
	  </div>
	  <div class="col-md-3">
      <input class="form-control" id="totalAmount" type="text">
	  </div> 
	   <div class="col-md-3">
      <p>Loan Date :</p>
	  </div>
	  <div class="col-md-3">
      <input class="form-control" id="loanDate" type="text" placeholder='Please select date'>
     
	  </div>
  </div>

 
  
   <div class="row">
   
   <div class="col-md-4">
    </div>
	<div class="col-md-1">
     <button  type="button" class="btn btn-primary"  id='saveAmount' onclick="saveLoanData()">Save Record</button>

   </div>
   <div class="col-md-1">
     <button  type="button" class="btn btn-primary"  id='closeAmount' onclick="closeLoanData()">Close Record</button>

   </div>
  </div>
  </div>
 <!---closing table  -->
 
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
       <!--  <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">View Details</button>
        </div> -->
      </div>
     
    </div>
  </div>  
  
  
  
  <!-- ---file Data model -->
   <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Select Files</h4>
        </div>
        <div class="modal-body">
         <input type="file" 
       class="filepond"
       name="filepond"
       multiple
       data-max-file-size="3MB"
       data-max-files="3" />
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Upload</button>
        </div>
      </div>
     
    </div>
  </div>  
   
	
	
	
	
</div>
<jsp:include page="footer.jsp" />
</body>
<script type="text/javascript">
$('#loanInfo').hide();
var clientId;

var loanTypeId=0;
document.getElementById("loanDate").readOnly = true;

document.getElementById("totalAmount").readOnly = true;
var LoanIdObj=$('#loanIdObj').val();
var loanAction=$('#loanAction').val();
//alert(LoanIdObj);
var loanAmnt=0;
var noOfdays=0;
var dailyPayment=0;
var paymentRecieved=0;
var advancePayment=0;
var balaceAmnt=0;
var totalamount=0;

 
 $('#noOfDays').attr('readonly', true);
 $('#loanAmount').attr('readonly', true);
 $('#dailyPayment').attr('readonly', true);
$( function() {
    $( "#loanDate" ).datepicker({
    	dateFormat:'dd/MM/yy'
       
       
	});
  } );
$("#loanDate").datepicker("setDate", new Date());
/* $( function() {
    $( "#nextPaymentDate" ).datepicker({
	dateFormat:'dd-MMM-yyyy',
	 minDate: '-0d'
	});
  } );
   */

  function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
  //only Decimal and In Allow
   function isNumberKey(evt)
       {
          var charCode = (evt.which) ? evt.which : evt.keyCode;
          if (charCode != 46 && charCode > 31 
            && (charCode < 48 || charCode > 57))
             return false;

          return true;
       }
 //-------------------------------------------------Get all loan type------------------------------------------------------------
   $.ajax({
	    url: '/ebizTradeWebApp/get-all-loan-type',
	    type: 'GET',
	    dataType: 'json',
	    success: function (data) {
	        console.log(data);
	        $('#loanTypeDrop').append('<option value=0>Please Select</option>');
	        for(var i=0;i<data.length;i++){
	        	 $('#loanTypeDrop').append('<option value='+data[i].loanTypeId+'>'+data[i].loanTypeName+'</option>');
	        }
	    },
	    error: function (error) {
	        console.log(`Error ${error}`);
	    }
	});
  //-------------------------------------------------------View loan INFO- ---------------------------
  if((LoanIdObj!=null && LoanIdObj!=0))
	  {
			 $.ajax({
				    url: '/ebizTradeWebApp/get-loan-details-for-view-loan',
				    type: 'Post',
				    contentType: 'application/json',
				   data: JSON.stringify(
				    {
				    "loanTypeId":LoanIdObj
				    }),
				    success: function (data) {
				    	$('#loanTypeDrop').attr('disabled', true);
				    	$('#borrowerName').attr('readonly', true);
				 	//	$('#gauranterName').attr('readonly', true);
				 		//$('#area').attr('readonly', true);
				        console.log(data);
				        $('#loanInfo').show();
				        $('#searhBox').hide(); //hide search box
				        $('#saveclose').hide();
				        $('#buttonDive').addClass('saveButtonCls');
				      //  $('#loanNumber').val(data.loanNmber);
				 	   $('#loanDate').val(data.loanDate);
				 	   $('#borrowerName').val(data.clientName+' ['+data.mobileNo+']');
				 	//  $('#gauranterName').val(data.guarantorName+' ['+data.guarantorMobNo+']');
				 	   $('#area').val(data.clientArea);
				 	  $('#loanAmount').val(data.loanAmount);
				 	   $('#noOfDays').val(data.loanTenure);
				 	 // $('#loanTypeDrop option[value='+data.loanTypeId+']').attr('selected','selected');
				 	  // $('#nextPaymentDate').val(data.nextPaymentDate);
				 	   $('#paymentReceived').val(data.rcvd_amt);
				 	 //  $('#paymentUpto').val(data.rvcd_till_date);
				 	 //  $('#advancePayment').val(data.advEmiAmount);
				 	   $('#dailyPayment').val(data.emiAmount);
				 	  
				 	   $('#totalAmount').val();
				 	   
				 	  noOfdays=data.loanTenure;
				 	 loanAmnt=data.loanAmount;
				 	 dailyPayment=data.emiAmount;
				 //	 paymentRecieved=data.rcvd_amt;
				 	// advancePayment=data.advEmiAmount;
				 	loanTypeId=data.loanTypeId;
				 	
				 	
				 	 
				 	 
				
				 	 
				 	 if(loanAction=='view'){
				 		 $('#loanTypeDrop option[value='+data.loanTypeId+']').attr('selected','selected');
				 		$('#borrowerName').attr('readonly', true);
				 		$('#gauranterName').attr('readonly', true);
				 		$('#area').attr('readonly', true);
				 		$('#loanAmount').attr('readonly', true);
				 		$('#loanTypeDrop').attr('disabled', true);
				 		
				 		 $('#nextPaymentDate').attr('readonly', true);
					 	   $('#paymentReceived').attr('readonly', true);
					 	   $('#paymentUpto').attr('readonly', true);
					 	   $('#advancePayment').attr('readonly', true);
					 	   $('#dailyPayment').attr('readonly', true);
					 	   $('#balanceAmount').attr('readonly', true);
					 	   $('#totalAmount').attr('readonly', true);
					 	  $('#noOfDays').attr('readonly', true);
					 	// $('#optradio').attr('readonly', true);
					 	 
					 	 $('#closeAmount').attr('disabled', 'disabled'); 
					 	 $('#saveAmount').attr('disabled', 'disabled'); 
					 	$('input[name="optradio"]').attr('disabled', 'disabled'); 
					 	loanCaption(loanTypeId);
				 	 }
				 	 calculateTotalAmount();// calling function for total amount 
				    },
				    error: function (error) {
				        console.log(error);
				    }
				});
			
		
	  }
   
//--------------------update loan ------------------------------------
/* if((LoanIdObj!=null || LoanIdObj!=0) &&  )
	  {
	 
			alert(LoanIdObj+''+loanAction);
			
			
		
	  } */
   
  //-------------------------------------save loan data--------------------------------------------- 
   function saveLoanData()
   {
		  let text = "Are  you sure ? You want to create a new case. ";
		  if (confirm(text) == true) {
		   
		  
		  var i=1;
		  $("#msgId").removeClass("alert alert-danger");
		   $("#alertMsg").html("");
	  // var loanNumber=$('#loanNumber').val();
	   var loanDate=$('#loanDate').val();
	   var borrowerName=$('#borrowerName').val();
	  // var gauranterName=$('#gauranterName').val();
	   var loanTypeId=$('#loanTypeDrop').val();
	   var loanTypeName=$('#loanTypeDrop').text();
	 //  var area=$('#area').val();
	   var loanAmount=$('#loanAmount').val();
	   var noOfDays=$('#noOfDays').val();
	  // var nextPaymentDate=$('#nextPaymentDate').val();
	  // var paymentReceived=$('#paymentReceived').val();
	  // var paymentUpto=$('#paymentUpto').val();
	  // var advancePayment=$('#advancePayment').val();
	   var dailyPayment=$('#dailyPayment').val();
	 //  var balanceAmount=$('#balanceAmount').val();
	   var totalAmount=$('#totalAmount').val();
	   var emiAmount=$('#dailyPayment').val();
	  // advancePayment = advancePayment ?? 0;
	  // paymentReceived = paymentReceived ?? 0;
	   var validation=0;
	  /*  if(loanTypeId ==0 || loanTypeId ==null || loanTypeId =="")
		   {
		   $("#msgId").addClass("alert alert-danger");
		   $("#alertMsg").append(i+++". Please select loan type first. ");
		   validation++;
		   } */
	   if(loanDate ==0 || loanDate ==null || loanDate =="")
	   {
	   $("#msgId").addClass("alert alert-danger");
	   $("#alertMsg").append(i+++". Please select loan date.  ");
	   validation++;
	   }
	   if(loanAmount ==0 || loanAmount ==null || loanAmount =="")
	   {
	   $("#msgId").addClass("alert alert-danger");
	   $("#alertMsg").append(i+++". Please enter loan amount. ");
	   validation++;
	   }
	    if((noOfDays ==0 || noOfDays ==null || noOfDays =="") && (loanTypeId!=6) )
	   {
	   $("#msgId").addClass("alert alert-danger");
	   $("#alertMsg").append(i+++". Please enter "+ document.getElementById('NoOfDaysTxt').innerText);
	   validation++;
	   } 
	   if(dailyPayment ==0 || dailyPayment ==null || dailyPayment =="")
	   {
	   $("#msgId").addClass("alert alert-danger");
	   $("#alertMsg").append(i+++". Please enter "+document.getElementById('dailyPaymentTxt').innerText);
	   validation++;
	   }
	   
	   if(validation==0){
		  
	   
		  $.ajax({
			    url: '/ebizTradeWebApp/create-new-loan',
			    type: 'Post',
			    contentType: 'application/json',
			   data: JSON.stringify(
					   {
							 
							 "clientName":borrowerName,
							 //"loanType":loanTypeDrop,
						//	"guarantorName":gauranterName,
							"customerId":clientId,
							 "loanDate":loanDate,
							 "loanTypeId":loanTypeId,
							 "securityFlag":"1",
							 "loanAmount":loanAmount,
							"loanTenure":noOfDays,
							"advEmiFlag":"1",
						//	"advEmiAmount":paymentReceived,
							"emiAmount":emiAmount,
							"loanIssueBy":"1",
						//	"nextPaymentDate":nextPaymentDate	 
						    }
					   ),
			    success: function (data) {
			        console.log(data);
			        if(data.length!=0)
			        	{
			        	 //alert(data) 
			        	 $("#msgId").addClass("alert alert-danger");
				  		   $("#alertMsg").append("New case has been created successfully with no "+data);
				  	   $('#searhBox').hide();
				  	   $('#loanAmount').attr('disabled', true);
				  		$('#loanTypeDrop').attr('disabled', true);
				  		$('#noOfDays').attr('disabled', true);
				  		 $('#dailyPayment').attr('disabled', true);
				  		$('#saveAmount').hide();
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
	   } else {
		    console.log("You cancel the request")
		  }
	   }
   }
 //----------------------------------------search loan data by number name etc---------------------------  
   function searchBarrowerData(){
	   $("#msgId").removeClass("alert alert-danger");
	   $("#alertMsg").html("");
	   
	   $('#loanInfo').hide();
	   $('#tbodyLoan').html('');
	   var searchDataVal=$('#searchData').val();
	   //alert('Please enter and search details'+searchDataVal)
	   if(searchDataVal==null || searchDataVal =="" )
		   {
		  // $("#msgId").addClass("alert alert-danger");
		 //  $("#alertMsg").append("Please enter details then click on search button. ");
		   
		   
		   }
	   else
		   {
		   
		   $.ajax({
			    url: '/ebizTradeWebApp/get-barrower-loan-user-list',
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
			        	 
			        	//$('#optionData').show();
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
   
  /*  var radioData=$('input[name="selectUser"]:checked').val();
   
   $('input[type=radio][name=selectUser]').change(function() {
	    alert(this.value);
	}); */
	
   $("#userTable").on('click','.radioUser',function(){
       var currentRow=$(this).closest("tr"); 
       var col1=currentRow.find("td:eq(0)").text(); // get current row 1st TD value
      
       clientId=col1; //passing ClinetId as global var
       //alert(clientId);
       $('#userDataModel').modal('hide');
       $.ajax({
		    url: '/ebizTradeWebApp/get-barrower-loan-user-data',
		    type: 'Post',
		    contentType: 'application/json',
		   data: JSON.stringify(
		    {
		    "clientId":col1
		    }),
		    success: function (data) {
		        console.log(data);
		        if(data.length!=0)
		        	{
		        	
		        	 $('#loanInfo').show();
		        	 $("#buttonDive").hide();
		        	
		        	 $("#saveAmount").addClass("saveButtonCls");
		        	 $('#saveAmount')
		        	 $('#area').val(data.area);
		        	 $('#borrowerName').val(data.name+' ['+data.mobileNo+']');
		        	 $('#gauranterName').val(data.granterName+' ['+data.guarantorMobNo+']');
		        	
		        	 $('#borrowerName').attr("disabled", true);
		        	 $('#gauranterName').attr("disabled", true);
		        	
				 	   $('#paymentReceived').val(0);
				 	   $('#paymentUpto').val(0);
				 	   $('#advancePayment').val(0);
				 	  $('#loanTypeDrop').show().focus().click();
		        	}
		        else{
		        	 $('#loanInfo').hide();
		        	 $("#msgId").addClass("alert alert-danger");
			  		   $("#alertMsg").append("No details available on given details. ");
		        }
		       
		    },
		    error: function (error) {
		        console.log(error);
		    }
		});
  });
	
	//-------------------------genrating loan no on chnage of loan type------------------------------------------
	 $('#loanNumber').attr("disabled", true);
	
	
	jQuery(document).ready(function($){
		
	  $('#loanTypeDrop').change(function() {
		  loanTypeId=0;
		   loanTypeId=this.value;
		 calculateTotalAmount();
		  // alert(loanTypeId)
		   $('#noOfDays').attr('readonly', true);
			  $('#loanAmount').attr('readonly', true);
			  $('#dailyPayment').attr('readonly', true);
		  if(loanTypeId!=0){
			  $('#noOfDays').removeAttr('readonly', true);
			  $('#loanAmount').removeAttr('readonly', true);
			  $('#dailyPayment').removeAttr('readonly', true);
		  }
		 
		var loanTypeTxt=$('#loanTypeDrop option:selected').html();
		loanCaption(loanTypeId);//call function for caption change
		
		 $('#loanNumber').val('');
			  
	  });
	  });
	//----------------------------------Chnage caption of input text-----------------------------
	function loanCaption(loanType_ID){
		var loanTypeTxt=$('#loanTypeDrop option:selected').html();
			var loanTypeId=loanType_ID;
		if(Number(loanTypeId)==Number(5)){
			 //  alert("text"+loanTypeId)
			   document.getElementById('NoOfDaysTxt').innerText = 'Percentage (%):';
			   document.getElementById('dailyPaymentTxt').innerText = 'Monthly Interest:';
			   //document.getElementById('paymentUptoTxt').innerText = 'Payment Upto (Daily) :';
			   //document.getElementById('paymentReceived').innerText = 'Interest Recieved :';
			   }
		if(Number(loanTypeId)==Number(4)){
			 //  alert("text"+loanTypeId)
			   document.getElementById('NoOfDaysTxt').innerText = 'No of Group:';
			 //  document.getElementById('dailyPaymentTxt').innerText = 'Group Payment:';
			  // document.getElementById('paymentUptoTxt').innerText = 'Payment Upto (Group) :';
			  // document.getElementById('paymentReceived').innerText = 'Interest Recieved :';
			   }
		   if(loanTypeId!=0 && loanTypeId!=6 && loanTypeId!=1 && loanTypeId!=5 && loanTypeId!=4){
			  // alert("text")
		   document.getElementById('NoOfDaysTxt').innerText = 'No of '+loanTypeTxt+':';
		   document.getElementById('dailyPaymentTxt').innerText = loanTypeTxt +' Payment:';
		 //  document.getElementById('paymentUptoTxt').innerText = 'Payment Upto ('+loanTypeTxt+') :';
		   }
		   if((loanTypeId==6 || loanTypeId==1) && loanTypeId!=5){
			  // alert("text6"+loanTypeId)
			   document.getElementById('NoOfDaysTxt').innerText = 'No of Days:';
			   document.getElementById('dailyPaymentTxt').innerText = 'Daily Payment:';
			  // document.getElementById('paymentUptoTxt').innerText = 'Payment Upto (Daily) :';
			   }
		   if(loanTypeId==6){
			   $('#noOfDays').attr('readonly', true);}
		  $('#loanNumber').val('');
		}
	//chnage Amount on loan amount-----------------
	
	 $('#loanAmount').change(function() {
		
		loanAmnt=$('#loanAmount').val();
		calculateTotalAmount();
	 });
	
	 $('#noOfDays').change(function() {
			
			noOfdays=$('#noOfDays').val();
			calculateTotalAmount();
		 });
	 
	 $('#dailyPayment').change(function() {
			
		 dailyPayment=$('#dailyPayment').val();
		
			calculateTotalAmount();
		 });
	
	 function calculateTotalAmount()
	{
		 if(loanTypeId==1 || loanTypeId==2 || loanTypeId== 3 || loanTypeId== 4 ){
			var totalAmount=noOfdays*dailyPayment;
		 $('#totalAmount').val(totalAmount);
		 // balaceAmnt=Number(totalAmount)-(Number(paymentRecieved)+Number(advancePayment));
		//  $('#balanceAmount').val(balaceAmnt);
		 }
		
		 //mortage calculation
		 if(loanTypeId==5){
			 //balaceAmnt=Number(loanAmnt)-Number(advancePayment); 
			 $('#totalAmount').val(loanAmnt);
			// $('#balanceAmount').val(balaceAmnt);
			 var monthlyInterest=loanAmnt*noOfdays/100;
			// alert("monthlyInterest"+monthlyInterest);
			 $('#dailyPayment').val(monthlyInterest);
		 }
		//meter Calculation
		 if(loanTypeId==6){
			 //balaceAmnt=Number(loanAmnt)-Number(advancePayment); 
			 $('#totalAmount').val(loanAmnt);
			// $('#balanceAmount').val(balaceAmnt);
		 }
	}
	 
	 function closeLoanData()
	 {
		 location.href = "/ebizTradeWebApp/dashBoard";
	 }
</script>
</html>
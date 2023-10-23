<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css' rel='stylesheet'>
  <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>
  
  
  
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
      padding: 0px;
 
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
<body>
 <%-- <jsp:include page="header.jsp"/> --%>
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<p>Report Type:</p>
			</div>
			<div class="col-md-4">
				<select class="form-control" id="ReportType" aria-label="Default select example">
					<option value="0">--- Select Report Type ---</option>
					<option value="1">Daily Loan Register</option>
					<option value="2">Due Register</option>
				</select>
			</div>
			<div id="selectPeriod" hidden="true">
			<div class="col-md-2">
				<p>Period:</p>
			</div>		
			<div class="col-md-2">
				<input class="form-control" id="periodFRM" type="text" placeholder='Start date'>
			</div>		
			<div class="col-md-2">
				<input class="form-control" id="periodTO" type="text" placeholder='End date'>
			</div>							
		</div>
		<div id="selLoanType" hidden="true">
		<div class="col-md-2">
			<p>Case Type:</p>
		</div>
			<div class="col-md-4">
				<select class="form-control" id="loanTypeDrop" aria-label="Default select example"></select>
			</div>	
			</div>	
		</div>
		<div class="row" id="divSelClintDueRpt" hidden="true">
			<div class="col-md-2">
			<P>Choose:</P>
			</div>
			<div class="col-md-4">
			 <label class="radio-inline"> <input type="radio" class="radioUser" id="selView" name="selActStatus" checked="checked">View</label>
			 <label class="radio-inline"> <input type="radio" class="radioUser" id="selDownload" name="selIncStatus">Download Excel</label>
			</div>
			<div class="col-md-2">
				<p>Customer:</p>
			</div>
			<div class="col-md-4">
				<input class="form-control" id="searchData" type="text" placeholder="Enter Name/Mobile No ......">
			</div>
			
		</div>
		<br>
		

		<br>
	   <div class="col-md-12" align="center">
		<div id="wait" style="display: none" align="center">
	    	<img src="https://ebiztradewebapp.azurewebsites.net/resources/images/loading_blue2.gif" width="45" height="45" alt="Loading..." />
		</div>  
		<div id="msgId">
    		<h4 id="alertMsg"></h4>
  		</div>
	    </div>		
		<div class="col-md-12" align="center">
			<button  type="button" class="btn btn-primary"  id='view' onclick="filldata()">View</button>
			<button  type="button" class="btn btn-danger"  id='close' onclick="window.location.href='https://ebiztradewebapp.azurewebsites.net/dashBoard'">Close</button>
		</div>
		<br>
		<br>
		<div class="row" id='userOpt'>
			<div class="col-md-2">
				<p>Filter By User:</p>
			</div>
			<div class="col-md-4">
				<select class="form-control" id="ddlRecvdBy" aria-label="Default select example" onchange="filterRecord();">
					  <option value="0">All Data</option> 
					
				</select>
			</div>			
		</div>
		<br><br>
		<div id=optionData>
<!-- 			<table class="table" id="userTable">
				<tbody id='tbodyLoan'>

				</tbody>
			</table> -->
		</div>
		
		<div id="divOutputWindow">
		<div id='tpymnt'>
		<div class="header">
			<h3>Case Payment Information </h3> <h3 style ='align :right' id='totalpymnt'></h3>
		</div>
		</div>
		<table id="example" class="table table-striped table-bordered nowrap"
			style="width: 100%">
			<thead id="mainHead">

			</thead>

			<tbody id="tdata">


			</tbody>
			</table>
			<div id='trcvd'>
			<div class="header">
			<h3 style ='align :left'>Case Received Information   </h3>  <h3 style ='align :right' id='totalrcvd'></h3>
		</div>
		</div>
			<table id="rcvd" class="table table-striped table-bordered nowrap"style="width: 100%">
			<thead id="mainHeadPymntRcvd">

			</thead>

			<tbody id="PymntRcvddata">


			</tbody>

		</table>
	</div>
	
	
	</div>
	<%-- <jsp:include page="footer.jsp" /> --%>
</body>
<script type="text/javascript">
	document.getElementById("periodFRM").readOnly = true;
	document.getElementById("periodTO").readOnly = true;
	
	$("#ddlRecvdBy").prop('disabled', true);
	let recvdTabData = [];
	let fetchdata;
	let pymnt=new Map();
	let pymntarr=[];
	let caseUser=new Set();
	let rcvdarr=[];
	let totalData;
	let change=0;
	$("#alertMsg").html("");	
	$(document).ready(function () { 
		
		$('#userOpt').hide();
		$('#tpymnt').hide();
		$('#trcvd').hide();
		$('#view').attr('disabled','disabled');
		$('#userOpt').hide();
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
	
	   $.ajax({
		    url: 'https://ebiztradewebapp.azurewebsites.net/get-all-loan-type',
		  //  url: '/ebizTradeWebApp/get-all-loan-type',
		    type: 'GET',
		    dataType: 'json',
		    success: function (data) {
		        console.log("loan-type---"+data);
		        $('#loanTypeDrop').append('<option value=0>Please Select</option>');
		        for(var i=0;i<data.length;i++){
		        	 $('#loanTypeDrop').append('<option value='+data[i].loanTypeId+'>'+data[i].loanTypeName+'</option>');
		        	 
		        }
		    },
		    error: function (error) {
		        console.log(`Error ${error}`);
		    }
		});	
	  
	$( function() {
	    $( "#periodFRM" ).datepicker({
	    	dateFormat:'dd/MM/yy'
		});
	    $( "#periodTO" ).datepicker({
	    	dateFormat:'dd/MM/yy'
		});	    
	  } );	
	$( function() {
	    $( "#periodFRM" ).datepicker({
	    	dateFormat:'dd/MM/yy',
		 minDate: '-0d',
		 changeMonth: true,
         changeYear: true
		});
	    $("#periodFRM").datepicker("setDate", new Date());
	    $( "#periodTO" ).datepicker({
	    	dateFormat:'dd/MM/yy',
		 minDate: '-0d',
		 changeMonth: true,
         changeYear: true
		});	   
	    $("#periodTO").datepicker("setDate", new Date());
	  });	
	function filldata() {
		$('#optionData').html('');
		$("#msgId").removeClass('alert alert-danger');
		$("#alertMsg").html("");

		if ($('#ReportType').val() == "1") {
			getData();	
		} else if ($('#ReportType').val() == "2") {
			downloadPendingDueReport();
		}
		
	}
	
	function downloadPendingDueReport() {
		window.location.href = '/ebizTradeWebApp/reports-pending-dues';
		
	}
	
	
	function downLoadDueReport() {
		$.ajax({
			//url: 'https://ebiztradewebapp.azurewebsites.net/reports-pending-dues',
				url: '/ebizTradeWebApp/reports-pending-dues',
			type: 'Post',
		    contentType: 'application/json',
			   data: JSON.stringify(
		    {
		    	"searchVarData":"A"
		    }),	
		    success: function (data) {
 		       $("#msgId").addClass("alert alert-success");
			   $("#alertMsg").append(" Download Successfully ");	
			    var sampleArr = base64ToArrayBuffer(b64_to_utf8(data));
			    saveByteArray("SampleReport.xlsx", sampleArr);
			   
/* 			   var blob = new Blob([ base64ToArrayBuffer(Base64.getEncoder().encodeToString(fileBytes)) ], {
                   type : 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
               });			   
			    var file = new File([blob], "file_name.xlsx", {lastModified: new Date()});
			    var fileURL = URL.createObjectURL(file);
 */			    
			  // var blob = new File([data], {type: "application/vnd.ms-excel"});
	        // var filename = prompt("Please enter the filename");
		        //if(filename!=null && filename!="") {
		            //saveAs(blob, [filename+'.xlsx']);
		        	//download(data,filename+'.xlsx','application/vnd.ms-excel');
		        	/* var file = new Blob([ data ], {
                                type : 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
                            });
		        	 var fileURL = URL.createObjectURL(file);
		        	 var a         = document.createElement('a');
		        	 a.href        = fileURL; 
		        	 console.dir(fileURL);
		        	 a.target      = '_blank';
		        	 a.download    = filename+'.xlsx';
		        	 document.body.appendChild(a);
		        	 a.click(); */		        	
/* 		        }else
		            alert("please enter a filename!");  
		    } */
			   
		    } ,
		    error: function (error) {
		        console.log(error);
		    }
		});
	}
	
	$('#selView').click(function() {
		   $('#selDownload').prop('checked', false).checkboxradio('refresh');
		});
		$('#selDownload').click(function() {
			   $('#selView').prop('checked', false).checkboxradio('refresh');
			});	

	function getData() {
		$.ajax({
			url: 'https://ebiztradewebapp.azurewebsites.net/reports-Loan-Issued',
		//	url: '/ebizTradeWebApp/reports-Loan-Issued',
			type: 'Post',
		    contentType: 'application/json',
		   data: JSON.stringify(
		    {
		    	"searchVarData":"Daily",
		    	"periodFrm":$('#periodFRM').val(),
		    	"periodTo":$('#periodTO').val()
		    }),	
		    success: function (data) {
		    	 //$('#mainHead').html('');
				// $('#mainHeadPymntRcvd').html('');
				// $('#tdata').html('');
				// $('#PymntRcvddata').html('');
		    	console.log(data[1]);
		    	if(data.length!=0)
	    		{
		    		if(change>0){
		    			//alert("chng");
		     			 $('#rcvd').DataTable().clear().draw();
		   				 $( '#rcvd' ).DataTable().destroy();
		   				 
		   				$('#example').DataTable().clear().draw();
		   				 $( '#example' ).DataTable().destroy();
		    		}
		    		
		    		$('#userOpt').show();
		    		
		    		totalData=data;
		    		pymntarr=data;
		    		$('#optionData').append(
    					data
    				);
		    		$("#ddlRecvdBy").prop('disabled', false);

		    		$('#ddlRecvdBy').html('');
	    			 $('#ddlRecvdBy').append('<option value=0>All Data</option>');

		    		for(var i=0;i<data.length;i++){
		    			 caseUser.add(data[i].Case_Issued_By);
		    		}
		    		
		    		
		    		//careting loan issue dropdown
		    		loanCreatiomOption();
		    		filterRecord();
	    		} else {
	    		       $("#msgId").addClass("alert alert-success");
	    			   $("#alertMsg").append(" No Data Found  ");	
	    			$('#optionData').append('');
	    		}
		    },
		    error: function (error) {
		        console.log(error);
		    }
		});
	}	
	
	function loanCreatiomOption() {
		console.log(caseUser.value);
		for( const name of caseUser.values()){
		    var n=name;
			 $('#ddlRecvdBy').append('<option value='+n+'>'+n+'</option>');

		}
		
	}
	
 	$(function() {
		$("tblRecvd").each(function(){
		 $table = $(this),
		      $headerCells = $("thead th", $(this)),
		      $rows = $("tbody tr", $(this));
		  var headers = [],
		      rows = [];


		$headerCells.each(function(k,v) {
		   headers[headers.length] = $(this).text();
		  $table.prop("headAry", headers);
		});

		$rows.each(function(row,v) {
		  $(this).find("td").each(function(cell,v) {
		    if (typeof rows[cell] === 'undefined') rows[cell] = [];
		    rows[cell][row] = $(this).text();
		    $table.prop("bodAry", rows);
		    recvdTabData.push(row);
		  });
		});
		console.log($(this).prop('headAry'));
		console.log($(this).prop('bodAry'));  
		});
		});	 
		
		/* $("tblRecvd tr").each(function() {
			  let row = [];
			  $(this).children("td").each(function() {
			    row.push($(this).text());
			  })
			  recvdTabData.push(row);
			}) */	
			
			$('#ddlRecvdBy').on('change', function() {
				pymntarr=[];
				var conceptName = $('#ddlRecvdBy').find(":selected").text();
				
				
				if(conceptName!='All Data')
					{
					console.log("All Data not  matched")
					for(var i=0;i<totalData.length;i++){
						console.log(totalData[i].Case_Issued_By +'---'+conceptName)
						if(totalData[i].Case_Issued_By===conceptName){
							console.log("option matched")
							console.log(totalData[i]);
						pymntarr.push(totalData[i]);
						}
						else
							{
							console.log("--------------option Mismatched-------------")
							console.log(totalData[i]);
							}
					}
					
					}
				else
					{
					console.log("All Data matched")
					pymntarr=totalData;
					}
				console.log("Call filter Record")
				 $('#rcvd').DataTable().clear().draw();
				 $('#example').DataTable().clear().draw();

				 $( '#rcvd' ).DataTable().destroy();
				 $( '#example' ).DataTable().destroy();
				
				filterRecord();
				
			});
			
			function filterRecord(){
				change=1;
				var totalpymnt=0;
				var totalrcvd=0;
				console.log("pymntarr")
			console.log(pymntarr);
				 
				// $('#rcvd').html('');
				// $('#example').html('');
				 $('#mainHead').html('');
				 $('#mainHeadPymntRcvd').html('');
				 $('#tdata').html('');
				 $('#PymntRcvddata').html('');
			 $('#mainHead').html(
	          		 '<tr>'+
	          		
	                   '<th>Srl Number</th>'+
	                   '<th>Case Date</th>'+
	                   '<th> Customer Name</th>'+
	                   '<th>Customer Area</th>'+
	                   '<th>Case Number</th>'+
	                   '<th >Case Type</th>'+
	                   '<th >Case Amount</th>'+
	                   '<th >Case Status</th>'+
	                   '<th>Case Issued By</th>'+
	                   
	                   '</tr>'	
	          );
			 $('#mainHeadPymntRcvd').html(
	          		 '<tr>'+
	          		
	                   '<th>Srl Number</th>'+
	                   '<th>Case Date</th>'+
	                   '<th> Customer Name</th>'+
	                   '<th>Customer Area</th>'+
	                   '<th>Case Number</th>'+
	                   '<th >Case Type</th>'+
	                   '<th >Case Amount</th>'+
	                   '<th >Case Status</th>'+
	                   '<th>Payment Received By</th>'+
	                   
	                   '</tr>'	
	          );
			 
			 var sr=0;
			 var sr1=0;
			 for(var i=0;i<pymntarr.length;i++){
				console.log( pymntarr[i].sys_pType);
				 if(pymntarr[i].sys_pType =='pymnt'){
					 totalpymnt +=Number(pymntarr[i].Case_Amount_ttl);
			 $('#tdata').append(
	                	'<tr>'+
	                	
	                	'<td >'+ ++sr +'</td>'+
	                    //'<td >'+pymntarr[i].Srl_Number +'</td>'+
	                	'<td >'+pymntarr[i].Case_Date +'</td>'+
	                	'<td>'+pymntarr[i].Customer_Name+'</td>'+
	                	'<td>'+pymntarr[i].Customer_Area+'</td>'+
	                	'<td>'+pymntarr[i].Case_Number+'</td>'+
	                	'<td>'+pymntarr[i].Case_Type +'</td>'+
	                	'<td>'+pymntarr[i].Case_Amount_ttl +'</td>'+
	                	'<td>'+pymntarr[i].Case_Status +'</td>'+
	                	'<td>'+pymntarr[i].Case_Issued_By+'</td>'+
	                	'</tr>'
	                	); 
				 }
				 if(pymntarr[i].sys_pType=='recvd'){
					 totalrcvd +=Number(pymntarr[i].Case_Amount_ttl);
					 $('#PymntRcvddata').append(
			                	'<tr>'+
			                	
			                	'<td >'+ ++sr1 +'</td>'+
			                	//'<td >'+pymntarr[i].Srl_Number +'</td>'+
			                	'<td >'+pymntarr[i].Case_Date +'</td>'+
			                	'<td>'+pymntarr[i].Customer_Name+'</td>'+
			                	'<td>'+pymntarr[i].Customer_Area+'</td>'+
			                	'<td>'+pymntarr[i].Case_Number+'</td>'+
			                	'<td>'+pymntarr[i].Case_Type +'</td>'+
			                	'<td>'+pymntarr[i].Case_Amount_ttl +'</td>'+
			                	'<td>'+pymntarr[i].Case_Status +'</td>'+
			                	'<td>'+pymntarr[i].Case_Issued_By+'</td>'+
			                	'</tr>'
			                	); 
						 }
			 }
			 console.log(totalrcvd +"  "+totalpymnt);
			 
			 $('#totalpymnt').html('Total Amount : '+totalpymnt);
			 $('#totalrcvd').html('Total Amount : '+totalrcvd);
			 $('#tpymnt').show();
				$('#trcvd').show();
			  createDatatable(); //creating data table
			  creatercvdDatatable();
			 
		}
			
			function createDatatable(){
				
				  table=new DataTable('#example', {
					  destroy: true,
					
				  buttons:        ['csv', 'excel'],
				  bAutoWidth: true,  
					 "ordering": false,
					 fixedHeader: false,
					// "pageLength": 8,
					 scrollX:        true,
					
					
				      dom: 'Bfrtip',
				      buttons: [
				         
				          {
				        	  className: 'btn btn-primary btn-sm',
				              extend: 'excelHtml5',
				              exportOptions: {
				            	  columns: [ 1, 2,3,4,5,6,7,8],
				            	  filename: 'payment'
				              }
				          },
				          {
				              extend: 'pdfHtml5',
				              exportOptions: {
				                  columns: [ 1, 2,3,4,5,6,7,8],
				                  filename:'payment'
				              }
				          },
				         // 'colvis'
				      ] 
				      
				  });
				}
			
			function creatercvdDatatable(){
				
	    			
				  table=new DataTable('#rcvd', {
					  destroy: true,
					  
				  buttons:        ['csv', 'excel'],
				  bAutoWidth: true,  
					 "ordering": false,
					 fixedHeader: false,
					// "pageLength": 8,
					 scrollX:        true,
					
					
				      dom: 'Bfrtip',
				      buttons: [
				         
				          {
				        	  className: 'btn btn-primary btn-sm',
				              extend: 'excelHtml5',
				              exportOptions: {
				            	  columns: [ 1, 2,3,4,5,6,7,8],
				            	  filename: 'revicved'
				              }
				          },
				          {
				              extend: 'pdfHtml5',
				              exportOptions: {
				                  columns: [ 1, 2,3,4,5,6,7,8],
				                  filename:'revicved'
				              }
				          },
				         // 'colvis'
				      ] 
				      
				  });
				}
			
	$('#ReportType').on('change', function() {
		$('#view').removeAttr('disabled');
		if ($('#ReportType').val() == "1") {
			$('#selectPeriod').show();	
			$('#selLoanType').hide();
			$('#divSelClintDueRpt').hide();
		} else if ($('#ReportType').val() == "2") {
			$('#selectPeriod').hide();
			$('#selLoanType').show();
			$('#divSelClintDueRpt').show();
			$('#loanTypeDrop').html('');
			   $.ajax({
				   // url: 'https://ebiztradewebapp.azurewebsites.net/get-all-loan-type',
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
		}  else if ($('#ReportType').val() == "0") {
			$('#view').attr('disabled','disabled');
			$('#divSelClintDueRpt').hide();
		}
		
	});
			
</script>
</html>
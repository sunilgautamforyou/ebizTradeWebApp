<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert  title here</title>
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
 <jsp:include page="header.jsp"/>
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<p>Report Type:</p>
			</div>
			<div class="col-md-4">
				<select class="form-control" id="ReportType" aria-label="Default select example">
					<option value="1">Daily Loan Register</option>
				</select>
			</div>
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
<!-- 		<div>
			<div class="col-md-2">
				<p>Received By:</p>
			</div>
			<div class="col-md-4">
				<select class="form-control" id="ddlRecvdBy" aria-label="Default select example" onchange="filterRecord();">
					<option value="1">-- Select All --</option>
					<option value="2">Atul</option>
				</select>
			</div>			
		</div> -->
<!-- 		<div class="row">
			<div class="col-md-2">
				<p>Loan Type:</p>
			</div>		
			<div class="col-md-4">
				<select class="form-control" id="loanTypeDrop" aria-label="Default select example">
					<option value="1">Daily Loan Register</option>
				</select>
			</div>	
			<div class="col-md-2">
				<p>Loan Status:</p>
			</div>		
			<div class="col-md-4">
				 <input type="radio" id="All"  value="All" checked="checked">
				 <label for="All">All</label>
				 <input type="radio" id="Open"  value="Open">
				   <label for="Open">Open</label>
				 <input type="radio" id="Close" value="Close">
				   <label for="Close">Close</label>				 
			</div>						
		</div> -->
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
		<br><br><br><br>
		<div id=optionData>
<!-- 			<table class="table" id="userTable">
				<tbody id='tbodyLoan'>

				</tbody>
			</table> -->
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
<script type="text/javascript">
	document.getElementById("periodFRM").readOnly = true;
	document.getElementById("periodTO").readOnly = true;
	let recvdTabData = [];
	$("#alertMsg").html("");	
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
	
	   $.ajax({
		    url: 'https://ebiztradewebapp.azurewebsites.net/get-all-loan-type',
		 //   url: '/ebizTradeWebApp/get-all-loan-type',
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
		getData();
	}
	
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
		    	console.log(data);
		    	if(data.length!=0)
	    		{
		    		$('#optionData').append(
    					data
    				);
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
	
	
		/* $("tblRecvd tr").each(function() {
			  let row = [];
			  $(this).children("td").each(function() {
			    row.push($(this).text());
			  })
			  recvdTabData.push(row);
			}) */		
</script>
</html>
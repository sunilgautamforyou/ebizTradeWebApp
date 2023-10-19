<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
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

<!-- <style type="text/css">
td.details-control {
    background: url('https://cdn.rawgit.com/DataTables/DataTables/6c7ada53ebc228ea9bc28b1b216e793b1825d188/examples/resources/details_open.png') no-repeat center center;
    cursor: pointer;
}
tr.shown td.details-control {
    background: url('https://cdn.rawgit.com/DataTables/DataTables/6c7ada53ebc228ea9bc28b1b216e793b1825d188/examples/resources/details_close.png') no-repeat center center;
}
</style> -->
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
</head>
<body>
<!-- <h3><a target="_blank" href="https://www.gyrocode.com/articles/jquery-datatables-how-to-expand-collapse-all-child-rows/">jQuery DataTables: How to expand/collapse all child rows</a> <small>Regular table</small></h3>

<button id="btn-show-all-children" type="button">Expand All</button>
<button id="btn-hide-all-children" type="button">Collapse All</button> -->
<hr>
	<div class="row">
	<div class="col-sm-8">
		<div class="col-sm-2">
			<p>Payment Type :</p>
		</div>
		<div class="col-sm-2">
			<select id="ddlpymntType" class="form-control"
				aria-label="Default select example"
				onchange="ddlpymntType_change();">
				<option value="0" selected="selected">-- Select Payment
					Type --</option>
				<option value="2">Interest</option>
				<option value="3">Principle</option>
			</select>
		</div>
		<div class="col-sm-2">
			<p>Amount :</p>
		</div>
		<div class="input-group col-sm-2">
			<span class="input-group-addon"><i class="fa fa-rupee-sign"></i></span>
			<input type="text" id="receivedAmount"
				class="form-control form-control-sm" disabled="disabled"
				onkeyup="receivedAmount_keyUp();"
				onkeypress="return isNumber(event)">
		</div>
		</div>
	</div>
	<!-- <div class="row">
		<div class="col-sm-12" align="left">
			<fieldset class="border p-2" id="fldMetrCalc" hidden="true">
				<legend class="float-none w-auto p-2">Meter Calculation</legend>
				<div class="col-md-4" align="left">
					<label>Mtr Bal:<input class="form-control form-control-sm"
						id="txtMtrPrncpl" onkeypress="return isNumber(event)" type="text"></label>
				</div>
				<div class="col-md-4" align="left">
					<label>Bal Int.:<input class="form-control form-control-sm"
						id="txtMtrPrvBal" onkeypress="return isNumber(event)" type="text"></label>
				</div>
				<div class="col-md-4" align="left">
					<label>Case Amt:<input class="form-control form-control-sm"
						id="txtNewMtrEmiAmt" onkeypress="return isNumber(event)"
						type="text"></label>
				</div>
			</fieldset>
		</div>
		<div class="row">
			<div class="col-sm-3" align="right">
				<p>Payment Mode:</p>
			</div>
			<div class="col-md-3">
				<label><input type="checkbox" class="radio" value="Cash"
					name="pType" checked onclick="checkbox_click();" />Cash</label> <label><input
					type="checkbox" class="radio" value="Online" name="pType"
					onclick="checkbox_click();" />Online</label>
			</div>
			<div class="col-sm-3"></div>
			<div class="col-sm-3">
				<button type="button" class="btn btn-primary" id="payBTNId"
					onclick="doPayment()">Pay Amount</button>
			</div>
		</div>
	</div> -->
	<div>
		<input type="hidden" id="LoanTypeId" name="LoanTypeId" value='1'>
	</div>
	<div>
		<input type="hidden" id="txtInputDays" name="txtInputDays">
	</div>
	<div>
		<input type="hidden" id="pymntRecvdUptoDt" name="pymntRecvdUptoDt">
	</div>
	<!-- <script type="text/javascript">

/* Formatting function for row details - modify as you need */
function format ( d ) {
    // `d` is the original data object for the row
    return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
        '<tr>'+
            '<td>Full name:</td>'+
            '<td>'+d.name+'</td>'+
        '</tr>'+
        '<tr>'+
            '<td>Extension number:</td>'+
            '<td>'+d.extn+'</td>'+
        '</tr>'+
        '<tr>'+
            '<td>Extra info:</td>'+
            '<td>And any further details here (images etc)...</td>'+
        '</tr>'+
    '</table>';
}

$(document).ready(function() {
    var table = $('#example').DataTable({
        'ajax': 'https://gyrocode.github.io/files/jquery-datatables/objects.json',
        'columns': [
            {
                'className':      'details-control',
                'orderable':      false,
                'data':           null,
                'defaultContent': ''
            },
            { 'data': 'name' },
            { 'data': 'position' },
            { 'data': 'office' },
            { 'data': 'salary' }
        ],
        'order': [[1, 'asc']]
    } );

    // Add event listener for opening and closing details
    $('#example tbody').on('click', 'td.details-control', function(){
        var tr = $(this).closest('tr');
        var row = table.row( tr );

        if(row.child.isShown()){
            // This row is already open - close it
            row.child.hide();
            tr.removeClass('shown');
        } else {
            // Open this row
            row.child(format(row.data())).show();
            tr.addClass('shown');
        }
    });

    // Handle click on "Expand All" button
    $('#btn-show-all-children').on('click', function(){
        // Enumerate all rows
        table.rows().every(function(){
            // If row has details collapsed
            if(!this.child.isShown()){
                // Open this row
                this.child(format(this.data())).show();
                $(this.node()).addClass('shown');
            }
        });
    });

    // Handle click on "Collapse All" button
    $('#btn-hide-all-children').on('click', function(){
        // Enumerate all rows
        table.rows().every(function(){
            // If row has details expanded
            if(this.child.isShown()){
                // Collapse row details
                this.child.hide();
                $(this.node()).removeClass('shown');
            }
        });
    });
});

</script> -->
</body>
</html>
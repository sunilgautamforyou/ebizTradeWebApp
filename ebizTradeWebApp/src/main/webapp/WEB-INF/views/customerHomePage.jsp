<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css' rel='stylesheet'>
  <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
	<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script> 

 <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>
    <script src="src/jquery.table2excel.js"></script>
    
     <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js" ></script>
 <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js" ></script>
<style type="text/css">
/* tfoot input {
        
        padding: 3px;
        box-sizing: border-box;
      width: 92px; ;
    }
    thead input {
        
        padding: 3px;
        box-sizing: border-box;
      width: 92px; ;
    }
    input {
        
        padding: 3px;
        box-sizing: border-box;
      width: 92px; ;
    } */
    p{
    margin: 8px 25px 8px;
	    font-size: 14px;
		text-align: right;
		font-weight:600;
}
    .container
    {
    margin-top: 80px;
        margin-left: 35px;
        width: 1300px;
    }
   
/* thead th{
widht:15px;
} */
.modal-dialog
{
width:1020px;
}
label {
    /* display: inline-block; */
    max-width: 100%;
    margin-bottom: 5px;
    font-weight: 700;
    display: inline-flex;
    margin-top: 7px;
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
/* table, th, td {
  border: 2px solid black;
} */
</style>
</head>
<body>
  <jsp:include page="header.jsp"/>
<div class="container">
	<table id="example" class="table table-striped table-bordered nowrap" style="width:100%">
		 <thead id="mainHead"></thead>
	     <tbody id="tdata">		
	</table>
</div>
<%-- <jsp:include page="footer.jsp" /> --%>
</body>
<script type="text/javascript">
jQuery(document).ready(function($){
	var viewBtn;
	var editBtn;
	var table ;
	LoadCustomerData();
});

function LoadCustomerData(){
	$.ajax({
	  //  url: '/ebizTradeWebApp/get-customer-details-homePG',
	    url: 'https://ebiztradewebapp.azurewebsites.net/get-customer-details-homePG',
	    type: 'GET',
	    dataType: 'json',
	    success: function (data) {
	    	console.log(data);
	          $('#mainHead').html(
	        		  //<a class="pointer" href="https://ebiztradewebapp.azurewebsites.net/CustomerNew">Add New Customer</a>
	         		 '<div><p><button class="btn btn-primary btn-sm" onclick="openNewClientPG()">Add New Customer</button></p></div><br><tr>'+
	         		// '<th>Sr. No</th>'+
	                  '<th hidden>customerId</th>'+
	                  '<th>Customer Name</th>'+
	                  '<th>Customer Mobile</th>'+
	                  '<th >Customer Area</th>'+
	                  '<th>Garantor Name</th>'+
	                  '<th>Garantor Mobile</th>'+
	                  '<th>Garantor Area</th>'+
	                  '<th >Action</th>'+
	                  '</tr>'	
	         ); 	
	          for(var i=0;i<data.length;i++){
	        	  viewBtn= '<button type="button" class="btn btn-danger btn-sm" id="paybtn" data-toggle="modal" data-target="#userDataModel"  onclick=OpenClientEntryPG("view",'+data[i].client_id+')>View</button>';
	        	  editBtn='<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#soaDataModel" onclick=OpenClientEntryPG("edit",'+data[i].client_id+')>Edit</button>';

	        	  $('#tdata').append(
	                	'<tr>'+
	                	//'<td>'+k+++'</td>'+
	                	'<td hidden>'+data[i].client_id +'</td>'+
	                	'<td>'+data[i].name+'</td>'+
	                	'<td>'+data[i].mobile_number+'</td>'+
	                	'<td>'+data[i].client_Area+'</td>'+
	                	'<td>'+data[i].guarantor_name +'</td>'+
	                	'<td>'+data[i].guarantor_Mobile_No +'</td>'+
	                	'<td>'+data[i].guarantor_area+'</td>'+
	                	'<td>'+viewBtn +'  '+editBtn+'</td>'+
	                	'</tr>'
	                	);	        	  
	          }
	          createDatatable();
	    },
	    error: function (error) {
	        console.log(`Error ${error}`);
	    }
	});
}
function createDatatable(){
	
	  table=new DataTable('#example', {
	  buttons:        ['csv', 'excel'],
		// autoWidth:         true,  
		 "ordering": false,
		 fixedHeader: true,
		 "pageLength": 8,
		  columnDefs: [
	        { "width": "15%", "targets": [0,1,3,4,5] },       
	        { "width": "10%", "targets": [6] }
	      ], 
	      dom: 'Bfrtip',
	      buttons: [
	          /*  {
	              extend: 'copyHtml5',
	              exportOptions: {
	                  columns: [ 0, ':visible' ]
	              }
	          }, */ 
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
		function openNewClientPG() {
		//	window.location.href = "/ebizTradeWebApp/CustomerNew";	
			window.location.href = "https://ebiztradewebapp.azurewebsites.net/CustomerNew";
		}
		function OpenClientEntryPG(sMode,clientId) {
	        srchData = {
	                "searchVarData" : sMode,
	                "clientId":clientId
	         };     		
	        window.location.href = "https://ebiztradewebapp.azurewebsites.net/update-customer-details?"  + $.param(srchData);
	       // window.location.href = "/ebizTradeWebApp/update-customer-details?"  + $.param(srchData);
      
	        
		}
		
</script>
</html>
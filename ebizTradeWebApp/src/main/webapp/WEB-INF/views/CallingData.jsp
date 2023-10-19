<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
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
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script> 

 <script src=
"https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" >
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>
    <script src="src/jquery.table2excel.js"></script>
    
     <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js" ></script>
 <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js" ></script>
<style type="text/css">
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
input[type="file"] {
  display: block;
}
.imageThumb {
  max-height: 75px;
  border: 2px solid;
  padding: 1px;
  cursor: pointer;
}
.pip {
  display: inline-block;
  margin: 10px 10px 0 0;
}
.remove {
  display: block;
  background: #444;
  border: 1px solid black;
  color: white;
  text-align: center;
  cursor: pointer;
}
.remove:hover {
  background: white;
  color: black;
}
</style>
<script type="text/javascript">

		jQuery(document).ready(function($){
			var viewBtn;	
			var editBtn;
			var table ;
			LoadCallingData();
			  if (window.File && window.FileList && window.FileReader) {
				    $("#files").on("change", function(e) {
				      var files = e.target.files,
				        filesLength = files.length;
				      for (var i = 0; i < filesLength; i++) {
				        var f = files[i]
				        var fileReader = new FileReader();
				        fileReader.onload = (function(e) {
				          var file = e.target;
				          $("<span class=\"pip\">" +
				            "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" +
				            "<br/><span class=\"remove\">Remove image</span>" +
				            "</span>").insertAfter("#files");
				          $(".remove").click(function(){
				            $(this).parent(".pip").remove();
				          });
				          
				          // Old code here
				          /*$("<img></img>", {
				            class: "imageThumb",
				            src: e.target.result,
				            title: file.name + " | Click to remove"
				          }).insertAfter("#files").click(function(){$(this).remove();});*/
				          
				        });
				        fileReader.readAsDataURL(f);
				      }
				    });
				  } else {
				    alert("Your browser doesn't support to File API")
				  }			
			
			
		});	
		function LoadCallingData(){
			$.ajax({
			//	url: '/ebizTradeWebApp/get-all-user-loan-data',
				url: 'https://ebiztradewebapp.azurewebsites.net/get-all-user-loan-data',
				type: 'GET',
				dataType: 'json',
				success: function (data) {
				$('#mainHead').html(
         		 '<tr>'+
                  '<th hidden>customerId</th>'+
                  '<th hidden>LoanId</th>'+                  
                  '<th>Customer Name</th>'+
                  '<th>Client Area</th>'+
                  '<th>Case Number</th>'+
                  '<th>Case Date</th>'+
                  '<th>Case Amount</th>'+
                  '<th>EMI Amount</th>'+
                  '<th>Pending As On</th>'+
                  '<th>Tenaure</th>'+
                  '<th >Action</th>'+
                  '</tr>'			
                  );
					for(var i=0;i<data.length;i++){
		        	  viewBtn= '<button type="button" class="btn btn-danger btn-sm" id="paybtn" data-toggle="modal" data-target="#userDataModel">View</button>';
		        	  editBtn='<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#soaDataModel">Update</button>';
						$('#tdata').append(
				        	'<tr>'+
				        	'<td hidden>'+data[i].clientId +'</td>'+
				        	'<td hidden>'+data[i].loanId +'</td>'+
				        	 '<td>'+data[i].clientName+'</td>'+  
				        	'<td>'+data[i].clientArea+'</td>'+
				        	'<td>'+data[i].loanNmber +'</td>'+
				        	'<td>'+data[i].loanDate +'</td>'+
				        	'<td>'+data[i].loanAmount+'</td>'+
				        	'<td>'+data[i].emiAmount +'</td>'+
				        	'<td>'+data[i].pendingAmount+'</td>'+
				        	'<td>'+data[i].dueDays +'</td>'+
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
			 // buttons:        ['csv', 'excel'],
				// autoWidth:         true,  
				 "ordering": false,
				 fixedHeader: true,
				 "pageLength": 8,
				/*   columnDefs: [
			        { "width": "15%", "targets": [0,1,3,4,5] },       
			        { "width": "10%", "targets": [6] }
			      ], */ 
			     // dom: 'Bfrtip',
			  });
			  
			};
		
	</script>
</head>
<body>
<jsp:include page="header.jsp"/>
	<div class="container">
		<form action="#" method="post">
		<table id="example" class="table table-striped table-bordered nowrap"
			style="width: 100%">
			<thead id="mainHead"></thead>
			<tbody id="tdata">
		</table>
		</form>
	</div>
	<div class="modal fade" id="userDataModel" tabindex="-1"
				role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">
								<b>Update Communication Details</b>
							</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-md-2" align="left">
									<p>Comments:</p>
								</div>
								<div class="col-md-10" align="left">
									   <textarea class="form-control form-control-md" id="commentTxt" rows="2"></textarea>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-2">
								 <p>Next Commitment Date</p>	
								</div >
								<div class="col-md-2">
								<input type="date" data-date-format="DD MMMM YYYY">
								</div>
								<div class="col-md-2" align="right">
									<p>Attach File:</p>
								</div>
								<div class="col-md-6" align="left">
									<div class="field">
									  <input type="file" id="files" name="files[]" multiple />
									</div>
								</div> 	
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>		

	
</body>
<jsp:include page="footer.jsp" />
</html>
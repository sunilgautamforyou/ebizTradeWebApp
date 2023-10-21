<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome To Lakra Finance</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<style>
body {
      background-color: #f8f9fa; /* Attractive background color */
    }
.alert {
    padding: 5px;
    margin-bottom: 0px;
    border: 2px solid transparent;
    border-radius: 18px;
    margin-top: 26px;
    padding-top: 9px;
    padding-left: 10px;
}
.card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0,0,0,.125);
    border-radius: 0.25rem;
    max-width: 485px;
    margin-top: 50px;
    margin-left: 23px;
}


</style>
<body>

<div class="container mt-5">

	

    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card">
          <div class="card-header">
            <h4 class="text-center">Sign In | Loan Software</h4>
          </div>
          <div class="card-body">
            <div class="text-center mb-4">
              <img src="https://ebiztradewebapp.azurewebsites.net/resources/images/logo.gif" alt="Logo" width="250" height="100">
            </div>
           
              <div class="form-group">
                <label for="username">Username</label>
               
                <input type="text" class="form-control" id="username" placeholder="Enter username">
              
              </div>
              <br>
              <div class="form-group">
                <label for="password">Password</label>
               
                <input type="password" class="form-control" id="password" placeholder="Enter password">
             
              </div>
     			<div id="wait" style="display: none" align="center">
            		<img src="https://ebiztradewebapp.azurewebsites.net/resources/images/loading_blue2.gif" width="45" height="45" alt="Loading..." />
				</div>               
              <br>
              <button type="submit" class="btn btn-success btn-block fa-md mb-3 login-button"                                                             
               type="button" onclick="login()">Sign In <i class="fa fa-sign-in" aria-hidden="true"></i></button>
               <div id="msgId">
	          	<h5 id="alertMsg"></h5>
	          	</div>
          </div>
        </div>
      </div>
     
    </div>
  </div>

</body>
<script type="text/javascript">
//example.com/testsite/index.html
//https://ebiztradewebapp.azurewebsites.net/
var getUrl = window.location;
var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
	//alert(baseUrl)
function login()
{
	 $("#msgId").removeClass("alert alert-danger");
	   $("#alertMsg").html("");
	var username=$("#username").val();
	var password=$("#password").val();
	
	var validation=0;
	   if(username ==0 || username ==null || username =="")
		   {
		   $("#msgId").addClass("alert alert-danger");
		   $("#alertMsg").append(" Please enter username. ");
		   return false;
		   }
	   if(password ==0 || password ==null || password =="")
	   {
	   $("#msgId").addClass("alert alert-danger");
	   $("#alertMsg").append(" Please enter password. ");
	  return false;
	   }
	   if(validation==0)
		   {
		 //  alert("login")
		   $.ajax({
			 //   url:'/ebizTradeWebApp/login',
			   url:'/ebizTradeWebApp/login', 
			 //  url:'https://ebiztradewebapp.azurewebsites.net/login',
			    type: 'POST',
			    contentType: 'application/json',
				   data: JSON.stringify(
				    {
				    "username":username,
				    "password":password
				    }),
			    success: function (data) {
			        //alert(data.role);
			        console.log(data);
			        if((data.id!=null) && (data.role=='ADMIN'))
			        	{

			        //	location.href = "/ebizTradeWebApp/dashBoard";

			        //	location.href = "/ebizTradeWebApp/dashBoard"; 
			        	location.href = "https://ebiztradewebapp.azurewebsites.net/dashBoard";
			        	}
			        if((data.id!=null) && (data.role=='SITE'))
		        	{
		        		location.href = "https://ebiztradewebapp.azurewebsites.net/pymntReceipt";
			        //	location.href = "/ebizTradeWebApp/pymntReceipt"; 
		        	}
			    },
			    error: function (error) {
			    	console.log(error)
			    	 $("#msgId").addClass("alert alert-danger");
			      	   $("#alertMsg").append("Username or Password is wrong! ");
			       
			    }
			});
		   }
	
	};
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
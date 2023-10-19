<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
    font-family: 'Open Sans', sans-serif;
    font-weight: 400;
    color: #686868;
    /*font-size: 14px;*/
    background: #ffffff;

    overflow-y: scroll; /* Show scrollbars */
    overflow-x: no-display;
}


.topnav {

  overflow: hidden;
  background-color: #435865;
}

.topnav a {
  float: left;
  display: block;
  color: rosybrown;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
    border: 1px solid #6c757d;
    background: #6c757d;
    font-weight: normal;
    color: #ffffff;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}

.topnav .icon {
  display: none;
}
.logbar
{
float: right;
}
@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
    width: fit-content;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}

</style>
</head>
<body>
<%
			

	String name=session.getAttribute("Name").toString().split("_")[0].split("\\.")[0];
	%>
<div class="topnav" id="myTopnav">
    
      <a  href="#">EbizTrade</a>
   
    <a id="5" href="https://ebiztradewebapp.azurewebsites.net/Customer"><i class="fa fa-address-card mx-1"></i> Customer Setup</a> 	
   <a href="https://ebiztradewebapp.azurewebsites.net/dashBoard"> <i class="fa fa-tachometer mx-1" aria-hidden="true"></i> Dashboard</a>
    <a href="https://ebiztradewebapp.azurewebsites.net/mobLoanEntry"><i class="fa fa-shopping-basket" aria-hidden="true"></i> New Case Entry</a>
    <a href="https://ebiztradewebapp.azurewebsites.net/Reports"> <i class="fa fa-file-text-o mx-1"></i> View Reports</a>
    <a href="https://ebiztradewebapp.azurewebsites.net/InActiveLoan"> <i class="fa fa-trash" aria-hidden="true"></i> Delete Case</a>   
    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
    <div class='logBar'>
     <a href="" class="btn btn-secondary dropdown-toggle" aria-haspopup="true" aria-expanded="true"><span class="glyphicon glyphicon-user" style='color:white'></span><marquee width="100%" direction="right" height="17px">Welcome - <%out.print(name.substring(0, 1).toUpperCase()+name.substring(1));%></marquee></a>
      <a href="https://ebiztradewebapp.azurewebsites.net"><span class="glyphicon glyphicon-log-out"></span> Logout</a>
  </div>
</div>

<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>

</body>
</html>

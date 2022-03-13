<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <jsp:include page="layout.html"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BANK MANAGEMENT</title>
</head>

<style>


.logot:hover
{
 


  color:white;
  background: lightsteelblue;
  
}
.logot {
  transition-duration: 0.2s;
  position:relative;
  top:20px;
  left: 147px;
  padding:15px;
  background: lightsteelblue;
  border-radius: 5px;
  color:black;
 
  
  
}
.grad
{ 
width:1904px;
  background-repeat: no-repeat;
background-image: linear-gradient( 95.2deg, rgba(173,252,234,1) 26.8%, rgba(192,229,246,1) 80% );
}
.first
{
position:relative;
top:10px;
text-align:center;
color:white
}
h1
{
position:relative;
top:10px;
text-align:center;

}
h5
{
text-align:center;
color:white;
}
h2
{
color:white;
text-align:center;
}
.square {
  height: 50px;
  width: 1890px;
  background-color: red;
  }
  .sq1{
  float:left;
  position:relative;
  height:800px;
  width:500px;
  border-radius:2	px;
  
  
  background:#ff735c;

  box-shadow: 5px 7px 8px grey;
  
  }
  .box
  {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  border-color:white;
  
  border-radius: 25px;
  }
  .login
  {
  position:relative;
  top:20px;
  text-align:center;
  border-radius: 25px;
  padding:10px;
  }
  .img
  {
  float:right;
 

  }
.sub
{
 position:relative;
  top:20px;
  text-align:center;
  transition-duration: 0.4s;
   padding:12px;
   border-radius: 5px;
   border-color:white;
   border-width:3px;
 
}
.sub:hover
{
background-color: #4CAF50; /* Green */
  color: white;
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
  
  
}
.lock
{
display: block;
  margin-left: auto;
  margin-right: auto;
  border-radius: 50px;

}
.footer{
              background: linear-gradient(to right, #141e30, #243b55);
             
              height:125px;
              width:1890px;
         }
         
</style>
<script>
function required()
{
var empt = document.forms["form1"]["Acc no"].value;
var empt1= document.forms["form1"]["pin"].value;
if (empt == ""||empt1=="")
{
alert("Please input Values");
return false;
}

}
</script>
 
<body>

 <div class="grad">
 </div>
 <div class="sq1">
 <h1 class="first">LOGIN</h1>
 <h5>_______________________________________</h5>
 <img src="lock2.jpg" width="80" height="80" class="lock"/>
 <div class=login>
 <form name="form1" action="Login" onsubmit="required()">
 <h2>Enter Account Number<br><br><input type="text" name="Acc no" class="box" ><br>
 <br>Enter Pin<br><br><input type="password" name="pin" class="box" ><br><br>
 <input type="submit" name="SUBMIT" class="sub">
 </h2>
 </form>
 
 </div>
 <form action="go_to_new" >

 <br>
 <br>
 <h5>________________________________________________________________________________________</h5>
<h2>OR</h2>
 <input type="submit" value="CREATE A NEW ACCOUNT" class="logot">
 </form>
</div>

<div class="img">

<img src="lock.jpg" width="1280" height="800"/>
</div>
</body>
</html>
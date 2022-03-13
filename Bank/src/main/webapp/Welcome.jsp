<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="layout.html"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WELCOME</title>
</head>
<style>

h5
{
text-align:center;
}
.op
{
 transition-duration: 0.4s;
  position:relative;
  top:2px;
  padding:40px;
  Background-color:#ff857d;
  width:780px;
  border-radius: 25px;
  margin:10px;
  
}
.op:hover
{
 
  Background-color:#7d97f4;
  color:#fecccb;
  border: 2px solid black;
  color:white;
  
}

h2
{

position:relative;
top:10px;
text-align:center;
text-transform: capitalize;

}
.logot:hover
{
 
  Background-color:red;
  color:#4CAF50;
  border: 2px solid black;
  color:white;
  
}
.logot {
  transition-duration: 0.4s;
  position:relative;
  left:150px;
  padding:10px;
  Background-color:#7d97f4;
  border-radius: 15px;
  width:500px;
  
  
}

 .sq1{
  float:right;
  position:relative;
  height:850px;
  width:800px;
  
  border-radius: 10px;
    background:#dfe7fe;
  border: 5px solid white	;
  box-shadow: 5px 7px 8px grey;}
   .img
  {
  float:left;
 

  }
    .img1
  {
  position: fixed;
  top: 0;
  
     display: block;
  margin-left: auto;
  margin-right: auto;
  border-radius: 2px;
 border: 2px solid white	;
  box-shadow: 4px 5px 6px black;
  }
</style>
<body>
 <%
 response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
if(session.getAttribute("Accountno")==null)
{
	response.sendRedirect("Profile.jsp");
}

%>
<input type="image" src="bank.jpg" width="125" height="145" class="img1"/>
<div>
<div class="sq1">
<h2>
<%
String name=(String)session.getAttribute("Name");
String pin=(String)session.getAttribute("pass");
out.print("Welcome "+name);
%>
<h5>_______________________________________</h5>
</h2>
<form action="getInfo">
<input type="Submit" value="GET ACCOUNT INFO" class="op">
</form>
<form action="chk_balance">
<input type="Submit" value="CHECK BALANCE" class="op">
</form>
<form action="credit">
<input type="Submit" value="ADD MONEY TO ACCOUNT" class="op">
</form>
<form action="debit1">
<input type="Submit" value="DEBIT FROM ACCOUNT" class="op">
</form>
<form action="transfer">
<input type="Submit" value="TRANSFER FUNDS" class="op">
</form>
<form action="history">
<input type="Submit" value="CHECK TRANSACTION HISTORY" class="op">
</form>


</div>
</div>
<div class="img">

<img src="20943819.jpg" width="850" height="800"/>
<form action="Logout">
<input type="Submit" value="Logout" class="logot">
</form>
</div>



 </body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="layout.html"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.grad
{ 
width:1890px;
height:700px;
  
background: linear-gradient( 95.2deg, rgba(173,252,234,1) 26.8%, rgba(192,229,246,1) 80% );
}
.footer{
              background: linear-gradient(to right, #141e30, #243b55);
             
              height:10px;
              width:1890px;
         }

h2
{
text-transform: capitalize;
position:relative;
top:10px;
text-align:center;
}
h5
{
text-align:center;
}
.square {
  height: 50px;
  width: 1890px;
  background-color: lightsteelblue;
  }
  .sq1{
  position:relative;
  height:500px;
  width:830px;
  top: 100px;
  left: 530px;
 background-color:rgba(255,255,255,0.2);
  border: 2px solid white	;
  box-shadow: 5px 7px 8px grey;
  
  border-radius: 25px;}
 
  .login
  {
  position:relative;
  top:40px;
  text-align:center;
  border-radius: 25px;
  }
  .foot
  {
  height: 50px;
  width: 830px;
  background:red;
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
  top:40px;
  left: 920px;
  padding:10px;
  Background-color:#4CAF50;
  border-radius: 15px;
  
  
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
  top:20px;
  left: 920px;
  padding:10px;
  Background-color:#4CAF50;
  border-radius: 25px;
  
  
}
</style>

<body>
<%
response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
String name=" ";
long money=0;
if(session.getAttribute("Name")!=null && session.getAttribute("new balance")!=null)
{
	

name=(String)session.getAttribute("Name");
 money=(long)session.getAttribute("new balance");
}
else
{
	response.sendRedirect("Profile.jsp");
}
%>
<div class="grad">
 <div class="sq1">
 
 <h2>Dear<%out.print(" "+name); %></h2>
 <div class=foot>

 </div>
 <br>
 <br>
 <br>
 <h2>Your current account does not have sufficient fund to achieve this transaction
 <br>
 <br>
 <br>
  <br>
 Remaining Balance: -<% out.print(" "+money);%>
 </h2>
 
 <div class=login>

 </h3>
 </form>
 </div>
 </div>
 <form action="go_back_transfer">
<input type="Submit" value="Return" class="logot">
</form>
</div>
 <div class=footer>

 </div>
</html>
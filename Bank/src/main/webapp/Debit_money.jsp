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
  background-color: red;
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
  .box
  {
  text-align:center;
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border-radius: 10px;
  }
  .login
  {
  position:relative;
  top:40px;
  text-align:center;
  border-radius: 25px;
  }
    .img
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
  .img:hover
  {
  box-shadow: 9px 10px 11px black;
  }
</style>
<script>
function required()
{
var empt = document.forms["form1"]["fund_debit"].value;
if (empt == "")
{
alert("Please input the value to debit");
return false;
}


}
</script>
<body>
<%
response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
if(session.getAttribute("Name")==null)
{
	
	response.sendRedirect("Profile.jsp");
}

%>
<div class="back">
 <form action="gobak">
 <input type="image" src="bank.jpg" width="125" height="145" class="img"/>
 </form>
 </div>
<div class="grad">
 <div class="sq1">
 <h2>DEBIT SECTION</h2>
 <h5>_______________________________________</h5>
 <div class=login>
 <form name="form1" action="add_money2" >
 <h3>Enter Amount To Debit from Your Account in Rupees<br><br><input type="text" name="fund_debit" class="box"><br>
 <button type="submit" name="SUBMIT" onclick="required()">Submit</button>

 </h3>
 </form>
 </div>
 </div>
 
 
</div>
 <div class=footer>

 </div>
</body>
</html>
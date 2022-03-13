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
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border-radius: 25px;
  }
  .login
  {
  position:relative;
  top:40px;
  text-align:center;
  border-radius: 25px;
  }
</style>
<script>
function required()
{
var empt = document.forms["form1"]["pass"].value;
if (empt == "")
{
alert("Please input Account Number");
return false;
}

else 
{
alert("Your Pin is Saved");
return true; 
}
}
</script>
<body>
<%
response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
if(session.getAttribute("first_name")==null)
{
	response.sendRedirect("NewAcc.jsp");
} %>

<div class="grad">
 <div class="sq1">
 <h2>PIN SECTION</h2>
 <h5>_______________________________________</h5>
 <div class=login>
 <form name ="form1"action="generate_pass" onclick="required()">
 <h3>Enter Your New 8 Digit Pin<br><br><input type="text" name="pass" class="box"><br>
 
 <input type="submit" name="SUBMIT">
 </h3>
 </form>
 </div>
 </div>
 
 
</div>
 <div class=footer>

 </div>
</body>
</html>
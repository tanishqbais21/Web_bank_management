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
height:1150px;
  background-repeat: no-repeat;
 background: linear-gradient( 95.2deg, rgba(173,252,234,1) 26.8%, rgba(192,229,246,1) 80% );
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
  height:1000px;
  width:830px;
  top: 100px;
  left: 530px;
  background-color:rgba(255,255,255,0.2);
  border: 2px solid white	;
  box-shadow: 4px 8px 9px black;
  
  
  
  border-radius: 15px;}
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
  .footer{
              background: linear-gradient(to right, #141e30, #243b55);
             
              height:10px;
              width:1890px;
         }
</style>
<script>
function required()
{
var empt = document.forms["form1"]["fname"].value;
var empt1= document.forms["form1"]["lname"].value;
var emp2=document.forms["form1"]["city"].value;
var emp3=document.forms["form1"]["aadhar"].value;
var emp4=document.forms["form1"]["mobno"].value;
var emp5=document.forms["form1"]["email"].value;
var chk=emp3.toString().length;
var chk1=emp4.toString().length;
if (empt == "")
{
alert("Please input your first name");
return false;
}
if (empt1 == "")
{
alert("Please input your last name");
return false;
}
if(chk!=12)
	{
	alert("Aadhar Number is Invalid");
	return false;
	}
if(chk1!=10)
{
alert("Mobile Number is Invalid");
return false;
}
if (emp2 == "")
{
alert("Please input Your city");
return false;
}
if (emp3 == "")
{
alert("Please input Your aadhar number");
return false;
}
if (emp4 == "")
{
alert("Please input your mobile number");
return false;
}
if (emp5 == "")
{
alert("Please input your email");
return false;
}
else 
{
alert("Changes Saved Redirecting to Generate your pin");
return true; 
}
}
</script>
<body>
<div class="grad">
 <div class="sq1">
 <h2>INFORMATION SECTION</h2>
 <h5>_______________________________________</h5>
 <div class=login>
 <form name="form1" action="new_acc" onsubmit="required()">
 <h3>Enter First Name<br><br><input type="text" name="fname" class="box"><br>
 <br>Enter Last Name<br><br><input type="text" name="lname" class="box"><br><br>
 <h3>Enter City<br><br><input type="text" name="city" class="box"><br>
 <br>Enter Aadhaar Number<br><br><input type="text" name="aadhar" class="box"><br><br>
 <br>Enter Mobile Number<br><br><input type="text" name="mobno" class="box"><br><br>
 <br>Enter Email<br><br><input type="text" name="email" class="box"><br><br>
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
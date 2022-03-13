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
.logot:hover
{
 

 background: red; 
  color:white;
  
}
.logot {
  transition-duration: 0.2s;
  position:relative;
  top:50px;
  left: 915px;
  padding:15px;
  background: grey; 
  border-radius: 20px;
  color:black;
 
  
  
}
 .bak{
              background: linear-gradient(to right, #757f9a, #d7dde8);
             
              height:800px;
              width:1890px;
         }
 .footer{
              background: linear-gradient(to right, #141e30, #243b55);
             
              height:125px;
              width:1890px;
         }
  .square
 {
  height: 50px;
  width: 1890px;
  background-image: linear-gradient(to right, #0f0c29, #302b63, #24243e);
  
  }
  .img
  {
  position: fixed;
  top: 0;
  left: 10px;

   display: block;
  margin-left: auto;
  margin-right: auto;
  border-radius: 10px;
 border: 2px solid white	;
  box-shadow: 9px 10px 11px black;
  }
  .img:hover
  {
  border: 2px solid cyan;
  }
  h2
{
position:relative;
top:50px;
text-align:center;
}
h5
{
text-align:center;
}
h3
{
text-align:center;
}

</style>
<body>
<%



String name=(String)session.getAttribute("first_name");
String pin=(String)session.getAttribute("pass");
String sur=(String)session.getAttribute("last_name");
String accno=String.valueOf((int)session.getAttribute("acc_no"));
if(session.getAttribute("pass")==null)
{
	response.sendRedirect("Profile.jsp");
}
response.setHeader("Cache-control","no-cache,no-store,must-revalidate");


%>

 <div class="back">
 
 </div>
 
 <div class=bak>
 <div class=inside>
 <h2>YOUR ACCOUNT WAS CREATED SUCESSFULLY!</h2>
 <br>
 <h2><%out.print("  "+name+" "+sur); %></h2>
 <br>
 <h5>________________________________________________________________________________</h5>
 <br>
 <h3 >YOUR ACCOUNT NUMBER: -<%out.print("  "+accno); %></h3>
 <h5>________________________________________________________________________________</h5>
 <h3 >YOUR PASSWORD: -<%out.print("  "+pin); %></h3>
 <h5>________________________________________________________________________________</h5>
 <form action="Logout">
<input type="Submit" value="Logout" class="logot">
</form>
 </div>
 </div>
 <div class=footer>

 </div>


</body>
</html>
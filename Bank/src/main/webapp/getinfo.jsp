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
 .bak{
              background: linear-gradient(to right, #757f9a, #d7dde8);
             
              height:890px;
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
response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
if(session.getAttribute("Name")==null)
{
	response.sendRedirect("Profile.jsp");
}
String name=(String)session.getAttribute("Name");
String pin=(String)session.getAttribute("pass");
String add=(String)session.getAttribute("Address");
String sur=(String)session.getAttribute("SurName");
String email=(String)session.getAttribute("Email");
String mobno=(String)session.getAttribute("Mobno");

%>
 <div class="back">
 <form action="gobak">
 <input type="image" src="bank.jpg" width="125" height="145" class="img"/>
 </form>
 </div>
 
 <div class=bak>
 <div class=inside>
 <h2>ACCOUNT HOLDER'S INFORMATION</h2>
 <br>
 <h5>________________________________________________________________________________</h5>
 <br>
 <h3 >NAME: -<%out.print("  "+name+" "+sur); %></h3>
 <h5>________________________________________________________________________________</h5>
 <h3 >ADDRESS: -<%out.print("  "+add); %></h3>
 <h5>________________________________________________________________________________</h5>
 <h3 >EMAIL: -<%out.print("  "+email); %></h3>
 <h5>________________________________________________________________________________</h5>
 <h3 >MOBILE NUMBER: -<%out.print("  "+mobno); %></h3>
 <h5>________________________________________________________________________________</h5>
 </div>
 </div>
 <div class=footer>

 </div>
</body>
</html>
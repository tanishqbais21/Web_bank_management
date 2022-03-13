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
  table, th, td {
  border:2px solid black;
  padding:16px;	
}
td
{
text-align:center;
font-size:19px;

}

th
{
background-color: #04AA6D;
color:white;
font-size:21px;
}
h2
{
text-align:center;
}
h3
{
text-transform: capitalize;
text-align:center;
}
p
{
text-transform: capitalize;
color:white;
text-align:center;
}
.scroll-left {
 height: 50px;
 width:800px;
 left:550px;	
 overflow: hidden;
 position: relative;
 background:#04AA6D ;
 color: orange;
 border: 2px solid black;
}
.scroll-left p {
 position: absolute;
 width:100%;
 height: 100%;
 margin: 0;
 line-height: 50px;
 text-align: center;
 transform:translateX(100%);
 animation: scroll-left 18s linear infinite;
}
@keyframes scroll-left {
 0%   {
 transform: translateX(100%); 		
 }
 100% {
 transform: translateX(-100%); 
 }
}
</style>
<body>
<%
int ac_no=(int)session.getAttribute("Accountno");
String name=(String)session.getAttribute("Name");
long[]fund=(long[])session.getAttribute("funds_arr");
String[] date=(String[])session.getAttribute("date_arry");
String[] mode=(String[])session.getAttribute("mode_arry");
int[] transfer1=(int[])session.getAttribute("transfer_arry");
for(int i=0;i<10;i++)
{
	if(mode[i]==null||transfer1[i]==0||fund[i]==0)
	{
		mode[i]="--";
		date[i]="--";
	}
}
%>
<div class="back">
 <form action="gobak">
 <input type="image" src="bank.jpg" width="125" height="145" class="img"/>
 </form>
 </div>	
 <h2> TRANSACTION HISTORY</h2>
 <h3>Account Number: -<%out.print(" "+ac_no); %></h3>
 <h3>Holder's Name: -<%out.print(" "+name); %>
 <table style="width:100%">
  <tr>
    <th>Sr.No</th>
    <th>Date Of Transfer(YYYY/MM/DD)</th>
    <th>Transferred Funds</th>
    <th>MODE(Debit/Credit or Transfer)</th>
    <th>Transferred to/from (Account Number)</th>
  </tr>
  <tr>
    <td>1</td>
    <td><%out.print(date[0]);%></td>
    <td><%out.print(fund[0]);%> Rs</td>
    <td><%out.print(mode[0]);%></td>
    <td><%out.print(transfer1[0]);%></td>
  </tr>
  <tr>
    <td>2</td>
    <td><%out.print(date[1]);%></td>
    <td><%out.print(fund[1]);%> Rs</td>
    <td><%out.print(mode[1]);%></td>
    <td><%out.print(transfer1[1]);%></td>
  </tr>
    <tr>
    <td>3</td>
    <td><%out.print(date[2]);%></td>
    <td><%out.print(fund[2]);%> Rs</td>
    <td><%out.print(mode[2]);%></td>
    <td><%out.print(transfer1[2]);%></td>
  </tr>
    <tr>
    <td>4</td>
    <td><%out.print(date[3]);%></td>
    <td><%out.print(fund[3]);%> Rs</td>
    <td><%out.print(mode[3]);%></td>
    <td><%out.print(transfer1[3]);%></td>
  </tr>
    <tr>
    <td>5</td>
    <td><%out.print(date[4]);%></td>
    <td><%out.print(fund[4]);%> Rs</td>
    <td><%out.print(mode[4]);%></td>
    <td><%out.print(transfer1[4]);%></td>
  </tr>
    <tr>
    <td>6</td>
    <td><%out.print(date[5]);%></td>
    <td><%out.print(fund[5]);%> Rs</td>
    <td><%out.print(mode[5]);%></td>
    <td><%out.print(transfer1[5]);%></td>
  </tr>
    <tr>
    <td>7</td>
    <td><%out.print(date[6]);%></td>
    <td><%out.print(fund[6]);%> Rs</td>
    <td><%out.print(mode[6]);%></td>
    <td><%out.print(transfer1[6]);%></td>
  </tr>
    <tr>
    <td>8</td>
    <td><%out.print(date[7]);%></td>
    <td><%out.print(fund[7]);%> Rs</td>
    <td><%out.print(mode[7]);%></td>
    <td><%out.print(transfer1[7]);%></td>
  </tr>
    <tr>
    <td>9</td>
    <td><%out.print(date[8]);%></td>
    <td><%out.print(fund[8]);%> Rs</td>
    <td><%out.print(mode[8]);%></td>
    <td><%out.print(transfer1[8]);%></td>
  </tr>
    <tr>
    <td>10</td>
    <td><%out.print(date[9]);%></td>
    <td><%out.print(fund[9]);%> Rs</td>
    <td><%out.print(mode[9]);%></td>
    <td><%out.print(transfer1[9]);%></td>
  </tr>
</table>
<br>


<div class="scroll-left">
<p>this module Shows last 10 transcations from your Current account!!</p> 
</div>
</body>
</html>




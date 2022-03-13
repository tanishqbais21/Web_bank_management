<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.back
{
background-image:url("Land.jpg");
  height: 900px; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.outer
{
display: block;
  margin-left: auto;
  margin-right: auto;
  width: 40%;

 position:relative;
 top:100px;
  height:650px;
  width:1230px;
 background:#f2f5fc;

 border-radius:20px;
  box-shadow:  5px 6px 7px black;
  
  
  }

.img{
position:relative;
 float:left;
 left:502px;
 width:727px;
 height:500px;
 background-repeat: no-repeat;
 border-radius: 0% 3% 3% 0%;
  
 
 }
.top
{
position:absolute;
top:570px;
left:95px;
color:lightsteelblue;
}
.inner_left
{
background-color:white;
width:500px;
height:650px;
border-radius:3% 0% 0% 3%;
}
.head
{

position:absolute;
text-align:center;
top:50px;
left:75px;
color:#555ba5;

}
.info
{
position:absolute;
top:200px;
left:30px;
font-size: x-large;
text-align:center;
font-style: oblique;
color:#91b3fa;
}
.line
{
color:#555ba5;
}
.button {
  position:absolute;
  top:450px;
  left:145px;
  display: inline-block;
  border-radius: 25px;
  background-color: #d45c2a;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 10px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}
.button:hover
{
  background-color: green;
}



</style>
<body>




<div class=back>
<div class="outer">
<div class="inner_left">
<div class= "head"><h1>SWISS-LINE
</h1>__________________________________________</div>

<div class="top"><h2>Regulated By: - Swedish Bank</h2>
</div>
<div class="info">
<p>"This Is A Small Step Towards Our Vision Of <br>Making Banking<br> Easy And Accessible"
<br><div class="line">Ceo<br>Sewdish Bank<br>__________</div>
</p>
</div>
<div class="start">
<form action="profile_page">
<input type="submit" value="Start" class="button">
</form>
</div>
<div class="inner_right">
<img src="landing2.jpg"  class="img"/>
</div>
</div>
</div>
</div>
</body>
</html>
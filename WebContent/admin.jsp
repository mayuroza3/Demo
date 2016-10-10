<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<title>Admin Panel</title>
</head>
<style>
body {font-family: "Lato", sans-serif;}
input[type=button] {
  display:inline;
  color:#08233e;
  font:2.4em Futura, ‘Century Gothic’, AppleGothic, sans-serif;
  font-size:70%;
  padding:14px;
  background-color:rgba(255,204,0,1);
  border:1px solid #ffcc00;
  -moz-border-radius:10px;
  -webkit-border-radius:10px;
  border-radius:10px;
  border-bottom:1px solid #9f9f9f;
  -moz-box-shadow:inset 0 1px 0 rgba(255,255,255,0.5);
  -webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,0.5);
  box-shadow:inset 0 1px 0 rgba(255,255,255,0.5);
  cursor:pointer;
 }
 input[type=button]:hover {
  background-color:rgba(255,204,0,0.8);

 .row1
 {
 display:table-row;
 }
 .colomn1
 {
  display: table-column;
        border: solid;
        border-width: thin;
        padding-left: 5px;
        padding-right: 5px;
 }
 .table1
 {
 display: table;
 border: thick; 
 text-align: center justify;
 }
 .floatRight
 {
 direction: rtl;
 color: blue;
 }
</style>

<body>
<div class="floatRight" > </div> 
<%! String name1 =""; %> 

<%  name1=(String)request.getAttribute("User");	%>
<% if(name1.equals("admin"))
{ 
out.println(name1);	
session.setAttribute("User",name1);
}
%>
		
<div class="table1">
	<div  class="row1" >
		<div class="colomn1"><a href="Registration1.jsp" ><input type="button" value="Registration"></a>
		</div>
	</div>
	<div class="row1">
		<div class="colomn1"><a href="GetAttendence.jsp" ><input type="button" value="GetAttendence"></a>
		</div>
	</div>
	<div class="row1">
		<div class="colomn1"><a href="ViewAttendence.jsp" ><input type="button" value="View Attendence"></a>
		</div>
	</div>
	<div class="row1">
		<div class="colomn1"><a href="Account.jsp" ><input type="button" value="Account"></a>
		</div>
	</div>
</div>

</body>
</html>
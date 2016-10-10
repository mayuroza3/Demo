<%@page import="language.Guj_Lang"%>
<%@page import="language.Lang_Interface"%>
<%@ page language="java" contentType="text/html;  charset=UTF-8" pageEncoding="UTF-8" %>
<%! String  language=""; %>
<%
if(language.equals("EN"))
{
	
}
%>
<% 	Lang_Interface li;
	li= new Guj_Lang();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
if(session.getAttribute("User")==null) {
%>
<jsp:include page="index.jsp"></jsp:include>
<%
} %>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style type="text/css">
 body
 {
  font-family: 'Titillium Web', sans-serif;
  background-image: url("../images/bg.jpg");
 }
 .poster
 {
 color: red;
 }
 .logo {
    width: 150px;
    height: 120px;
    content: url(saraswatimarta.jpg);
}

.logoHeader {
    height: 120px;
    vertical-align: middle;
    text-align: center justify; 
}

.floatLeft { float: left; }

.floatRight { float: right; }
.box  
	{ 
	border:  solid 4px green;
	size: auto;
	width: 1000px;
	margin-left: auto ;
 	margin-right: auto ; 
}
.bodybox
{
border-color: maroon;
border-style: double;
}
.topright
{
position: absolute; 
top: 10px; 
right: 20px;  
text-align:right;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register New Student</title>
</head>
<body class="bodybox">
<div class="topright">
<%=session.getAttribute("User")%>
</div>
<form action="RegistrationServlet" method="post" accept-charset="UTF-8" enctype="multipart/form-data">
<table >
<caption align="top" style="font-family:monospace; font-size:xx-small; "> </caption>
<thead><div class="poster center"> 
			<img class="floatLeft" alt="Logo" src="./images/saraswatimata.jpg" height="100px" width="200px" /> 
			<img class="floatRight" alt="Logo" src="./images/saraswatimata.jpg" height="100px" width="200px" />
		 	<center><h2>Shree Katch Kadva Patidar Samaj Modasa Vibhag</h2>Sanchalit
		 	<h3>Shree Khimjibhai Premjibhai Patel(Madasanakampavala)</h3></center><br>
		</div>
		<div class="box">
		<center><h1>Vidhyarthi Bhuvan - Modasa</h1></center>
		</div>
		<div style="width: 500px; margin-left: auto ;margin-right: auto ;">
		<h4>:: Registration Form ::</h4>
		</div>
		
</thead>
<tbody>
<tr>
<td>1.</td>
<td> 
<% out.print(li.STUDENT_NAME());%>
</td> <td><input type="text" name="StudentName" placeholder="Enter Your name" autocomplete ></td>
<td>Photo Graph</td> <td> <input type="file" accept="image/*" onchange="loadFile(event)"> </td>
<td>
<img id="output" width="100" height="100"/></td>
<script>
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
  };
</script>
 </tr>
<tr>
<td>2.</td>
<td><% out.print(li.VILLAGE());%></td> <td><input type="text" name="Villege" placeholder="Villege Name" ></td>
<td><% out.print(li.POST());%></td> <td><input type="text" name="Post" placeholder="Post Name" ></td>
<td><% out.print(li.CITY());%></td> <td><input type="text" name="Taluko" placeholder="Taluko Name" ></td>
</tr>
<tr>
<td></td>
<td><% out.print(li.DISTRICT());%></td> <td><input type="text" name="Dist" placeholder="District Name" ></td>
<td><% out.print(li.PHONE());%></td> <td><input type="tel" name="Phone" placeholder="9999988888" ></td>
<td><% out.print(li.PINCODE());%></td> <td><input type="number" name="pinocde" placeholder="360001" ></td>
</tr>
<tr>
<td></td>
<td><% out.print(li.DOB());%></td> <td><input type="date" name="Birthdate" ></td>
<!-- <td>Age </td> <td><input type="number" name="Age" min="0" max="100" ></td> -->
</tr>
<tr>
<td>3. </td>
<td><% out.print(li.GURDIAN_NAME());%></td> <td><input type="text" name="GuardianName" placeholder="Father or Mother Name" ></td>
<td><% out.print(li.RELATION());%></td> <td><input type="text" name="Relation" placeholder="Father"></td>
</tr>
<tr>
<td>4. </td>
<td><% out.print(li.SCHOOL());%></td> <td><input type="text" name="SchoolName" placeholder="Name of Your current school" ></td>
<td><% out.print(li.STANDARD_ON_ADMISSION());%></td> <td><input type="number" name="Standard" min="1" max="12"> </td>
</tr>
<tr>
<td>5. </td>
<td><% out.print(li.EX_YEAR_IN_HOSTEL());%></td> <td><input type="text" name="LastYearStandard" placeholder="Last Passed Standard" ></td>
</tr>
<tr>
<td><% out.print(li.OBTAINED_MARKS());%></td> <td><input type="number" name="ObtainedMark" min="1" max="700"> </td>
<td><% out.print(li.TOTAL_MARKS());%></td> <td><input type="number" name="TotalMark" min="1" max="700"> </td> 
<td><% out.print(li.PERCENTAGE());%></td><td><input type="number" name="Percentage" min="1" max="100"> </td>
</tr>
<tr></tr>
<tr></tr>
<tr>
<td>
<input type="submit" value="Submit"></
</td>
</tr>


</tbody>
</table>
</form>
</body>
</html>
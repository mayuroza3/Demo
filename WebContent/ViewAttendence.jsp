<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
if(session.getAttribute("User")==null) {
%>
<jsp:include page="index.jsp"></jsp:include>
<%
} %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
a.button {
    -webkit-appearance: button;
    -moz-appearance: button;
    appearance: button;

    text-decoration: none;
    color: initial;
}
.topright
{
position: absolute; 
top: 10px; 
right: 20px;  
text-align:right;
}


</style>
</head>
<body>
<div class="topright">
<%=session.getAttribute("User")%>
</div>

 <table align=center cellpadding=10>
  <tr colspan=2>
   <td colspan=2  align=center> <img src="logo.jpg"/>
   
  <tr colspan=2>
   <td align="center" colspan=2><h2><i>DETAILED INFORMATION</i></h2>
  </td>
  </tr>
 <tr>
  <td>
 
 <table cellpadding=5 cellspacing=0>
  
  <tr bgcolor="limegreen">
  <th>ID</th>
  <th>Name</th>
  <th> <!-- get current and all date -->7/10 
  <th>6/10 </th>
  <th>5/10 </th>
  <th>4/10 </th>
  <th>3/10 </th>
  <th> </th>
  </tr>
  <tr>
  <td>101 <!-- get feching code for all entries -->
  <td>XYZ</td>
  <td>12:15:12</td> 
  <td>12:15:12</td>
  <td>12:15:12</td>
  <td>12:15:12</td>
  <td>12:15:12 </td>
  <td> <a href="ViewStudentInfo.jsp" class="button"><input type="button" value="View More"></a></td>
 </tr>
 </table>
</td>
</tr>
</table>

</body>
</html>
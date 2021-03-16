<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Manage Contacts</title>
<style>
body {background-color: powderblue;}
h1,h4   {color: blue;}
p    {color: red;}
</style>
</head>
<body>
<div align ="center">
<h1>Allied WMS</h1>
</div>

<div align ="center">
<table border="1">
<tr>
<td><a href="logingranted.jsp"><b>Home</b></a></td>
<td><a href="AdminTranscation.jsp"><b>Make Transaction</b></a></td>
<td><a href="aboutus.jsp"><b>About US</b></a></td>
<td><a href="login.jsp"><b>Logout</b></a></td>
</tr>
</table>
</div>

<h4>Add Contact</h4>
<form action ="processnewcustomer.jsp" method="post">
<div class= "deposit page">
<p style="color:red">
<div class= "form section">
<TABLE>

<TR>
<TH width="50%">First Name</TH>
<TD width="50%"><INPUT TYPE="text" NAME="firstname"></TD>
</tr>
<TR>
<TH width="50%">Last Name</TH>
<TD width="50%"><INPUT TYPE="text" NAME="lastname"></TD>
</tr>
<TR>
<TH width="50%">Age</TH>
<TD width="50%"><INPUT TYPE="text" NAME="age"></TD>
</tr>
<TR>
<TH width="50%">City</TH>
<TD width="50%"><INPUT TYPE="text" NAME="city"></TD>
</tr>
<TR>
<TH width="50%">State</TH>
<TD width="50%"><INPUT TYPE="text" NAME="state"></TD>
</tr>
<TR>
<TH width="50%">Company</TH>
<TD width="50%"><INPUT TYPE="text" NAME="company"></TD>
</tr>
<TR>
<TH width="50%">ZipCode</TH>
<TD width="50%"><INPUT TYPE="text" NAME="zipcode"></TD>
</tr>
<TR>
<TH width="50%">CID</TH>
<TD width="50%"><INPUT TYPE="text" NAME="id"></TD>
</tr>
<TR>
<TH></TH>
<TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
</tr>
</TABLE>

</FORM>
</body> 
</html>









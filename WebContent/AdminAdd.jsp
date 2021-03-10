<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Add Adminstrator</title>
<style>
body {background-color: powderblue;}
h1   {color: blue;}
p    {color: red;}
</style>
</head>
<body>
<div align ="center">
<h1>Add Admin</h1>
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


<form action ="processnewadmin.jsp" method="post">
<div class= "deposit page">
<p style="color:red">
<div class= "form section">
<TABLE>

<TR>
<TH width="50%">User Name</TH>
<TD width="50%"><INPUT TYPE="text" NAME="username"></TD>
</tr>
<TR>
<TH width="50%">Password</TH>
<TD width="50%"><INPUT TYPE="text" NAME="password"></TD>
</tr>
<TR>
<TH width="50%">Admin number</TH>
<TD width="50%"><INPUT TYPE="text" NAME="adminnumber"></TD>
</tr>
<TR>
<TH width="50%">Security Code</TH>
<TD width="50%"><INPUT TYPE="text" NAME="securitycode"></TD>
</tr>

<TR>
<TH></TH>
<TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
</tr>
</TABLE>

</FORM>
</body> 
</html>









<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Manage Inventory</title>
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

<h4>Add Inventory</h4>
<form action ="processnewinventory.jsp" method="post">
<div class= "deposit page">
<p style="color:red">
<div class= "form section">
<TABLE>

<TR>
<TH width="50%">Item ID</TH>
<TD width="50%"><INPUT TYPE="text" NAME="itemid"></TD>
</tr>
<TR>
<TH width="50%">Description</TH>
<TD width="50%"><INPUT TYPE="text" NAME="des"></TD>
</tr>
<TR>
<TH width="50%">Avaliable</TH>
<TD width="50%"><INPUT TYPE="text" NAME="avaliability"></TD>
</tr>
<TR>
<TH width="50%">Stock</TH>
<TD width="50%"><INPUT TYPE="text" NAME="stock"></TD>
</tr>
<TR>
<TH width="50%">Product ID</TH>
<TD width="50%"><INPUT TYPE="text" NAME="id"></TD>
</tr>
<TR>
<TH width="50%">Sold Quantity</TH>
<TD width="50%"><INPUT TYPE="text" NAME="quanity"></TD>
</tr>

<TR>
<TH></TH>
<TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
</tr>
</TABLE>

</FORM>
</body> 
</html>









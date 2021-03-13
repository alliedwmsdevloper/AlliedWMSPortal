<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Transaction</title>
<style>
body {background-color: powderblue;}
h1,h4   {color: blue;}
h5   {color: green;}
p    {color: red;}
</style>
</head>

<body>

<div align ="center">
<h1>Adminstrative Transaction</h1>
</div>

<div align ="center">
<table border="1">
<tr>
<td><a href="logingranted.jsp"><b>Home</b></a></td>
<td><a href="aboutus.jsp"><b>About US</b></a></td>
<td><a href="login.jsp"><b>Logout</b></a></td>
</tr>
</table>
</div>

<h5> _______________________________________________________________________________________</h5>
<div alight = "left">
<table table TABLE style="background-color: powderblue;" WIDTH="50%" border="1">
<h4> Adminstrative Overview</h4>

<tr>
<tr><td><a href=""><b>Admins</b></td><td><input type="submit" value="->" name="withdraw" onclick="location.href='AdminView.jsp'"></td></tr>
<tr><td><a href=""><b>Add Admins</b></td><td><input type="submit" value="->" name="withdraw" onclick="location.href='AdminAdd.jsp'"></td></tr>
<tr><td><a href=""><b>Update Admins</b></td><td><input type="submit" value="->" name="withdraw" onclick="location.href=''"></td></tr>
</tr>
</table>
</div>
<h5> _______________________________________________________________________________________</h5>

</body>

</html>
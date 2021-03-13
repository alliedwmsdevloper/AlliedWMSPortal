<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {background-color: powderblue;}
h1,h4   {color: blue;}
h5 {color: green;}
p    {color: red;}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Allied WMS</title>
</head>
<body>
<div align ="center">

<h1>Allied Warehouse Managment System</h1>

<table border="1">
<tr>
<td><a href="logingranted.jsp"><b>Home</b></a></td>
<td><a href="AdminTranscation.jsp" name= "admincontrol"><b>Admin Control</b></a></td>
<td><a href="aboutus.jsp" name= "aboutus"><b>About US</b></a></td>
<td><a href="login.jsp" name= "logout"><b>Logout</b></a></td>
</tr>
</table>
<h5> _______________________________________________________________________________________</h5>
<% String username = request.getParameter("username"); %>
<a>Welcome  !!! You have logged in.</a></td></tr>


<div alight = "left">
<h5> _______________________________________________________________________________________</h5>
<table table TABLE style="background-color: powederblue;" WIDTH="30%" border="1">
<h4> Material Managment</h4>

<tr>
<tr><td><a href=""><b>Material</b></td><td><input type="submit" value="->" name="inventory" onclick="location.href='InventoryView.jsp'"></td></tr>
<tr><td><a href=""><b>Add Material</b></td><td><input type="submit" value="->" name="addinventory" onclick="location.href='InventoryAdd.jsp'"></td></tr>
<tr><td><a href=""><b>Update Inventory</b></td><td><input type="submit" value="->" name="updateinventory" onclick="location.href='aboutus.jsp'"></td></tr>
</tr>
</table>
<h5> _______________________________________________________________________________________</h5>
<table table TABLE style="background-color: powderblue;" WIDTH="30%" border="1">
<h4> Customer Managment</h4>

<tr>
<tr><td><a href=""><b>Contacts</b></td><td><input type="submit" value="->" name="contact" onclick="location.href='CustomerView.jsp'"></td></tr>
<tr><td><a href=""><b>Add Contacts</b></td><td><input type="submit" value="->" name="addcontact" onclick="location.href='CustomerAdd.jsp'"></td></tr>
<tr><td><a href=""><b>Update Contacts</b></td><td><input type="submit" value="->" name="updatecontact" onclick="location.href=''"></td></tr>
</tr>
</table>
<h5> _______________________________________________________________________________________</h5>
<table table TABLE style="background-color: powderblue;" WIDTH="30%" border="1">
<h4> Order Managment</h4>

<tr>
<tr><td><a href=""><b>Order</b></td><td><input type="submit" value="->" name="order" onclick="location.href='OrderView.jsp'"></td></tr>
<tr><td><a href=""><b>Add Order</b></td><td><input type="submit" value="->" name="addorder" onclick="location.href='OrderAdd.jsp'"></td></tr>
<tr><td><a href=""><b>Update Order</b></td><td><input type="submit" value="->" name="updateorder" onclick="location.href=''"></td></tr>
</tr>
</table>

<h5> _______________________________________________________________________________________</h5>


</div>

</body>
</html>
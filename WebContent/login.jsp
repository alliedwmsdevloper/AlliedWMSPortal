<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WMS ADMIN Portal Main Page</title>
<style>
body {background-color: powderblue;}
h1   {color: blue;}
p    {color: red;}
</style>

</head>
<body>
<div align ="center">
<h1>Warehouse Managment System</h1>
<h2>Admin Portal </h2>
</div>

<form action ="login" method="post"name = "validate">
<div class= "login page">
<p style="color:red">
<div class= "form section">
<h3>Please enter your credentials below</h3>
<table>
<tr><td>User Name Name: </td><td><input type="text" name="username"></td></tr>
<tr><td>Password: </td><td><input type="password" name="password"></td></tr>
<tr><td>Admin ID [0 -9] : </td><td><input type="accountno" name="accountno"></td></tr>
<tr><td>Security Code [0-9]: </td><td><input type="zipcode" name="zipcode"></td></tr>
<tr><td></td><td><input type="submit" name="loginsubmit"></td></tr>
</table>
</div>

</form>

</div>
</body>
</html>

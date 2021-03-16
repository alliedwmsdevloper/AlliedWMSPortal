<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String dbUrl ="jdbc:mysql://localhost:3306/";
String dbUname = "root";
String database = "BankingDB";
String dbPassword = "Letmein211!";
String dbDriver = "com.mysql.cj.jdbc.Driver";


try {
Class.forName(dbDriver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<head>
<meta charset="UTF-8">
<title>View Inventory</title>
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
<td><a href="AdminTranscation.jsp"><b>Admin Control</b></a></td>
<td><a href="aboutus.jsp"><b>About US</b></a></td>
<td><a href="login.jsp" name= "logout"><b>Logout</b></a></td>
</tr>
</table>
</div>

<h4>Inventory</h4>
<table style="background-color: powderblue;" WIDTH="50%" border="1">
<tr>
<td>Item ID</td>
<td>Description</td>
<td>Avaliability</td>
<td>Stock</td>
<td>Product ID</td>
<td>Sold Quanity</td>
</tr>
<%
try{
connection = DriverManager.getConnection(dbUrl+database, dbUname, dbPassword);
statement=connection.createStatement();
String sql ="select * from product";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("item_ID") %></td>
<td><%=resultSet.getString("Description") %></td>
<td><%=resultSet.getInt("Avaliable") %></td>
<td><%=resultSet.getString("InStock") %></td>
<td><%=resultSet.getString("ID") %></td>
<td><%=resultSet.getString("sold") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
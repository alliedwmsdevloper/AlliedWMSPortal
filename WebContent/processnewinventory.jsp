<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<title>Manage Inventory Process</title>
<style>
body {background-color: powderblue;}
h1,h3   {color: blue;}
p    {color: red;}
</style>
</head>
<body>
<div align ="center">
<h3>Confirmation Page</h3>
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


<form action ="" method="post">
<div class= "deposit page">
<p style="color:red">
<div class= "form section">

<%

String itemid = request.getParameter("itemid");
String des = request.getParameter("des");
String avl = request.getParameter("avaliability");
String stock = request.getParameter("stock");
String id = request.getParameter("id");
String qut = request.getParameter("quanity");
PreparedStatement pstatement = null;
int updateQuery = 0;
if(itemid!=null &&  des!=null && avl!=null && stock!=null && id!=null &&    qut!=null  )
{
if(itemid!="" &&  des!= "" && avl!= "" && stock!="" && id!="" &&    qut!= "" )
{
try {

connection = DriverManager.getConnection(dbUrl+database, dbUname, dbPassword);
String sql = "insert into product(item_ID,Description,Avaliable,InStock,ID,sold) values(?,?,?,?,?,?)";
pstatement = connection.prepareStatement(sql);
pstatement.setString(1, itemid);
pstatement.setString(2, des);
pstatement.setString(3, avl);
pstatement.setString(4, stock);
pstatement.setString(5, id);
pstatement.setString(6, qut);


updateQuery = pstatement.executeUpdate();
if (updateQuery != 0) {%>
<br>
<TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
<tr><th>Data is inserted successfully in database.</th></tr>
</table>
<h5> _______________________________________________________________________________________</h5>
<table TABLE style="background-color: #powderblue;" WIDTH="30%" border="1">
<tr><td><a href=""><b>View Inventory</b></td><td><input type="submit" value="->" name="order" onclick="location.href='InventoryView.jsp'"></td></tr>
</table>
<h5> _______________________________________________________________________________________</h5>
<%
}
} 
catch (Exception ex){
out.println("Unable to connect to batabase.");
}finally {
// close all the connections.
pstatement.close();
connection.close();
}
}
}
%>
</FORM>
</body> 
</html>

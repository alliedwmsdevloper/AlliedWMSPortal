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
<title>Manage Order Process</title>
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


String orderid = request.getParameter("orderid");
String addr = request.getParameter("addr");
String city = request.getParameter("city");
String state = request.getParameter("state");
String zipcode = request.getParameter("zipcode");
String quant = request.getParameter("quant");
String cid = request.getParameter("cid");
String pid = request.getParameter("pid");

PreparedStatement pstatement = null;
int updateQuery = 0;
if(orderid!=null && addr!=null && city!=null && state!=null &&    zipcode!=null &&    quant!=null && cid != null && pid!= null)
{
if(orderid!= "" && addr!= "" && city!="" && state!="" &&    zipcode!= "" &&    quant!= "" && cid!= "" && pid != "")
{
try {

connection = DriverManager.getConnection(dbUrl+database, dbUname, dbPassword);
String sql = "insert into customerorder(orderid,address,city,state,zipcode,quantity,CID,PID) values(?,?,?,?,?,?,?,?)";
pstatement = connection.prepareStatement(sql);
pstatement.setString(1, orderid);
pstatement.setString(2, addr);
pstatement.setString(3, city);
pstatement.setString(4, state);
pstatement.setString(5, zipcode);
pstatement.setString(6, quant);
pstatement.setString(7, cid);
pstatement.setString(8, pid);
updateQuery = pstatement.executeUpdate();
if (updateQuery != 0) {%>
<br>
<TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
<tr><th>Data is inserted successfully in database.</th></tr>
</table>
<h5> _______________________________________________________________________________________</h5>
<table TABLE style="background-color: #powderblue;" WIDTH="30%" border="1">
<tr><td><a href=""><b>View Order</b></td><td><input type="submit" value="->" name="order" onclick="location.href='OrderView.jsp'"></td></tr>
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

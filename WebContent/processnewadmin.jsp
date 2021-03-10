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
<title>Validate Admin</title>
<style>
body {background-color: powderblue;}
h1   {color: blue;}
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
<td><a href="aboutus.jsp"><b>About US</b></a></td>
<td><a href="login.jsp"><b>Logout</b></a></td>
</tr>
</table>
</div>


<form action ="admintranscation.jsp" method="post">
<div class= "deposit page">
<p style="color:red">
<div class= "form section">

<%

String username = request.getParameter("username");
String password= request.getParameter("password");;
String adminnumber = request.getParameter("adminnumber");
String zipcode = request.getParameter("securitycode");
PreparedStatement pstatement = null;
int updateQuery = 0;
if(username!=null &&  password!=null && adminnumber!=null && zipcode!=null )
{
if(username!="" &&  password!="" && adminnumber!="" && zipcode!="")
{
try {

connection = DriverManager.getConnection(dbUrl+database, dbUname, dbPassword);
String sql = "insert into record(username,password,accountnumber,zipcode) values(?,?,?,?)";
pstatement = connection.prepareStatement(sql);
pstatement.setString(1, username);
pstatement.setString(2, password);
pstatement.setString(3, adminnumber);
pstatement.setString(4, zipcode);


updateQuery = pstatement.executeUpdate();
if (updateQuery != 0) {%>
<br>
<TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
<tr><th>Data is inserted successfully in database.</th></tr>
</table>
<h5> _______________________________________________________________________________________</h5>
<table TABLE style="background-color: #powderblue;" WIDTH="30%" border="1">
<tr><td><a href=""><b>View Admin</b></td><td><input type="submit" value="->" name="order" onclick="location.href='AdminView.jsp'"></td></tr>
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

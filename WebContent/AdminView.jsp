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
<title>Admin Page</title>
<style>
body {background-color: powderblue;}
h1   {color: blue;}
p    {color: red;}
</style>
</head>
</head>
<body>

<div align ="center">
<h2>Manage Admins</h2>
</div>

<div align ="center">
<table border="1">
<tr>
<td><a href="logingranted.jsp"><b>Home</b></a></td>
<td><a href="AdminTranscation.jsp"><b>Make Transaction</b></a></td>
<td><a href="login.jsp"><b>Logout</b></a></td>
</tr>
</table>
</div>



<body>


<h4>Admins</h4>
<table border="1">
<tr>
<td>User Name</td>
<td>Password</td>
<td>Admin Number</td>
<td>Zipcode</td>
</tr>
<%
try{
connection = DriverManager.getConnection(dbUrl+database, dbUname, dbPassword);
statement=connection.createStatement();
String sql ="select * from record ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>
<td><%=resultSet.getInt("accountnumber") %></td>
<td><%=resultSet.getInt("zipcode") %></td>
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
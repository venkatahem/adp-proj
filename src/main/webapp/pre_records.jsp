<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Donations</title>
<style>
body {
  background-image: linear-gradient(
    to right,
    rgb(154, 220, 241),
    rgb(231, 247, 247)
  );
  font-family: Verdana, Geneva, Tahoma, sans-serif;
}
</style>
</head>
<body>
<%
 
 	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");	
 
 	if(session.getAttribute("username")==null)
 	{
 		response.sendRedirect("login.jsp");
 	}
 %>


<%
String name = (String)session.getAttribute("username"); 
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "donations";
String userId = "root";
String password = "hem";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Your Previous Donations</strong></font></h2>
<table align="center" cellpadding="5" >
<tr>

</tr>
<tr bgcolor="#F7BA6B">
<td><b>Name</b></td>
<td><b>Item</b></td>
<td><b>Quantity</b></td>
<td><b>Item</b></td>
<td><b>Quantity</b></td>
<td><b>Item</b></td>
<td><b>Quantity</b></td>
<td><b>Item</b></td>
<td><b>Quantity</b></td>
<td><b>Item</b></td>
<td><b>Quantity</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM donation_record WHERE Name = '"+name+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("Name") %></td>
<td><%=resultSet.getString("Item1") %></td>
<td><%=resultSet.getString("Quan1") %></td>
<td><%=resultSet.getString("Item2") %></td>
<td><%=resultSet.getString("Quan2") %></td>
<td><%=resultSet.getString("Item3") %></td>
<td><%=resultSet.getString("Quan3") %></td>
<td><%=resultSet.getString("Item4") %></td>
<td><%=resultSet.getString("Quan4") %></td>
<td><%=resultSet.getString("Item5") %></td>
<td><%=resultSet.getString("Quan5") %></td>

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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<title>Voting System</title>


</head>
<body>
  <div id="page">
    <div id="header">
      <div id="section">
        <div
          style="text-align: center; color: white; margin: 0px 0 0px 324px;">
          <h1>Online Voting System</h1>

        </div>
      </div>
      <ul>
        
        <li ><a href="addvoter.jsp">ENROLL</a></li>
        <li class="current"><a href="listvoter.jsp">CANDIDATES</a></li>
        <li ><a href="result.jsp">RESULTS</a></li>
        
        
        <li><a href="logout.jsp">Logout</a></li>
        <li><a href="awelcome.jsp"><b>WELCOME<%
					 out.println(" MR "+session.getAttribute("username"));
					 %></b></a></li>
        
      </ul>
<%
String id=request.getParameter("id");

try {

Class.forName("com.mysql.jdbc.Driver");


} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{

connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/voters", "root", "@sai2001!");
statement=connection.createStatement();
String sql ="select * from candidate where id="+id;

resultSet = statement.executeQuery(sql);

while(resultSet.next()){
	
%>


<h1>Update data from database in jsp</h1>
<form method="post" action="aupdate-process.jsp">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
First name:<br>
<input type="text" name="first_name" value="<%=resultSet.getString("fname") %>">
<br>
Last name:<br>
<input type="text" name="last_name" value="<%=resultSet.getString("lname") %>">
<br>
City name:<br>
<input type="text" name="dept_name" value="<%=resultSet.getString("dname") %>">
<br>
Email Id:<br>
<input type="email" name="email" value="<%=resultSet.getString("email") %>">
<br><br>
<input type="submit" value="submit">

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</form>
</body>
<div id="footer">
        <div>
          <div class="section">
            <p style="text-align: center;">Copyright &copy; SMK team- All Rights Reserved.</p>
          </div>
        </div>
      </div>
      </diV>
    </html>
      
      




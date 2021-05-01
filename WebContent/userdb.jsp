<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <li ><a href="listvoter.jsp">CANDIDATES</a></li>
        <li ><a href="result.jsp">RESULTS</a></li>
        
        
        <li><a href="logout.jsp">Logout</a></li>
        <li><a href="awelcome.jsp">Welcome</a></li>
        
      </ul>
    <%
try {

Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

%>
<h1>REGISTERED USERS </h1>
<form>

<table border="1">

<tr>
<th>ID</th>
<th>FIRST NAME</th>
<th>LAST NAME</th>
<th>USERNAME</th>
<th>PASSWORD</th>
<th>Edit</th>
<th>Edit</th>
</tr>


<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/voters", "root", "@sai2001!");
//connection1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/voters", "root", "@sai2001!");

statement=connection.createStatement();
//statement1=connection1.createStatement();

String sql ="select * from studentdata";
//String sql1 ="select COUNT(*) from votecount where email='"+resultSet1.getString("email")+"';";

resultSet = statement.executeQuery(sql);
//resultSet1 = statement.executeQuery(sql1);
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("lname") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>






<td><a href="udelete.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="delete">Delete</button></a></td>
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>



</form> 
</body>
</html>

      <div id="footer">
        <div>
          <div class="section">
            <p style="text-align: center;">Copyright &copy; SMK team- All Rights Reserved.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
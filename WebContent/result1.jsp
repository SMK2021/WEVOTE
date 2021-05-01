<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>

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
<title>WE VOTE</title>


</head>
<body>
  <div id="page">
    <div id="header">
      <div id="section">
        <div
          style="text-align: center; color: white; margin: 0px 0 0px 324px;">
          <h1>Online Voting System</h1>
          <h2>ADMIN PORTAL</h2>

        </div>
      </div>
      <ul>
        
        <li ><a href="addvoter.jsp">ENROLL</a></li>
        <li ><a href="listvoter.jsp">CANDIDATES</a></li>
        <li class="current"><a href="result1.jsp">RESULTS</a></li>
        
        
        <li><a href="logout.jsp">Logout</a></li>
        <li><a href="awelcome.jsp"><b>WELCOME<%
					 out.println(" MR "+session.getAttribute("username"));
					 %></b></a></li>
        
      </ul>
    <%
try {

Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Connection connection1 = null;
Statement statement = null;
Statement statement1 = null;

ResultSet resultSet = null;
ResultSet resultSet1 = null;


%>
<h1>Retrieve data from database in jsp</h1>
<form>

<table border="1">

<tr>
<th>id</th>
<th>first name</th>
<th>last name</th>
<th>City name</th>
<th>Email</th>
<th>vote</th>

</tr>


<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/voters", "root", "@sai2001!");
//connection1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/voters", "root", "@sai2001!");

statement=connection.createStatement();
statement1=connection.createStatement();


String sql ="select * from candidate";

String s = "";

resultSet = statement.executeQuery(sql);
//resultSet1 = statement.executeQuery(sql1);
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("lname") %></td>
<td><%=resultSet.getString("dname") %></td>
<% s = resultSet.getString("email");%>
<td><%out.println(s);%><td>
<% String sql1 ="select COUNT(*) from votecount where email='"+s+"';"; 
resultSet1 = statement1.executeQuery(sql1);%>
<% 
while(resultSet1.next()){
out.println(resultSet1.getString("COUNT(*)"));

%>
</tr>
<!-- out.println(resultSet2.getString("MAX(*)")); -->

<!-- </form>-->






<!--<td><%=resultSet.getString("vote") %></td> -->


<!--<td><a href="aupdate.jsp?id=<%=resultSet.getString("id")%>"><button type="button" class="delete">Update</button></a></td>-->

<!--<td><a href="adelete.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="delete">Delete</button></a></td>-->


<%
}
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>



</form> 


      
    </div>
  </div>
</body>
</html>
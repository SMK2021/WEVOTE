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
<title>WE VOTE</title>


</head>
<body>
  <div id="page">
    <div id="header">
      <div id="section">
        <div
          style="text-align: center; color: white; margin: 0px 0 0px 324px;">
          <h1>WE VOTE</h1>
          <h2>USER PORTAL</h2>

        </div>
      </div>
      <ul>
        
        <li class="current"><a href="vote.jsp">Vote Here</a></li>
        <li><a href="vote-stats.jsp">CONTACT</a></li>
        
        
        
        <li><a href="logout.jsp">Logout</a></li>
        <li><a href="welcome.jsp"><b>Welcome<%
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
Statement statement = null;
ResultSet resultSet = null;

%>
<h1>PLEASE SELECT YOUR CANDIDATE</h1>
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
statement=connection.createStatement();
String sql ="select * from candidate";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("lname") %></td>
<td><%=resultSet.getString("dname") %></td>
<td><%=resultSet.getString("email") %></td>
<td><label><input type="radio" name="radios" value="<%= resultSet.getString("email") %>" id="myRadio"></label></td> 
<!-- </form>-->
<!-- <td><%=resultSet.getString("vote") %></td> -->
<!--<td><a href="aupdate.jsp?id=<%=resultSet.getString("email") %>"><button type="button" class="update">update</button></a></td>-->
<!--<td><a href="adelete.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="delete">Delete</button></a></td>-->
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<button type="submit" onclick="display()" id="submitButton" formaction="votecount.jsp">Submit</button>


</form> 
  <p>VOTES TILL NOW <span id="displayCount">0</span></p>
 
 <script type="text/javascript">
 function display() {
	  var x = document.getElementById("myRadio").value;
	  alert("The value of the radio button is: " + x);
	  out.println(+x);
	} 
      var count = 0;
      var button = document.getElementById("submitButton");
      var display = document.getElementById("displayCount");
      button.onclick = function(){
        count++;
        if(count==1)
        	{
        display.innerHTML = count;
        	}
        else
        	{
        	out.println("WE HAVE ALREADY RECIVED UR VOTE")
        	}
      }
      </script>
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
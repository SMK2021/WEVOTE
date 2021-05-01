<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%

Connection con = null;
String id=request.getParameter("id");
try
{
  
  Class.forName("com.mysql.jdbc.Driver");
  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voters", "root", "@sai2001!");
Statement st=con.createStatement();
int i=st.executeUpdate("DELETE FROM candidate WHERE id="+id);
out.println("Data Deleted Successfully!");
response.sendRedirect("listvoter.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
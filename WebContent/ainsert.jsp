<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>

<%
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String dept_name=request.getParameter("dept_name");
String email=request.getParameter("email");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voters", "root", "@sai2001!");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("insert into candidate(fname,lname,dname,email)values('"+first_name+"','"+last_name+"','"+dept_name+"','"+email+"')");
	out.println("Data is successfully inserted!");
	RequestDispatcher rd = getServletContext().getRequestDispatcher("/addvoter.jsp");
	rd.include(request, response);
	
	

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
RequestDispatcher rd = getServletContext().getRequestDispatcher("/addvoter.jsp");
rd.include(request, response);
out.println("you have registered candidate already");

}
%>
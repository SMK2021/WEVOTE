<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>
<% 

String candidate_mail = request.getParameter("radios");
String voter_username = (String)session.getAttribute("username");

//out.println(candidate_mail);
//out.println(voter_username);

//Class.forName("com.mysql.jdbc.Driver");
//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voters", "root", "@sai2001!");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voters", "root", "@sai2001!");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("insert into votecount(uname,email)values('"+voter_username+"','"+candidate_mail+"');");
	out.println("Data is successfully inserted!");
	RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
	rd.include(request, response);
	
	

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
rd.include(request, response);
out.println("we have already recived ur vote..1USER == 1 VOTE");



}
%>




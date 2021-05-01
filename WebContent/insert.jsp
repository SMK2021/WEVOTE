<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>

<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String uname=request.getParameter("uname");
String regpwd=request.getParameter("regpwd");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voters", "root", "@sai2001!");
Statement st=conn.createStatement();

//int i=st.executeUpdate("insert into reg(cname,cpwd,cmail,ccontact) values('"+cname+"','"+pass+"','"+email+"','"+contact+"')");

int i=st.executeUpdate("insert into studentdata(fname,lname,username,password) values('"+fname+"','"+lname+"','"+uname+"','"+regpwd+"')");
out.println("registered successfully!");
RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
rd.include(request, response);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
RequestDispatcher rd = getServletContext().getRequestDispatcher("/register.jsp");
rd.include(request, response);
out.println("Username is already available please change the username");%>
<br>
<html>
<a href="register.jsp">RE REGISTER </a>
</html>
<%}
%>
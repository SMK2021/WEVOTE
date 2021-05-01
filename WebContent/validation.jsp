<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String connurl = "jdbc:mysql://localhost:3306/voters";
Connection con=null;
String pass="";
String id="";
String em=request.getParameter("uname");
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "@sai2001!");
Statement st=con.createStatement();
//ResultSet rs=st.executeQuery("select * from reg where id=9");
ResultSet rs=st.executeQuery("select * from studentdata where username='"+em+"'");
while(rs.next()){
id=rs.getString(4);
//cname=rs.getString(2);
pass=rs.getString(5);
} 

out.println("MR "+id+""+"  "+" your password is: "+pass+" ");
RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
rd.include(request, response);
st.close();
con.close();
}
catch(Exception e){
out.println(e);
}
%>
<br>
<a href="login.jsp">RELOGIN</a>
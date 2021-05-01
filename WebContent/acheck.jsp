<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>



<%
    
    
    String uname=request.getParameter("username");
    String regpwd=request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voters", "root", "@sai2001!");
    Statement st = conn.createStatement();
    String ss="select * from admin";
    session.setAttribute("username", uname);
    ResultSet rs= st.executeQuery(ss);
    int k=0;
    //ResultSet rs=st.executeQuery("select * from studentdata where username='"+uname+"'and pass='" + regpwd + "'");
     while(rs.next())
      {
        //user is not admin but a voter 
        if(uname.equals(rs.getString("username")) && regpwd.equals(rs.getString("password")))
        {
        	k=1;
        	RequestDispatcher rd = getServletContext().getRequestDispatcher("/aindex.jsp");
        	rd.include(request, response);
        	
        }
      
      
      }
     if(k==0)
     {
    	 RequestDispatcher rd = getServletContext().getRequestDispatcher("/alogin.jsp");
    		rd.include(request, response);
    		out.println("invalid username and password");
    	 
     }
    
    
    
    
%>
  
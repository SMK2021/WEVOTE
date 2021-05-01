<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>


		
<head>
<meta charset="ISO-8859-1">
<title>logouting...</title>

    
	
</head>
<body>
<%
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    session.setMaxInactiveInterval(10*60);
    session.removeAttribute("username");
	if(session.getAttribute("username")==null)
	{
	  response.sendRedirect("login.jsp");

	  }%>
</body>
</html>
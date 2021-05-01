<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<title>WE VOTE</title>
<%
	String userName = null;
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("username"))
				userName = cookie.getValue();
		}
	}
	if (userName == null)
		response.sendRedirect("login.jsp");
%>
</head>
<body>
	<div id="page">
		<div id="header">
			<div id="section">
				<div
					style="text-align: center; color: white; margin: 0px 0 0px 324px;">
					<h1>WE VOTE</h1>
					<h2>ADMIN PORTAL</h2>
				</div>
			</div>
			<ul>
				
				<li><a href="addvoter.jsp">ENROLL</a></li>
				<li><a href="listvoter.jsp">CANDIDATES</a></li>
				
				<li ><a href="result1.jsp">RESULTS</a></li>
				<li><a href="logout.jsp">Logout</a></li>
				<li><a class="welcome"><b>WELCOME<%
					 out.println(" MR "+session.getAttribute("username"));
					 %></b></a></li>
			</ul>
			 <h2>WELCOME DEAR <%out.println(" MR "+session.getAttribute("username")); %> to admin portal</h2>
			<h2>DATABASE</h2>
			<h3><a href="userdb.jsp">USER DATABASE</a></h3>
			<h3><a href="listvoter.jsp">CANDIDATE DATABASE</a></h3>
			<h3><a href="result1.jsp">PARTICIPATED CANDIDATES DATABASE</a></h3>
		</div>

		
	</div>
</body>
</html>
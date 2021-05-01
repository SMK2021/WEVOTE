<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
					<h2>ADMIN PORTAL</h2>
				</div>
			</div>
			<ul>
				
				
				<li class="current"><a class="addvoter.jsp"><b>ENROLL</b></a></li>
				<li ><a href="listvoter.jsp">CANDIDATES</a></li>
				
				<li ><a href="result1.jsp">RESULTS</a></li>
				<li><a href="logout.jsp">Logout</a></li>
				<li><a href="awelcome.jsp"><b>WELCOME<%
					 out.println(" MR "+session.getAttribute("username"));
					 %></b></a></li>
			</ul>
			<h1 style=color:red>ENTER DATA</h1>
<form method="post" action="ainsert.jsp">
First name:<br>
<input type="text" name="first_name">
<br>
Last name:<br>
<input type="text" name="last_name">
<br>
Department:<br>
<input type="text" name="dept_name">
<br>
Email Id:<br>
<input type="email" name="email">
<br><br>
<input type="submit" value="submit">
</form>
		<!-- 	<div id="tagline" style="text-align: justify;">
				<div style="font-size: 17px">
					Online Voting System
				</div> -->
			</div>
		</div>
		
		
		
		

		<div id="footer">
			<div>
				<div class="section">
					<p style="text-align: center">Copyright &copy; SMK team- All Rights Reserved.</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


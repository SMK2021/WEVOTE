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
					<h2>USER PORTAL</h2>
					
				</div>
			</div>
			<ul>
				
				<li><a href="vote.jsp">Vote Here</a></li>
				<li class="current"><a href="vote-stats.jsp">CONTACT</a></li>
				
				
				<li><a href="logout.jsp">Logout</a></li>
				<li><a href="welcome.jsp"><b>WELCOME<%
					 out.println(" MR "+session.getAttribute("username"));
					 %></b></a></li>
			</ul>
			
			<h1>CONTACT ADREESS</h1>
			<br>
			<a>KL UNIVERSITY HYDERABAD</a><br>
			<a>HYDERABAD</a>
			
			<h3>TEAM DETAILS</h3>
			<a>SAIMANOJ KUMAR KANKANALA-190330103</a><br>
			<a>AKSHAY VADALA-190330253</a><br>
			<a>ANVESH BEMORE-190330015</a><br><br>
			<a>for more information reach us at mail:190330103@klh.edu.in</a>
			
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
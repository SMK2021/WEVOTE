<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ONLINE UNIVERSITY VOTING SYSTEM</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<div class="page-container">
<h1 style="padding: 0px 0px 85px 0;color: darkturquoise;">WELCOME TO ONLINE  UNIVERSITY VOTING SYSTEM</h1>
            <h1 style="margin: 0px 0px 16px 0px;">LOGIN</h1>
            <form method="post" action="checking.jsp">
                <input type="text" name="username" class="username">
                <input type="password" name="password" class="password">
                <button type="submit">Sign me in</button>
                <button name="signup" type="button" id="signup" value="Sign Up"
												onclick="window.location.href='register.jsp'">Register me</button>
                <div class="error"><span>+</span></div>
                <br>
                <a href="forgot.jsp">FORGOT PASSWORD</a>
                <a href="alogin.jsp">ADMIN LOGIN</a>
            </form>
            <a href="index.html">BACK TO HOME</a>
        </div>

        <!-- JavaScript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
</body>
</html>
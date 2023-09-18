<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page Choice</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div>
 <center>
  <a class="logo" style="color:maroon;font-size:60px;" >Welcome To FlyAway</a>
  <img src="https://www.flylax.com/-/media/flylax/flyaway/flyaway-logo-blue.ashx" height="80px" width="80%">
  <div class="header-right">
  <a href="AdminLogin.jsp" style="font-size:30px; float:right; margin-right:30px;">Back to Admin Login</a>
  <a href="welcomeP.jsp" style="font-size:30px; float:left; margin-left:30px;">Home</a>
  <br><br><br>
  <div style="font-size:20px;border:2px solid black;width:50% ;margin:auto;border-radius:20px ;padding:20px "align="center">

  

<form action="AdminPassword" method= post>
	
	<label for=email>Enter Email id  : &nbsp;&nbsp;&nbsp;</label>
     <input type="email" name=a_email id=email/>
   	 <br><br>
   	 <label for= pass>Enter New Password :&nbsp;</label>
     <input type="password" name= a_pass id= pass/>
     <br><br>
   	<input type=submit value=Change />
   	
 </form>

</div>
</center>
</div>

</body>
</html>
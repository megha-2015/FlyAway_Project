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


<input type="hidden" name="a_email" value="${adminlog.a_uname}">


	<c:choose>
  		<c:when test = "${empty adminlog.a_uname}">
  			<h1>Please Enter a Valid Email Id/Password</h1>
  			<c:out value="${adminlog.a_uname}"></c:out>
  		</c:when>
  		<c:otherwise>
  			<label style="float:left;margin-left:15px;font-size:20px;text-decoration: underline;">Welcome Admin:<c:out value="${adminlog.a_uname}"></c:out></label> 	

  			<br><br>
  			<h1 style="color:navy;">Administrator Page</h1>  
  			<hr>
  			<div align="left">
  				<p style="font-size:22px;margin-left:22px;">Please Select one of the following options: </p>
  				<p style="font-size:20px;margin-left:30px;">1.&nbsp;<a href="InsertFlight.jsp?a_email=${adminlog.a_uname}">Add a New Flight</a></p>
  				<p style="font-size:20px;margin-left:30px;">2.&nbsp;<a href="DeleteFlight.jsp?a_email=${adminlog.a_uname}">Delete a Flight</a></p>
  				<p style="font-size:20px;margin-left:30px;">3.&nbsp;<a href="UpdateFlight.jsp?a_email=${adminlog.a_uname}">Update a Flight</a></p>
  			</div>
		</c:otherwise>
	</c:choose>	
</div>
</center>
</div>


</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Flight</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div>
 <center>
  <a class="logo" style="color:maroon;font-size:60px;" >Welcome To FlyAway</a>
  <img src="https://www.flylax.com/-/media/flylax/flyaway/flyaway-logo-blue.ashx" height="80px" width="80%">
  <div class="header-right">
  <label style="float:left;margin-left:15px;font-size:20px;">Welcome Admin:&nbsp;<%= request.getParameter("a_email")%></label>
  <br><br>
  <a href="welcomeP.jsp" style="font-size:30px; float:left; margin-left:30px;">Home</a>
  <a href="AdminLogin.jsp" style="font-size:30px; float:right; margin-right:30px;">Logout</a>
  <a style="font-size:30px;" href="AdminPage2.jsp?a_email=<%= request.getParameter("a_email")%>">Admin Choice Page</a>
  
  <br><br>
  <h1 style="color:navy;">Delete a Flight</h1>  

<div style="font-size:20px;border:2px solid black;width:50% ;margin:auto;border-radius:20px ;padding:20px "align="center">
	 <h3 style="color:navy;">Enter Flight Details</h3>
	<form action="DeleteFlightCheck.jsp" method="post">
		<input type="hidden" name="a_email" value="<%= request.getParameter("a_email")%>"><br>
 		Flight Number:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="f_num"><br><br>
 		<input type = "submit" value = "Delete Flight">
	</form>
</div>
</div>
</center>
</div>
</body>
</html>
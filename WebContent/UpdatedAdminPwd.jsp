<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Password  Updated</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header" class="center">
<center>
  <a class="logo" style="color:maroon;font-size:60px;" >Welcome To FlyAway</a>
  <img src="https://www.flylax.com/-/media/flylax/flyaway/flyaway-logo-blue.ashx" height="80px" width="80%">
  
  <div class="header-right">
    <a href="welcomeP.jsp" style="font-size:30px;float:left;margin-left:30px">Home</a>
    <!-- <a href="ListOfFlights.jsp" style="font-size:30px;float:right; margin-right:30px;"></a>    -->
 	<a href="AdminLogin.jsp" style="font-size:30px; float:right; margin-right:30px;">Login as Admin</a>
   	<br>
   	<br>
   	<br>
   	<br>
   <c:set var = "check" value="${updateAPwd}"></c:set>
   	<c:if test = "${check =='true'}">
   		<label style="font-size:30px;">Password Updated Successfully!!!</label>
   	</c:if>
   	<c:if test = "${check =='false'}">
   		<label style="font-size:27px;">Invalid Email id Entered.</label>
   	</c:if>
   	
   	
  </div>

</div>
</center>
</div>

</body>
</html>
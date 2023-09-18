<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booked Flight 7</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header" class="center">
<center>
  <a class="logo" style="color:maroon;font-size:60px;" >Welcome To FlyAway</a>
  <img src="https://www.flylax.com/-/media/flylax/flyaway/flyaway-logo-blue.ashx" height="80px" width="80%">
  <div class="header-right">
  
    <%String flag1= request.getParameter("flag");%>
    <c:set var="flag" value="<%=flag1%>"/>
	<c:if test="${not empty flag}">
		<label style="float:left;margin-left:15px;font-size:20px;text-decoration: underline;"><%=request.getParameter("u_email")%></label>
	</c:if>
  
   	<form action="welcomeP.jsp" method="post">
  		<input type="hidden" name="flag" value="<%=request.getParameter("flag")%>">
		<input type="hidden" name="u_email" value="<%=request.getParameter("u_email")%>">
  		<input type="hidden" name="u_pwd" value="<%=request.getParameter("u_pwd")%>">
  		<input type="submit" style="font-size:27px;float:right;margin-right:30px;color:purple;" value="   Back to Home   ">
  	
  	</form>
    
    
   <!-- <a href="UserLogin.jsp" style="font-size:30px;float:left; margin-left:30px">Login as User</a> -->
    <!-- <a href="AdminPage.jsp" style="font-size:30px; float:right; margin-right:30px;">Login as Admin</a>-->
   	<br>
   	<br>
   	<br>
   	
   	<h1>Thank You For Booking Flight!!!</h1>
   	
   	
   	

<br>
   	
</div>
</center>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flight Deleted</title>
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
  
  <c:set var = "check" value="${deleteFlt}"></c:set>
   	<c:if test = "${check =='true'}">
   		<label style="font-size:30px;">Flight Deleted Successfully!!!</label>
   	</c:if>
   	<c:if test = "${check =='false'}">
   		<label style="font-size:27px;">Flight Not Available in Database to Delete.</label>
   	</c:if>
   	
   <c:set var = "check1" value="${insertFlt}"></c:set>
   	<c:if test = "${check1 =='true'}">
   		<label style="font-size:30px;">Flight Inserted Successfully!!</label>
   	</c:if>
   	<c:if test = "${check1 =='false'}">
   		<label style="font-size:27px;">Flight Number Already Exists</label>
   	</c:if>

	<c:set var = "check2" value="${updateFlt}"></c:set>
   	<c:if test = "${check2 =='true'}">
   		<label style="font-size:30px;">Flight Updated Successfully!!</label>
   	</c:if>
   	<c:if test = "${check2 =='false'}">
   		<label style="font-size:27px;">Flight Does not Exist.</label>
   	</c:if>
	
</div>
</center>
</div>
</body>
</html>
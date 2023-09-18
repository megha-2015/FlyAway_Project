<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login 3</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header" class="center">
<center>
  <a class="logo" style="color:maroon;font-size:60px;" >Welcome To FlyAway</a>
  <img src="https://www.flylax.com/-/media/flylax/flyaway/flyaway-logo-blue.ashx" height="80px" width="80%">
  
  
  <c:set var = "flt_num" value="${fl}"></c:set>
  <c:set var = "psngrs" value="${tr}"></c:set>
   	
  <div class="header-right">
    <a href="welcomeP.jsp" style="font-size:30px;float:left;margin-left:30px">Home</a>
    <!-- <a href="ListOfFlights.jsp" style="font-size:30px;float:right; margin-right:30px;">Back to Flights List</a>    -->
    <a href="UserLogin.jsp?flt_num=${flt_num}&travelrs_1=${psngrs}" style="font-size:30px; float:right; margin-right:30px;">Back to User Login</a>
   	<br>
   	<br>
   	<br>
   	<c:set var = "check" value="${insertx}"></c:set>
   	<c:if test = "${check =='true'}">
   		<label style="font-size:30px;">User Registered Successfully!!</label>
   	</c:if>
   	<c:if test = "${check =='false'}">
   		<label style="font-size:27px;">Email id already Registered</label>
   	</c:if>
   	
 
   	<c:set var = "trvv" value="${tr}"></c:set>
   
   	
   	

   	
   	
   
   	
   	</div>
   	</center>
   	</div>

</body>
</html>
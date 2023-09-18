<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Details5</title>
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
		<label style="float:left;margin-left:15px;font-size:20px;text-decoration: underline;">Welcome :<%=request.getParameter("u_email")%></label>
	</c:if>
	<br><br><br>
    <!-- <a href="welcomeP.jsp" style="font-size:30px;float:left;margin-left:30px">Home</a> -->
	<form action="welcomeP.jsp" method="post">
  		<input type="hidden" name="flag" value="<%=request.getParameter("flag")%>">
		<input type="hidden" name="u_email" value="<%=request.getParameter("u_email")%>">
  		<input type="hidden" name="u_pwd" value="<%=request.getParameter("u_pwd")%>">
  		<input type="submit" style="font-size:27px;float:left;margin-left:30px;color:purple;" value="     Home     ">
  	
  	</form>
    
    <a style="background-color:lightgrey;font-size:30px;float:right; margin-right:30px;" href="UserLogin.jsp?flt_num=<%= request.getParameter("flt_num2")%>&travelrs_1=<%= request.getParameter("travelrs")%>" style="font-size:30px;float:right; margin-right:30px;">Back to User Login</a>   
    <!-- <a href="AdminPage.jsp" style="font-size:30px; float:right; margin-right:30px;">Login as Admin</a> -->
   	<br>
   	<br>
  
  
  <br>
  <br>
  
  
  <form method="post" action="ConfirmBooking.jsp">
  
  	<input type="hidden" name = "fare1" value=<%= request.getParameter("fare2")%>>
	<input type= "hidden" name=flt_num1  value = <%= request.getParameter("flt_num2")%>>
	<input type= "hidden" name=travelrs_1  value = <%= request.getParameter("travelrs") %>> <!-- Number of travelers -->
	
	<input type="hidden" name="booked_2" value = <%= request.getParameter("travellers")%>>
 	<input type="hidden" name="available_2" value = <%= request.getParameter("available")%>>
 		
  
  <div style="float:left; margin-left:5%;">
  <p style="font-size:10px;">(Dummy)</p>
  <h1>Payment Details:</h1>
  Name on Card: <input type="text" name="name1" >
  <br>
  <br>
  Card Number : <input type="number" name="number1" maxlength="16" placeholder="Enter 16 digits" >
  <br>
  <br>
  CVV: <input type="number" name="cvv" maxlength="3" placeholder="Enter 3 digits">
  <br>
  <br>
	<input type="hidden" name="flag" value="<%=request.getParameter("flag")%>">
	<input type="hidden" name="u_email" value="<%=request.getParameter("u_email")%>">
  	<input type="hidden" name="u_pwd" value="<%=request.getParameter("u_pwd")%>">
  
  
 <input type="submit" value = "Continue">
 <br>
 </div>
     </form>
     </div>	
 </center>
 </div>
</body>
</html>
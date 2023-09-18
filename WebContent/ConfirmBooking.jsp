<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm 6</title>
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
	<br>
	<br><br>
  
   <!-- <a href="welcomeP.jsp" style="font-size:25px;float:left;margin-left:30px">Home</a> -->
	<form action="welcomeP.jsp" method="post">
  		<input type="hidden" name="flag" value="<%=request.getParameter("flag")%>">
		<input type="hidden" name="u_email" value="<%=request.getParameter("u_email")%>">
  		<input type="hidden" name="u_pwd" value="<%=request.getParameter("u_pwd")%>">
  		<input type="submit" style="font-size:27px;float:left;margin-left:30px;color:purple;" value="     Home     ">
  	</form>
    <a style="background-color:lightgrey;font-size:30px;float:right; margin-right:30px;" href="UserLogin.jsp?flt_num=<%= request.getParameter("flt_num1")%>&travelrs_1=<%= request.getParameter("travelrs_1")%>" style="font-size:25px;float:right; margin-right:30px;">Back to User Login</a>   
   

   	
   	  	<form method="post" action="PaymentDetails.jsp">
  		
 		<input type="hidden" name=travelrs value=<%= request.getParameter("travelrs_1")%>>
 		
		<input type="hidden" name="fare2" value= <%= request.getParameter("fare1")%>>
		<input type= "hidden" name=flt_num2  value = <%= request.getParameter("flt_num1")%>>
		
		<input type="hidden" name="travellers" value = <%= request.getParameter("booked_2")%>>
 		<input type="hidden" name="available" value = <%= request.getParameter("available_2")%>>
 		
 		 <input type="hidden" name="flag" value="<%=request.getParameter("flag")%>">
		<input type="hidden" name="u_email" value="<%=request.getParameter("u_email")%>">
  		<input type="hidden" name="u_pwd" value="<%=request.getParameter("u_pwd")%>">
 		
 		
 	
 	<br>
 
 	<input type=submit value="Back to Payment">
  	</form>
  	</div>
  	</center>

<br>
 <center>	
	<%
	String name2 = request.getParameter("name1");
	String number2 = request.getParameter("number1");
	String cvv2 = request.getParameter("cvv");
	%>
	<c:set var="nm" value="<%=name2%>"/>
  	<c:set var="nmbr" value="<%=number2%>"/>
  	<c:set var="cv" value="<%=cvv2%>"/>
  	
  	<c:choose>
  		<c:when test="${nm.length() == 0}">
  			<p style="font-size:25px;">Name not entered - Enter Name on Payment Page</p>
  			<br>
  		</c:when>
  		<c:when test="${nmbr.length() == 0 || nmbr.length()<16}">
  			<p style="font-size:25px;">  Enter Correct Card Number - 16 digits </p>
  		</c:when>
  		<c:when test="${cv.length() == 0 || cv.length()<3}">
  			<p style="font-size:25px;">  Enter Correct CVV - 3 digits </p>
  		</c:when>
  		<c:otherwise>
  		
  		<form method="post" action="UpdateSeats">
  		<br>
  		
  		<div align="left" style="font-size: 22px; float:left; margin-left: 20%; align:left;">
  		
 		<label>Number of Travelers : <%= request.getParameter("travelrs_1")%></label>
 		<br>
 		<label>Flight Number : &nbsp;&nbsp;&nbsp;&nbsp;<%= request.getParameter("flt_num1")%></label>
 		<br>	
 			<%
			String num_trvlrs = request.getParameter("travelrs_1");
			String fare_p = request.getParameter("fare1");
			%>
 			
			<c:set var="no_t" value="<%=num_trvlrs%>"/>
  			<c:set var="fare_pp" value="<%=fare_p%>"/>
  			<c:set var="tot_fare" value="${no_t*fare_pp}"/>
  		<label>Total Fare: &nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${tot_fare}"/></label><br>
 		<br>
 		
 		
 		<input type="hidden" name=travelrs value=<%= request.getParameter("travelrs_1")%>>
 		<br>
		<input type="hidden" name="fare2" value= <%= request.getParameter("fare1")%>>
		<br>
		<input type= "hidden" name="flt_num2"  value = <%= request.getParameter("flt_num1")%>>
		<br>
		<input type="hidden" name="travellers" value = <%= request.getParameter("booked_2")%>>
		<br>
 		<input type="hidden" name="available" value = <%= request.getParameter("available_2")%>>
 		
 		<input type="hidden" name="flag" value="<%=request.getParameter("flag")%>">
		<input type="hidden" name="u_email" value="<%=request.getParameter("u_email")%>">
  		<input type="hidden" name="u_pwd" value="<%=request.getParameter("u_pwd")%>">
 		</div>
 		<br>
 		<br>
 		<br>
 		<br><br><br><br>
 
 	<div  style="margin-right: 35%;">
 	<input type=submit value="Confirm Booking">
 	
 	</div>
 	
  		</form>
  		</c:otherwise>
  	</c:choose>
  	 	
   	
  
  
  <br>
  <br>
</center>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Flight 4</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header" class="center">
 	<%String travlers = request.getParameter("travelrsx"); %>
	<c:set var="travelrsa" value="<%=travlers%>"/>
	
<center>
  <a class="logo" style="color:maroon;font-size:60px;" >Welcome To FlyAway</a>
  <img src="https://www.flylax.com/-/media/flylax/flyaway/flyaway-logo-blue.ashx" height="80px" width="80%">
  
  <div class="header-right">
  <c:if test="${not empty userx.u_email}">
  	<c:set var="flag" value="${1}"/>
  	<label style="float:left;margin-left:15px;font-size:20px;text-decoration: underline;">Welcome :<c:out value="${userx.u_email}"/></label>
 		<br><br>
  	
  	<br>
  </c:if>
  	<!-- <form action="welcomeP.jsp" method="post">
  	<input type="hidden" name="flag" value="${flag}">
  	<input type="hidden" name="u_email" value="${userx.u_email}">
  	<input type="hidden" name="u_pwd" value="${userx.pwd}">
  	<input type="submit" style="font-size:27px;float:left;margin-left:30px;color:purple;" value="   Home/Search Flight   ">
  	
  	</form> -->
  
  
  
  
   <!--  <a href="welcomeP.jsp?flag=${flag}&u_email=${userx.u_email}&u_pwd=${userx.pwd}" style="font-size:30px;float:left;margin-left:30px">Home</a>-->
        
    <a style="background-color:lightgrey;font-size:30px;float:right; margin-right:30px;" href="UserLogin.jsp?flt_num=${bookx.flt_num}&travelrs_1=${travelrsa}">&nbsp;&nbsp;Back to User Login&nbsp;&nbsp;</a>   
    <!-- <a href="AdminPage.jsp" style="font-size:30px; float:right; margin-right:30px;">Login as Admin</a> -->
   	<br>
   	<br>
   	
   	
 	<div>
 	<c:if test="${empty userx.u_email}">
 		<p style="font-size:30px;">Invalid email id/password</p>
 		
 	</c:if>
 	<br>
 	
 	<c:if test="${not empty userx.u_email}">
 	
 		
 		<table border="1" cellpadding="6" style="width:60%; float:left; margin-left: 5%;">
 		<caption>
            	<h2 style= "text-decoration: underline; float:left; margin-left: 5%;">User Details</h2>
   		</caption>
  	<tr>
    	 <th>Name</th>
 		 <td><c:out value = "${userx.nam}"/></td>
 	</tr>
 	
 	<tr>
     <th>Email id</th>
 	 <td><c:out value = "${userx.u_email}"/></td>
 	</tr>
 	
 	<tr>
     <th>Phone Number</th>
 	 <td><c:out value = "${userx.phn}"/></td>
 	</tr>
 	
 	<tr>
     <th>Address</th>
 	 <td><c:out value = "${userx.address}"/></td>
 	</tr>
 	</table>
 	
 	</div>
 	<br>
 	
 	<c:choose>
	<c:when test="${empty bookx.flt_num}">
		<form method="post" action="welcomeP.jsp">
			<input type="hidden" name="flag" value="${flag}">
  			<input type="hidden" name="u_email" value="${userx.u_email}">
  			<input type="hidden" name="u_pwd" value="${userx.pwd}">
		
		
			 <div style="margin-right: 30%; margin-top: 20%;">
 				<input style="font-size:23px;color:purple;"type=submit value="Search Flight">
 			</div>
		
		</form>
	</c:when>
	<c:otherwise>

 	
        <table border="1" cellpadding="6" style="float:left; margin-left: 5%;">
            <caption>
            	<h2 style= "text-decoration: underline; float:left; margin-left: 5%;">Flight Details</h2>
            </caption>
            <tr>
                <th>Airline</th>
                <th>Price</th>
                <th>Flight Number</th>
                <th>From</th>
                <th>To</th>
                <th>Departure Time</th>
                <th>Arrival Time</th>
                <th>Date</th>
                <th>Booked Seats</th>
                <th>Available Seats</th>
            </tr>
            	            		
                <tr>
                    <td><c:out value="${bookx.name}" /></td>
                    <td><c:out value="${bookx.pri}" /></td>
                    <td><c:out value="${bookx.flt_num}" /></td>
                    <td><c:out value="${bookx.flt_from}" /></td>
                    <td><c:out value="${bookx.flt_to}" /></td>
                    <td><c:out value="${bookx.dep}" /></td>
                    <td><c:out value="${bookx.arr}" /></td>
                    <td><c:out value="${bookx.dt}" /></td>
                    <td><c:out value="${bookx.b_se}" /></td>
                    <td><c:out value="${bookx.a_seats}" /></td>
               </tr>
		</table>

<br>

<br>
<br>


<form method="post" action="PaymentDetails.jsp">

	<input type= "hidden" name=travelrs  value = <%= request.getParameter("travelrsx") %>>
	 	<br>
 	<input type="hidden" name="fare2" value="${bookx.pri}" >
 	<br>
 	<input type= "hidden" name=flt_num2  value = "${bookx.flt_num}">
	<br>
 	<input type="hidden" name="travellers" value="${bookx.b_se}">
 	
 	<input type="hidden" name="available" value = "${bookx.a_seats}">
 	
 	<input type="hidden" name="flag" value="${flag}">
  	<input type="hidden" name="u_email" value="${userx.u_email}">
  	<input type="hidden" name="u_pwd" value="${userx.pwd}">
  	<br>

 
 <div style="margin-right: 30%; margin-top: 20%;">
 	<input type=submit value="Continue Booking">
 </div>
 </form>
 </c:otherwise>
 </c:choose>
 
 </c:if>
 
 </div>
 	</center>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flights Searched 2</title>
<link rel="stylesheet" href="style.css">
</head>

<body>
<div class="header" class="center">
<center>
  <a class="logo" style="color:maroon;font-size:60px;" >Welcome To FlyAway</a>
  <img src="https://www.flylax.com/-/media/flylax/flyaway/flyaway-logo-blue.ashx" height="80px" width="80%">
  <div class="header-right">
  
  <% String flag_1 = request.getParameter("flag");%>
  <c:set var="flag" value="<%=flag_1%>"/>
  
  
  <c:choose>
 	<c:when test = "${flag == '1'}">
 	<!-- flag is 1 in case we have come to home page after logging in. -->  
		<label style="float:left;margin-left:15px;font-size:20px;text-decoration: underline;">Welcome :<%=request.getParameter("u_email")%></label>
 		<br><br>
  		<a href="welcomeP.jsp?flag=${flag}" style="font-size:30px; float:left; margin-left:30px;">Home</a> 
  	</c:when>
  	
  	<c:otherwise>
  		<a href="welcomeP.jsp" style="font-size:30px; float:left; margin-left:30px;">Home</a>
  	</c:otherwise>
  </c:choose>
    <!-- <a href="UserPage.jsp" style="font-size:30px;float:left; margin-left:30px">Login as User</a> -->
    
    <a href="AdminPage.jsp" style="font-size:30px; float:right; margin-right:30px;">Login as Admin</a>
   	<br>
   	
   	<!--<h1 style="font-size:40px;font-variant: small-caps; text-decoration: underline;">List of Flights</h1>  -->
  </div>
</center>
</div>

<div align="center">
<%String travlers = request.getParameter("travellers"); %>
<c:set var="trvl" value="<%=travlers%>"/>


        <table border="1" cellpadding="6">
            <caption>
            	<h2 style= "text-decoration: underline;">List of Flights</h2>
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
                <th>Available Seats</th>
            </tr>
           
            	<c:forEach var="flight" items="${listFltx}" varStatus="loopCounter">
            		<c:set var="count1" value="${loopCounter.count}"/>
            	            		
                <tr>
                    <td><c:out value="${flight.name}" /></td>
                    <td><c:out value="${flight.pri}" /></td>
                    <td><c:out value="${flight.flt_num}" /></td>
                    <td><c:out value="${flight.flt_from}" /></td>
                    <td><c:out value="${flight.flt_to}" /></td>
                    <td><c:out value="${flight.dep}" /></td>
                    <td><c:out value="${flight.arr}" /></td>
                    <td><c:out value="${flight.dt}" /></td>
                    <td><c:out value="${flight.a_seats}" /></td>
                    <td>
                    	                    	
                    	<c:if test="${empty trvl}">
                    		<p>Please enter the number of travelers to proceed to Booking.</p>
                    	</c:if>
					
                    	<fmt:parseNumber var = "avl" integerOnly = "true" type = "number" value = "${flight.a_seats}" />
                    	<c:set var="avl_s" value="${avl}"/>
                    	
                    	<fmt:parseNumber var = "trvl1" integerOnly = "true" type = "number" value = "${trvl}" />
                    	<c:set var="trvl2" value="${trvl1}"/>
                    	
                    
                    <c:choose>
                               
                        <c:when test="${avl_s < trvl2}">
                    	<p>Only <c:out value = "${avl_s}"/> Seats Available</p>
                    	</c:when>
                    	<c:when test="${trvl2 == 0}">
                    	<p>Please enter the number of travelers to proceed to Booking.</p>
                    	</c:when>
                    	
                    	<c:otherwise>
                    		<c:if test="${not empty trvl}">
                    			<c:choose>
                    				<c:when test="${flag == '1'}">
                    					
                    					<form action=UserLogin method= post>											
											<input type= "hidden" name=flt_num2  value = "${flight.flt_num}">										
											<input type= "hidden" name=travelrsx  value = <%= request.getParameter("travellers") %>>
											 <br>
   										     <input type="hidden" name= email id= email value=<%=request.getParameter("u_email") %>>
   											 <input type="hidden" name= pass id= pass value=<%=request.getParameter("u_pwd") %>>
    										 <br>
   											 <input type="submit" value="BOOK FLIGHT">
  											<br>
										</form>
										                			
                    				</c:when>
                    				<c:otherwise>
                    					<a href="UserLogin.jsp?flt_num=${flight.flt_num}&travelrs_1=${trvl}">Book Flight</a>
                    				</c:otherwise>
                    			</c:choose>                   			
                    		</c:if>
                    	</c:otherwise>
               		 </c:choose>
                    
                                    
                    </td>
 				</tr>
             </c:forEach>
		</table>
  <br>
		<p style=font-size:20px>Number of Travelers Entered: <c:out value = "${trvl}"/> </p>
		
                <c:choose>
            		<c:when test = "${count1 >= 1}">
            		<p style=font-size:30px><c:out value="${count1}" /> Flights Available.
            		 </p>
            		</c:when>
            		<c:otherwise>
            		<p style=font-size:30px>No Flights Available.</p>
            		</c:otherwise>
                </c:choose>
                
                
                
             
                
                
  		</div>
	</body>
</html>
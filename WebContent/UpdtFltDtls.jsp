<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flight Details</title>
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
  <h1 style="color:navy;">Confirmation Page for Updation of Flight</h1> 
  <hr width="70%"><br>
   		<c:set var = "flt_num" value="${bookx.flt_num}" />
   		<c:choose>
   		<c:when test="${empty flt_num}">
   		<p style="font-size:25px;">Flight Number Entered Does Not Exist.</p>
   		<a style="font-size:25px;" href="UpdateFlight.jsp?a_email=<%= request.getParameter("a_email")%>">Back</a>
   		</c:when>
   		<c:otherwise>
   		
            	
  		<form action = "EditFlightAdmn.jsp" method="post">
  		<% String flt_num = request.getParameter("f_num");
  		%>
  		<input type="hidden" name="a_email" value="<%= request.getParameter("a_email")%>"><br>
  		
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
                <th>Total Seats</th>
                <th>Booked Seats</th>
                <th>&nbsp;</th>
            </tr>
            	 
            	 
                <tr>
          
                    <td><input type="text" name="aname" value="<c:out value="${bookx.name}" />" readonly="readonly"></td>
                    <td><input type="number" name="pri" value="<c:out value="${bookx.pri}" />" readonly="readonly"></td>
                    <td><input type="text" name="flt_num" value="<c:out value="${bookx.flt_num}" />" readonly="readonly"></td>
                    <td><input type="text" name="flt_from" value="<c:out value="${bookx.flt_from}" />" "readonly"></td>
                    <td><input type="text" name="flt_to" value="<c:out value="${bookx.flt_to}" />" readonly="readonly"></td>
                    <td><input type="text" name="dep" value="<c:out value="${bookx.dep}" />" readonly="readonly"></td>
                    <td><input type="text" name="arr" value="<c:out value="${bookx.arr}" />" readonly="readonly"></td>
                    <td><input type="text" name="dt" value="<c:out value="${bookx.dt}" />" readonly="readonly"></td>
                    <td><input type="number" name="tot_se" value="<c:out value="${bookx.tot_se}" />" readonly="readonly"></td>
                    <td><input type="number" name="b_se" value="<c:out value="${bookx.b_se}" />" readonly="readonly"></td>
                    <td><input type = "submit" value="Edit"></td>
               </tr>
           
		</table>
			
  	</form>	
  	</c:otherwise>
  	</c:choose>
  </div>
  </center>
  </div>
  </body>
  </html>
  
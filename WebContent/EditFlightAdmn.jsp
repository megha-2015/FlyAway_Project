<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Flight Details</title>
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
  	<form method="post" action = "UpdationCheck2.jsp">
  		
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
        
                    <td><input type="text" name="name" value=<%= request.getParameter("aname")%>></td>
                    <td><input type="number" name="pri" value=<%= request.getParameter("pri")%>></td>
                    <td><input type="text" name="f_num" value=<%= request.getParameter("flt_num")%>></td>
                    <td><input type="text" name="f_from" value=<%= request.getParameter("flt_from")%>></td>
                    <td><input type="text" name="f_to" value=<%= request.getParameter("flt_to")%>></td>
                    <td><input type="text" name="f_dtime" value=<%= request.getParameter("dep")%>></td>
                    <td><input type="text" name="f_atime" value=<%= request.getParameter("arr")%>></td>
                    <td><input type="text" name="f_dt" value=<%= request.getParameter("dt")%>></td>
                    <td><input type="number" name="f_tseats" value=<%= request.getParameter("tot_se")%>></td>
                    <td><input type="number" name="f_b_seats" value=<%= request.getParameter("b_se")%>></td>
                    <td><input type = "submit" value="Confirm Update"></td>
               </tr>
		</table>
		</form>
  		
  </div>
  </center>
  </div>
  </body>
  </html>
  
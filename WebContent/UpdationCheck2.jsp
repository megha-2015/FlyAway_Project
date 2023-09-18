<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Flight Check2</title>
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
  <h1 style="color:navy;">Confirmation Page for Addition of Flight</h1> 
  <hr width = 80%>
  <br> 


	<% 	String name = request.getParameter("name");
		String pri = request.getParameter("pri");
		String flt_num = request.getParameter("f_num");
		String flt_from = request.getParameter("f_from");
		String flt_to = request.getParameter("f_to");
		String dep = request.getParameter("f_dtime");
		String arr = request.getParameter("f_atime");
		String tot_se = request.getParameter("f_tseats");
		String b_se = request.getParameter("f_b_seats");
		String dt = request.getParameter("f_dt");
		//String a_email1 = request.getParameter("a_email");%>
		
		<c:set var="name" value="<%=name%>"/>
  		<c:set var="pri" value="<%=pri%>"/>
  		<c:set var="flt_num" value="<%=flt_num%>"/>
  		<c:set var="flt_from" value="<%=flt_from%>"/>
  		<c:set var="flt_to" value="<%=flt_to%>"/>
		<c:set var="dep" value="<%=dep%>"/>
  		<c:set var="arr" value="<%=arr%>"/>
  		<c:set var="tot_se" value="<%=tot_se%>"/>
  		<c:set var="b_se" value="<%=b_se%>"/>
  		<c:set var="dt" value="<%=dt%>"/>

		<c:choose>
   		<c:when test="${name.length()== 0 || pri.length()== 0 || flt_num.length()== 0 || flt_from.length()== 0 || flt_to.length()== 0 || dep.length()== 0 || arr.length() == 0|| tot_se.length() == 0|| b_se.length()== 0 || dt.length() == 0 }">
   			<br><p style="font-size:25px;">Please Enter Data. Blank Values Not Accepted.</p>
   			<a style="font-size:25px;" href="UpdateFlight.jsp?a_email=<%= request.getParameter("a_email")%>">Back</a>
   			
  			<br>
   		</c:when>
   		
		<c:otherwise>
		<div style="font-size:20px;border:2px solid black;width:50% ;margin:auto;border-radius:20px ;padding:20px "align="center">
			 <h3 style="color:navy;">Confirm Details</h3> 
			 <form action="UpdtFltDetails" method="post">
			 <input type="hidden" name="a_email" value="<%= request.getParameter("a_email")%>"><br>
				Airline Name:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="f_name" value=<%= name%> readonly="readonly"><br><br>
 				Ticket Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="f_price" value=<%= pri%> readonly="readonly"><br><br>
 				Flight Number:&nbsp;&nbsp;<input type="text" name="f_num" value=<%= flt_num%> readonly="readonly"><br><br>
 				Flight From:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="f_from" value=<%= flt_from%> readonly="readonly"><br><br>
 				Flight To:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="f_to" value=<%=flt_to%> readonly="readonly"><br><br>
   				Departure Time:&nbsp;<input type="text" name="f_dtime" value=<%= dep%> readonly="readonly"><br><br>
   				Arrival Time:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="f_atime" value=<%= arr%> readonly="readonly"><br><br>
   				Total Seats:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="f_tseats" value=<%= tot_se%> readonly="readonly"><br><br>
   				Booked Seats:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="f_bseats" value=<%= b_se%> readonly="readonly"><br><br>
   				Departure Date:&nbsp;<input type="text" name="f_dt" value=<%= dt%> readonly="readonly"><br><br>
   				
   				<input type="submit" value="Confirm">
			</form>
		
			 
				
				
				
			</div>
		</c:otherwise>
		</c:choose>	
</div>
</center>
</div>

</body>
</html>
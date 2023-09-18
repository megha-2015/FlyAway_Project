<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ page import="java.util.*" %>
 
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
  
  <div class="header-right">
    <a href="welcomeP.jsp" style="font-size:30px; float:right; margin-right:30px;">Home</a>
    <!-- <a href="ListOfFlights.jsp" style="font-size:30px;float:right; margin-right:30px;">Back to Flights List</a>    -->
    <a href="RegisterUser.jsp?flt_num=<%= request.getParameter("flt_num1")%>&travelrs_1=<%= request.getParameter("travelrs_2")%>" style="font-size:30px;float:left;margin-left:30px">Back to Edit Details</a>
   	<br>
   	
   	
   	<br>
   	<br>
   	<br>
   	  </div>
   	
   	<%	String user_emaila = request.getParameter("user_email");
   		String user_pwda = request.getParameter("user_pwd");
   		String user_namea = request.getParameter("user_name");
   		String phn_nbra = request.getParameter("phn_nbr");
   		String user_adda = request.getParameter("user_add");
   	%>
   	
   	<c:set var="user_emailx" value="<%=user_emaila%>"/>
  	<c:set var="user_pwdx" value="<%=user_pwda%>"/>
  	<c:set var="user_namex" value="<%=user_namea%>"/>
  	<c:set var="phn_nbrx" value="<%=phn_nbra%>"/>
  	<c:set var="user_addx" value="<%=user_adda%>"/>
   	
   	<c:choose>
   		<c:when test="${user_emailx.length() == 0 }">
   			
   			<p style="font-size:25px;">Please Enter Email id</p>
   			
  			<br>
   		</c:when>
   		
   		<c:when test="${user_pwdx.length() == 0 || user_pwdx.length()<6}">
   			<p style="font-size:25px;">Please Enter Password with Minimum 6 Charaters</p>
  			<br>
   		</c:when>
   		
   		<c:when test="${user_namex.length() == 0}">
   			<p style="font-size:25px;">Please Enter Name</p>
  			<br>
   		</c:when>	
   		
   		<c:when test="${phn_nbrx.length() == 0 || phn_nbrx.length() > 10}">
   			<p style="font-size:25px;">Please Enter Correct Phone Number [Can be Maximum 10 digits]</p>
  			<br>
   		</c:when>
   		
   		<c:when test="${user_addx.length() == 0}">
   			<p style="font-size:25px;">Please Enter Address</p>
  			<br>
   		</c:when>
   		
   		<c:otherwise>
   			<form method="post" action="RegisterUsr">
   			 
   			<div align="left" style="margin-left:7%;">
   				<input type="hidden" name="flt_num" value="<%= request.getParameter("flt_num1")%>">
				<input type="hidden" name="travelrs_1" value="<%= request.getParameter("travelrs_2")%>">
   				<label style="font-size: 23px;">Email id : &nbsp;&nbsp;&nbsp;<input type="text" name="user_email" value="<%=user_emaila%>" readonly="readonly"></label>
   				<br>
   				<br>
   				<label style="font-size: 23px;">Password :&nbsp; <input type="text" name="user_pwd" value="<%=user_pwda%>" readonly="readonly"></label>
   				<br><br>
   				<label style="font-size: 23px;">Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="user_name" value="<%=user_namea%>" readonly="readonly"></label>
   				<br><br>
   				<label style="font-size: 23px;">Phone Number : <input type="number" name="phn_nbr" value="<%=phn_nbra%>" readonly="readonly"></label>
   				<br><br>
   				
   				<label style="font-size: 23px;">Address :&nbsp;&nbsp; <textarea cols="20" rows="4"  name="user_add" readonly="readonly"><%=user_adda%></textarea></label>
   				</div>
   				<br>
   				<br>
   				<input type="submit" value="Confirm Registration">
   			</form>
   			
   			
   			
   		</c:otherwise>
   			
   	
   	</c:choose>
   	
   	
   	
   	

  
  
  </center>
  </div>

</body>
</html>
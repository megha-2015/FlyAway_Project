<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page1</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header" class="center">
<center>
  <a class="logo" style="color:maroon;font-size:60px;" >Welcome To FlyAway</a>
  <img src="https://www.flylax.com/-/media/flylax/flyaway/flyaway-logo-blue.ashx" height="80px" width="80%">
  <div class="header-right">
    <!-- <a class="active" href="welcomeP.jsp" style="font-size:30px; margin-left:80px;">Home</a> -->
    <%String flag1= request.getParameter("flag");%>
    <c:set var="flag" value="<%=flag1%>"/>
	<c:if test="${flag=='1'}">
		<label style="float:left;margin-left:15px;font-size:20px;text-decoration: underline;">Welcome :<%=request.getParameter("u_email")%></label>
		<a style="float:left;margin-left:17px;font-size:15px;" href="welcomeP.jsp">Logout</a>
		<br>
	</c:if>
	<c:if test="${flag != '1'}">    
   <a href="UserLogin.jsp" style="font-size:30px;float:left; margin-left:30px">Login as User</a>
    </c:if>
    
    <a href="AdminLogin.jsp" style="font-size:30px; float:right; margin-right:30px;">Login as Admin</a>
   	<br>
   	
   	<h1 style="font-size:40px;font-variant: small-caps; text-decoration: underline;">Search Flights</h1>
  </div>
  </center>
  </div>
  
  
  
<div style="font-size:20px;border:2px solid black;width:50% ;border-radius:20px ;padding:20px;margin:auto;" align="center">
<form action="FlightsList" method= "post">

<label for= from>From &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</label> 
<input type="text" name="from" id="from" placeholder="Jaipur" />
<br><br>
<label for=to>To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</label> 
<input type="text" name="to" id="to" placeholder="Delhi" />
<br><br>
<label for=departure>Departure &nbsp;:</label> 
<input type="text" name="departure" id="departure" placeholder="dd-mm-yyyy" />
<br><br>
<label for=travellers>Number of Travelers : </label> 
<input type="number" name="travellers" id="travellers" scope="application"/>
<br><br>



<input type= "hidden" name="flag"  value = <%=request.getParameter("flag")%>>
<input type= "hidden" name="u_email"  value = <%=request.getParameter("u_email")%>>
<input type= "hidden" name="u_pwd"  value = <%= request.getParameter("u_pwd") %>>

 <br>

<input type=submit value=Search>
<br><br>
<input type=reset value=Reset>
</form>



</div>

</body>
</html>
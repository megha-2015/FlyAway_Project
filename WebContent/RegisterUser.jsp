<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <a href="welcomeP.jsp" style="font-size:30px;float:left;margin-left:30px">Home</a>
    <!-- <a href="ListOfFlights.jsp" style="font-size:30px;float:right; margin-right:30px;">Back to Flights List</a>    -->
    <a href="UserLogin.jsp?flt_num=<%= request.getParameter("flt_num")%>&travelrs_1=<%= request.getParameter("travelrs_1")%>" style="font-size:30px; float:right; margin-right:30px;">Back to User Login</a>
   	<br>
   	<br>
   	<h1 style="font-size:25px;font-variant: small-caps; text-decoration: underline;">Input Details:</h1>
   	
  </div>
  <div style="font-size:20px;border:2px solid black;width:50% ;margin:auto;border-radius:20px ;padding:20px;" align="center">
	
	<form method="post" action="CheckUser.jsp">
	
	<input type="hidden" name="flt_num1" value="<%= request.getParameter("flt_num")%>">
	<input type="hidden" name="travelrs_2" value="<%= request.getParameter("travelrs_1")%>">
	
	Email id :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" name="user_email">
	<br><br>
	Set Password : <input type="text" name="user_pwd" placeholder = "Minimum 6 characters">
	<br><br>
	
	Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="un" name="user_name">
	<br><br>

	Phone Number :<input type="number" name="phn_nbr">
	<br><br>
	Address :&nbsp;&nbsp;&nbsp;&nbsp;<textarea cols="20" rows="4"  name="user_add"></textarea>
	<br><br>
	
	<input type="submit" value="Register">  
	</form>

</div>
</center>
</div>

</body>
</html>
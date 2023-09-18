<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login 3</title>
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
    <!-- <a href="AdminPage.jsp" style="font-size:30px; float:right; margin-right:30px;">Login as Admin</a> -->
   	<br>
   	<br>
   	<h1 style="font-size:25px;font-variant: small-caps; text-decoration: underline;">Admin Login</h1>
   	
  </div>
  
  
  <div style="font-size:20px;border:2px solid black;width:50% ;margin:auto;border-radius:20px ;padding:20px "align="center">

  

<form action="AdminLogin1" method= post>
	
	<label for=email>Email   : &nbsp;&nbsp;&nbsp;</label>
     <input type="email" name=a_email id=email/>
   	 <br><br>
   	 <label for= pass>Password :&nbsp;</label>
     <input type="password" name= a_pass id= pass/>
     <br><br>
   	<input type=submit value=Login />
   	&nbsp;
   	<a href="PasswordChange.jsp" style="font-size:15px; margin-right:20px;">Change Password?</a>
   	<br><br>
     <input type=reset value="Reset" />
 </form>

</div>
</center>
</div>

</body>
</html>
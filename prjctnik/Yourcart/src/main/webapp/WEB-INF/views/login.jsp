<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<center>
	<h2>YOURCART.com</h2>
</center>



</head>




<style>
body {
	background-image:
		url("http://wallpapercave.com/wp/e7b5p3t.jpg");
}


</style>



	
	
<body data-spy="scroll" data-target=".navbar" data-offset="50">

	<nav class="navbar navbar-fixed-top">
		<nav class="w3-navbar w3-blue-grey">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">YourCart.com</a>
				</div>
				<div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav">

							
							
					</div>
				</div>
			</div>
		</nav>
		<br>
<head>
<body >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> login to yourcart here</h1>
<div class="container">
		<div class="account_grid">
			   <div class=" login-right">
			  	<h3>REGISTERED CUSTOMERS</h3>
				<p>If you have an account with us, please log in.</p>
				<c:if test="${SPRING_SECURITY_LAST_EXCEPTION !=null}">
<div>
<center>Your login attempt was not successful, try again!!
caused:${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</center>
</div>
</c:if>
				
				<form name="f" action="<c:url value='j_spring_security_check'/>" method='POST'>
				  <div>
				  
					<span>User Name</span>
					<input type="text" name='j_username' placeholder="UserName Required"  required="required"> 
				  </div>
				  <div>
					<span>Password</span>
					<input type="password" name='j_password' placeholder="Password Required"  required="required" style="width:800px;height:40px;border:1px solid black"> 
				  </div>
				 
				  <input type="submit" value="Login">
			    </form>
			   </div>	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
					<a class="navbar-brand" href="">YourCart.com</a>
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
		${info}
<center>
<form:form action="signupUser" commandName="sign">
USERNAME:<form:input path="username"/> <form:errors path="username"></form:errors><br><br>
EMAIL:<form:input path="emailId"/><form:errors path="emailId"></form:errors><br><br>
PASSWORD:<form:password path="password"/><form:errors path="password"></form:errors><br><br>
<input type="submit" value="signup"/>
</form:form>
</center>
</body>
</html>
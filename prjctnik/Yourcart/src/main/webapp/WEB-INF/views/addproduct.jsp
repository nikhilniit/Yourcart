<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<body>
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
					<a class="navbar-brand" href="#">YourCart.com</a>
				</div>
				<div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav">
<li class=><a href="addproduct">Add Product</a>
<li class=><a href="viewproduct">View Product</a>
<li class=><a href="viewusers">View users</a>
							
							
					</div>
				</div>
			</div>
		</nav><center>
<form:form action= "addtheproduct" commandName="pro" method="post" enctype="multipart/form-data">
Name:<form:input path="name"/><br><br>
Brand:<form:input path="brand"/><br><br>
Price:<form:input path="price"/><br><br>
Add Product Image:<input type="file" name="file"/><br><br>
<input type="submit" value="submit"/>
</form:form></center>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

.carousel-inner>.item>img, .carousel-inner>.item>img {
	width: 70%;
	
	margin: auto;
}
</style>


<body>
	
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

							<li class=""><a href="#">Fashion <span class=""></span></a>
								</li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">Electronics <span
									class=""></span></a>
								</li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">Furniture<span class=""></span></a>
								</li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">Others<span class=""></span></a>
								
						
							<li class=><a href="logout">Logout</a>
					</div>
				</div>
			</div>
		</nav>
</body>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
					  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <div ng-app="myApp" ng-controller="dataCtrl">
  
Enter Product Name:  <input type="text"  ng-model="search">&nbsp&nbsp<span class="glyphicon glyphicon-search"></span>
    <hr></hr>
    <table class="table table-striped">
    <tr>
    <th>PRODUCT ID</th>
    <th>Name</th>
    <th>Brand</th>
    <th>Price</th>
    <th>product Image</th>
    </tr>
        <tr ng-repeat="resource in names | filter:search">
             <td>{{resource.productId}}</td>
            <td>{{ resource.name}}</td>
            <td><img src="./resources/images/{{resource.productId}}.jpg" style="width: 200px;height:150px"></td>
            <td><a href="viewDetails?id={{resource.productId}}">View Details</a></td>
        </tr>    
    </table>
</div>
<script>
angular.module('myApp',[]).controller('dataCtrl',function($scope)
		{
	
		$scope.names=${json};
		$scope.orderByMe=function(x)
		{
			$scope.myOrderBy=x;
			}
		});
</script>
</div>
							
</body>
</html>
<%@ page language="java" 
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Grocers Application System - Admin Hompage</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
	<div class="container">
		<h2>Welcome to, Grocers Application System - Admin Hompage</h2>

		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link"
					href="storeProductPage.spring">Add Product</a></li>
				<li class="nav-item"><a class="nav-link"
					href="updateProductView.spring">Update Product</a></li>
				<li class="nav-item"><a class="nav-link"
					href="displayAllProduct.spring">View Product</a></li>
				<li class="nav-item"><a class="nav-link" href="logout.spring">Logout</a></li>
				</ul>
			</div>
		</nav>
	</div>


</body>
</html>
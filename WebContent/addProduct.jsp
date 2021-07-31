<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>

	<%@include file="adminHome.jsp" %>
	
	<div class="container">
		<ul class="nav">
			<li class="nav-item"><a class="nav-link"
				href="adminDashboard.spring">Dashboard</a></li>
		</ul>
		<h2>Add Product Details</h2>
		<form action="storeProduct.spring" method="post">
			<div class="form-outline mb-2">
				<label class="form-label">Product Name</label> <input type="text"
					name="productName" class="form-control" required />
			</div>
			<div class="form-outline mb-2">
				<label class="form-label">Product Price</label> <input type="number"
					name="productPrice" class="form-control" required />
			</div>
			
			<div class="form-outline mb-2">
				<label class="form-label">Product Quantity</label> <input
					type="number" name="productQuantity" class="form-control" required />
			</div>

			<div class="form-outline mb-2">
				<label class="form-label">Product URL</label> <input type="url"
					name="productUrl" class="form-control" required />
			</div>

			<input type="submit" class="btn btn-outline-primary"
				value="Store Product" /> <input type="reset"
				class="btn btn-outline-light" value="Reset" />
		</form>
		<span style="color: red">${requestScope.msg}</span>
	</div>
</body>
</html>
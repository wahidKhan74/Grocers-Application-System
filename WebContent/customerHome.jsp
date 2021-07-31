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
	<div class="container">
		<h2>
			Welcome to Customer Home Page <span class="badge bg-danger ms-2">${sessionScope.user}</span>
		</h2>

		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link"
						href="displayAllProductToCustomer.spring">Shopping</a></li>
					<li class="nav-item"><a class="nav-link"
						href="orderDetails/${sessionScope.user}.spring">View Order
							Details</a></li>
					<li class="nav-item"><a class="nav-link"
						href="balanceCheck/${sessionScope.user}.spring">Account
							Details</a></li>
					<li class="nav-item"><a class="nav-link" href="logout.spring">Logout</a>
					</li>
				</ul>
			</div>
		</nav>

		<span style="color: red">${sessionScope.orderMsg} </span>
	</div>
</body>
</html>
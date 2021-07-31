<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
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
		<ul class="nav">
			<li class="nav-item"><a class="nav-link"
				href="customerDashboard.spring">Dashboard</a></li>
		</ul>
		<div style="font-weight: bold;">Balance Amount is Rs
			${sessionScope.amount}</div>
		<form action="addAmount.spring" method="post">
			<div class="form-outline mb-2">
				<label class="form-label">Amount</label> <input type="number"
					name="amount" class="form-control" required />
			</div>
			<input type="submit" class="btn btn-outline-primary"
				value="Add Amount" /> <input type="reset"
				class="btn btn-outline-light" value="Reset" />

		</form>
		<span style="color: red">${sessionScope.amountAddMsg}</span>
	</div>
</body>
</html>
<%@ page language="java" 
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
		<form action="loginCheck.spring" method="post">
			<div class="form-outline mb-2">
				<label class="form-label">Email address</label> <input type="email"
					name="email" class="form-control" required />
			</div>

			<div class="form-outline mb-2">
				<label class="form-label">Password</label> <input type="password"
					name="password" class="form-control" required />
			</div>

			<label class="form-check-label" for="flexRadioDefault1">Type
				Of User</label>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="typeOfUser"
					value="admin" /> <label class="form-check-label">Admin</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="typeOfUser"
					value="customer" /> <label class="form-check-label">Customer</label>
			</div>

			<input type="submit" class="btn btn-outline-primary" value="Sign In" />
			<input type="reset" class="btn btn-outline-light" value="Reset" />
		</form>
		<div>
			<a href="customerSignUp.spring" class="link-info">Sign Up</a>
		</div>
		<span style="color: red">${requestScope.msg}</span>
	</div>
</body>
</html>
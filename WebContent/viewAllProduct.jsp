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

	<%@include file="adminHome.jsp"%>
	
	<div class="container">
		<ul class="nav">
			<li class="nav-item"><a class="nav-link"
				href="adminDashboard.spring">Dashboard</a></li>
		</ul>
		<h2>View All Product Details</h2>
		<core:forEach items="${sessionScope.allProduct}" var="product">
			<div class="imageClass" style="display:inline-block;margin: 10px;padding:20px;padding:20px;border-radius: 20px;">
				<div>
					<img src="${product.productUrl}" width="250px" height="250px"
						class="circle" />
				</div>
				<h3>
					Name <span class="badge bg-info">${product.productName}</span>
				</h3>
				<h3>
					Price <span class="badge bg-info">${product.productPrice}</span>
				</h3>
				<h3>
					Quantity <span class="badge bg-info">${product.productQuantity}</span>
				</h3>
			</div>
		</core:forEach>
	</div>
</body>
</html>
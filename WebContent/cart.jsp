<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
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
				href="displayAllProductToCustomer.spring">Back to Shopping</a></li>
		</ul>
		<h2>Cart Details Summary</h2>
		<table border="2" class="table">

			<tr>
				<th>Options</th>
				<th>Id</th>
				<th>Photo</th>
				<th>Name</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Sub Total</th>
			</tr>
			<c:set var="sum" value="0"></c:set>
			<c:forEach var="pr" items="${sessionScope.cart}">
				<c:set var="sum"
					value="${sum+ pr.product.productPrice * pr.product.productQuantity}"></c:set>
				<tr>
					<td>
						<ul class="nav">
							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/shoppingcart/delete/${pr.product.pid }.spring">Remove
									Item</a></li>
						</ul>
					</td>
					<td>${pr.product.pid }</td>

					<td><img alt="" src="${pr.product.productUrl}" height="100px"
						width="100px"></td>

					<td>${pr.product.productName }</td>
					<td>${pr.product.productPrice }</td>
					<td>${pr.quantity }</td>
					<td>${pr.product.productPrice * pr.quantity}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="6" align="right">Sum</td>
				<td>${sum}</td>
			</tr>
		</table>
		<ul class="nav">
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/shoppingcart/placeOrder/${sum}.spring">Place
					the Order</a></li>
		</ul>
	</div>



</body>
</html>
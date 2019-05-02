<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order History</title>
</head>
<body>
	<!-- header -->
	<%@include file="header.jsp" %>
	<section>
		<div class="container">
			
			<div class = "row border-bottom shadow-sm pt-4 pb-0 mb-2 font-weight-bold">
				<div class="col-md-3">
					<p class="text-center">Order ID</p>
				</div>
				<div class="col-md-3">
					<p class="text-center">Order Date</p>
				</div>
				<div class="col-md-3">
					<p class="text-center"> Order Status</p>
				</div>
				<div class="col-md-3">
					<p class="text-center">Order Detail</p>
				</div>
			</div>
					
			<div class="mb-5">
				<c:forEach items="${requestScope.orders}" var="order" varStatus="loop">
					<div class="row border-bottom border-left border-right mb-1 pb-1">
						<div class="col-md-3">
							<p class="text-center text-danger">${order.id}</p>
						</div>
						<div class="col-md-3">
							<p class="text-center">${order.date}</p>
						</div>
						<div class="col-md-3 d-flex justify-content-center">
							<span class="text-center px-3 py-2 bg-info border text-uppercase text-white">Shipped</span>
						</div>
						<div class="col-md-3 d-flex justify-content-center">
							<a href="#" class="btn btn-md btn-secondary px-4">Details</a>
						</div>
					</div>
				</c:forEach>
			</div>
			
		</div>
		
	</section>
	
	<!-- footer -->
	<%@include file="footer.jsp" %>
</body>
</html>
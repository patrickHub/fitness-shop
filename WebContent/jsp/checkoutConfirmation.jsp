<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fitness Shop</title>
</head>
<body>

	<!-- header -->
	<%@include file="header.jsp" %>
	<section>
			
		<div class="container">	
				<div class = "row d-flex justify-content-center">
					<div class="col-md-1"></div>
					<div class="col-md-1  bg-secondary border border-secondary rounded-circle d-flex justify-content-center text-white" style="max-width:30px;">
					1
					</div>
					<div class="col-md-3 border-top mt-3 ">
						
					</div>
					<div class="col-md-1 bg-secondary border bg-secondary rounded-circle d-flex justify-content-center text-white" style="max-width:30px;">
						2
					</div>
					<div class="col-md-4 border-top mt-3">
						
					</div>
					<div class="col-md-1 bg-danger border border-danger rounded-circle d-flex justify-content-center text-white" style="max-width:30px;">
						3
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row">
					<div class="col-md-2">
						<p class="text-sm-center">customer information</p>
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-3">
						<p class="text-sm-center">Shipping & payment</p>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-2">
						<p class="text-sm-center text-danger">Order Validation</p>
					</div>
				</div>
				<div class="row mt-5 d-flex justify-content-center">
					<h3 class="text-success font-weight-bold">Thank you so mush. Your order have been registerd successfully.</h3>
				</div>
				<div class="row d-flex justify-content-center">
					<!-- user order -->
					<%@include file="checkoutOrder.jsp" %>
				</div>
		</div>
	</section>


	<!-- footer -->
	<%@include file="footer.jsp" %>
</body>
</html>
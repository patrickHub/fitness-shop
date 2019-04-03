<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<title>Fitness Shop</title>
</head>
<body>

	<!-- header -->
	<%@include file="header.jsp" %>
	<section>
			
		<div class="row">
			<div class="col-md-8">	
				<div class = "row">
					<div class="col-md-1"></div>
					<div class="col-md-1  bg-danger border border-danger rounded-circle d-flex justify-content-center text-white" style="max-width:30px;">
					1
					</div>
					<div class="col-md-3 border-top mt-3 ">
						
					</div>
					<div class="col-md-1 bg-secondary border border-secondary rounded-circle d-flex justify-content-center text-white" style="max-width:30px;">
						2
					</div>
					<div class="col-md-4 border-top mt-3">
						
					</div>
					<div class="col-md-1 bg-secondary border border-secondary rounded-circle d-flex justify-content-center text-white" style="max-width:30px;">
						3
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row">
					<div class="col-md-2">
						<p class="text-sm-center text-danger">customer information</p>
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-3">
						<p class="text-sm-center">Shipping & payment</p>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-2">
						<p class="text-sm-center">Order Validation</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 bg-light">
				<!-- user order -->
				<%@include file="checkoutOrder.jsp" %>
			</div>
		</div>
	</section>


	<!-- footer -->
	<%@include file="footer.jsp" %>
	<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
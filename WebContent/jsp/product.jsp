<%@page import="com.patrickhub.fitnessshop.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Fitness Shop</title>
	<link type="text/css"  rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	
	<!-- Header -->
		<%@include file="header.jsp" %>
	<section>
		<div class ="container border-bottom pb-5 ">
			
			<% 
				Product product = (Product)request.getAttribute("product");
			%>
			
			<div class="my-5">
				<a class="float-left text-danger py-5" href="">View all products</a>
			</div>
			
			<div class="row">
				<div class="col-6">
					<img class="img-fluid" alt="<%= product.getName() %>" src="image/<%=product.getImgPath()%>">
				</div>
				<div class="col-6">
					<h2 class="blog-post-title text-uppercase mb-3"><%=product.getName()%></h2>
					<h3 class="blog-post-title text-danger mb-3">CHF <%=product.getPrice() %></h3>
					<form>
						<label class="text-uppercase" for="quantity">Quantity</label>
						<input type="text" class="form-control bg-light" id="quantity" style="max-width:180px;">
					</form>
					<button type="button" class="btn btn-danger btn-md text-white text-uppercase my-5 p-2">add to cart</button>
					<p class="lead"><%=product.getDescription() %></p>
				</div>
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
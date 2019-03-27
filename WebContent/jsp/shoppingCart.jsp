<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fitness Shop</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){

	$('.quantityUp').on('click',function(){
    	currentQuantityInput = $(this).prev();
    	currentQuantityInput.val(parseInt(currentQuantityInput.val())+1);
    });
    $('.quantityDown').on('click',function(){
    	currentQuantityInput = $(this).next();
    	currentQuantityInput.val(parseInt(currentQuantityInput.val())-1);
    });

    
//     $('.minus').click(function(){
//     	  quantityField = $(this).next();
//     	  if (quantityField.val() != 0) {
//     	     quantityField.val(parseInt(quantityField.val(), 10) - 1));
//     	  }
//     	});

});
</script>
</head>
<body>
	<!-- header -->
	<%@include file="header.jsp" %>
	<section>
		<div class = "container">
			<h2 class="text-center text-danger text-uppercase my-5 py-5 font-weight-bold">shopping cart</h2>
			<c:choose>
				<c:when test="${sessionScope.cart != null && sessionScope.cart.vectors.size() > 0}">
					<div class = "row border-bottom shadow-sm pt-2 pb-3 mb-2 font-weight-bold">
						<div class="col-md-6 pl-5">
							<p>Product</p>
						</div>
						<div class="col-md-2">
							<p class="text-center">Price</p>
						</div>
						<div class="col-md-2">
							<p class="text-center"> Quantity</p>
						</div>
						<div class="col-md-2">
							<p class="text-center">Total</p>
						</div>
					</div>
					
					<c:forEach items="${sessionScope.cart.vectors}" var="item" varStatus="loop">
						<div class = "row border-bottom mb-1 pb-1">
							<div class="col-md-6">
								<div class="d-flex">
									<img class="img-fluid" alt="${item.name}" src="image/${item.imgPath}" style="max-width:68.8px; max-height:68.8px;">
									<div class = "d-flex align-items-center ml-3">
										<p class="text-center font-weight-bold">${item.name}</p>
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div>
								<p class="text-sm-center pt-3">${item.price}</p>
								</div>
							</div>
							<div class="col-md-2">
								
								<form class="form-inline mt-2">
						            <div class="btn-group" role="group">
							            <button type="button" id="quantityDown" class="quantityDown btn btn-danger">-</button>
							            <input type="text" class="form-control" value="${item.quantity}" style="max-width:50px;"/>
						         
							            <button type="button" id="quantityUp" class="quantityUp btn btn-success">+</button>
						       		</div>
							      </form>
							</div>
							<div class="col-md-2">
								<div>
									<p class="text-sm-center pt-3">CHF
										<fmt:formatNumber value="${item.quantity*item.price}" maxFractionDigits="2" />
									</p>
								</div>
							</div>
					</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<p class="lead text-center"> Your shopping cart is empty</p>
				</c:otherwise>
			</c:choose>
				
		</div>
	</section>
	
	
	
	
	<!-- footer -->
	<%@include file="footer.jsp" %>
	<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
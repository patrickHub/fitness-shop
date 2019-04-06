<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
<title>Login | Fitness-Shop</title>
</head>
<body>
	<!-- Header -->
	<%@include file="header.jsp" %>
		<section>
			<div class="container">
					
					<div class="row">
						<div class="col-md-6 rounded-pill">
							<form class="form my-5 p-5 d-flex align-items-center flex-column bg-light border shadow-sm rounded" action="login" method="post" style="max-width:480px;">
								<h2 class="font-weight-bold">Login</h2>
								<input id="username" class="form-control my-3 rounded-pill" type="text" placeholder="Username" autofocus style="max-width:350px;" />
							
								<input id="password" class="form-control my-3 rounded-pill" type="password" placeholder="Password" style="max-width:350px;"/>
								
								<button class="btn btn-lg btn-primary btn-block my-5 rounded-pill" type="submit" style="max-width:350px;">Sign in</button>
								<p class="">Don't have an account ? <a href="register">Sign-Up</a></p>
							</form>
						</div>
						<div class="col-md-6 bg-danger d-flex align-items-center flex-column justify-content-center my-5 p-5 rounded">
							<div class="">
								<h1 class="text-uppercase text-white">welcome to fitness<br>  shop supplements</h1>
							</div>
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript">
	
	function validateForm(){
		
		// check weither username input is provided
		var username = document.getElementById('username');
		if(username.value.length<=0){
			document.getElementById("usernameError").innerHTML = "please provide a username!";
			return false;
		}
		document.getElementById("usernameError").innerHTML = "";
		
		// check weather password input is provided
		var password = document.getElementById('password');
		if(password.value.length<=0){
			document.getElementById("passwordError").innerHTML = "please provide a password!";
			return false;
		}
		document.getElementById("passwordError").innerHTML = "";
		return true;
	}
	
</script>
<title>Login | Fitness-Shop</title>
</head>
<body>
	<!-- Header -->
	<%@include file="header.jsp" %>
		<section>
		<div class="container d-flex justify-content-center">
			<c:if test="${requestScope.isRegistered}">
						<div class="alert alert-success mt-5 px-5" role="alert">
						  You have register successfully !
						</div>
			</c:if>
			<c:if test="${requestScope.isInvalidCredentials}">
						<div class="alert alert-danger mt-5 px-5" role="alert">
						  Invalid username or password, please try again !
						</div>
					</c:if>
			</div>
			<div class="container">
					<div class="row">
						<div class ="col-md-2">
						</div>
						<div class="col-md-4 rounded-pill">
							<form class="form mt-2 mb-5 p-5 d-flex align-items-center flex-column bg-white border shadow-sm rounded" action="login" method="post" onsubmit="return validateForm()">
								<h2 class="font-weight-bold">Login</h2>
								<div class="my-3">
									<input id="username" name="username" class="form-control rounded-pill" type="text" placeholder="Username" autofocus style="max-width:350px;" />
									<span id="usernameError" class="text-danger font-weight-bold">${errors.get("username")}</span>
								</div>
								<div class="my-3">
									<input id="password" name="password" class="form-control rounded-pill" type="password" placeholder="Password" style="max-width:350px;"/>
									<span id="passwordError" class="text-danger font-weight-bold">${errors.get("password")}</span>
								</div>
								<button class="btn btn-lg btn-primary btn-block my-5 rounded-pill" type="submit" style="max-width:350px;">Sign in</button>
								<p class="pt-3 border-top">Don't have an account ? <a href="register">Sign-Up</a></p>
							</form>
						</div>
						<div class="col-md-4 bg-danger d-flex align-items-center flex-column justify-content-center mt-2 mb-5 p-5 rounded">
							<div class="">
								<h1 class="text-uppercase text-white">welcome to fitness shop supplements</h1>
							</div>
						</div>
						<div class ="col-md-2">
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
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register | Fitness-Shop</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">

<script type="text/javascript">
	
	function validateForm(){
		
		// check weither username input is valid
		var username = document.getElementById('username');
		if(username.value.length<=0){
			document.getElementById("usernameError").innerHTML = "please provide a username!";
			return false;
		}else if(username.value.length<5 || username.value.length>10){
			document.getElementById("usernameError").innerHTML = "username must be 5 characters min and 10 characters max!";
			return false;
		}else if(!isNaN(username.value)){
			document.getElementById("usernameError").innerHTML = "username must contain at least one character";
			return false;
		}
		document.getElementById("usernameError").innerHTML = "";
		
		// check weather password input is valid
		var password = document.getElementById('password');
		if(password.value.length<=0){
			document.getElementById("passwordError").innerHTML = "please provide a password!";
			return false;
		}else if(password.value.length<5 || password.value.length>10){
			document.getElementById("passwordError").innerHTML = "password must be 5 characters min and 10 characters max!";
			return false;
		}
		document.getElementById("passwordError").innerHTML = "";
		
		// check weather first name input is valid
		var firstName = document.getElementById('firstName');
		if(firstName.value.length<=0){
			document.getElementById("firstNameError").innerHTML = "please provide a first name!";
			return false;
		}else if(firstName.value.length>30){
			document.getElementById("firstNameError").innerHTML = "first name must be 30 characters max!";
			return false;
		}
		document.getElementById("firstNameError").innerHTML = "";
		
		// check weather last name input is valid
		var lastName = document.getElementById('lastName');
		if(lastName.value.length<=0){
			document.getElementById("lastNameError").innerHTML = "please provide a last name!";
			return false;
		}else if(lastName.value.length>30){
			document.getElementById("lastNameError").innerHTML = "last name must be 30 characters max!";
			return false;
		}
		document.getElementById("lastNameError").innerHTML = "";
		
		// check weather email input is valid
		var email = document.getElementById('email');
		var regExp = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
		if(email.value.length<=0){
			document.getElementById("emailError").innerHTML = "please provide an email!";
			return false;
		}else if(email.value.length>30){
			document.getElementById("emailError").innerHTML = "email must be 30 characters max!";
			return false;
		}
		else if(!regExp.test(email.value)){
			document.getElementById("emailError").innerHTML = "provide a valid email!";
			return false;
		}
		document.getElementById("emailError").innerHTML = "";
			
		// check weather phone input is valid
		var phone = document.getElementById('phone');
		var regExp = /^\d{10}$/
		if(phone.value.length<=0){
			document.getElementById("phoneError").innerHTML = "please provide a phone number!";
			return false;
		}else if(!phone.value.match(regExp)){
			document.getElementById("phoneError").innerHTML = "provide a valid phone number!";
			return false;
		}
		document.getElementById("phoneError").innerHTML = "";
		
		// check weather country is selected
		var country = document.getElementById('country');
		if(country.value.length==0){
			document.getElementById("countryError").innerHTML = "please select a country!";
			return false;
		}
		document.getElementById("phoneError").innerHTML = "";
		
		// check weather street input is valid
		var street = document.getElementById('street');
		if(street.value.length<=0){
			document.getElementById("streetError").innerHTML = "please provide an street address!";
			return false;
		}else if(street.value.length>30){
			document.getElementById("streetError").innerHTML = "street address must be 30 characters max!";
			return false;
		}
		document.getElementById("streetError").innerHTML = "";
		
		// check weather zip code input is valid
		var zipCode = document.getElementById('zipCode');
		if(zipCode.value.length<=0){
			document.getElementById("zipCodeError").innerHTML = "please provide a zip code!";
			return false;
		}else if(zipCode.value.length>10){
			document.getElementById("zipCodeError").innerHTML = "street address must be 10 characters max!";
			return false;
		}else if(isNaN(zipCode.value)){
			document.getElementById("zipCodeError").innerHTML = "please provide a valid zip code!";
			return false;
		}
		document.getElementById("zipCodeError").innerHTML = "";
		
		// check weather city input is valid
		var city = document.getElementById('city');
		if(city.value.length<=0){
			document.getElementById("cityError").innerHTML = "please provide a city!";
			return false;
		}else if(city.value.length>30){
			document.getElementById("cityError").innerHTML = "please provide a valid city";
			return false;
		}else if(!isNaN(city.value)){
			document.getElementById("cityError").innerHTML = "please provide a valid city";
			return false;
		}
		document.getElementById("cityError").innerHTML = "";
		return true;
	}
	
</script>
</head>
<body>
	
	<%
		Map<String, String> errors = (HashMap<String, String>)request.getAttribute("errors");
	%>
	
	<!-- header -->
	<%@include file="header.jsp" %>
	<section>
		<div class="container" style="max-width:800px;">
			<form action="register" method="post" class="border shadow-sm px-5 my-5 rounded" onsubmit="return validateForm()">
				<h3 class="text-uppercase text-danger mt-5 mb-4">Customer login information</h3>
				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="username">Username</label>
						<input id="username" name="username" class="form-control rounded-pill" type="text"/>
						<span id="usernameError" class="text-danger font-weight-bold">${errors.get("username")}</span>
					</div>
					<div class="col-md-6 mb-3">
						<label for="password">Password</label>
						<input id="password" name="password" class="form-control rounded-pill" type="password" />
						<span id="passwordError" class="text-danger font-weight-bold">${errors.get("password")}</span>
					</div>
				</div>
				<h3 class="text-uppercase text-danger mt-5 mb-3">Shipping address</h3>
				 
				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="firstName">First name</label>
						<input id="firstName" name="firstName" class="form-control rounded-pill" type="text"/>
						<span id="firstNameError" class="text-danger font-weight-bold">${errors.get("firstName")}</span>
					</div>
					<div class="col-md-6 mb-3">
						<label for="lastName">Last name</label>
						<input id="lastName" name="lastName" class="form-control rounded-pill" type="text"/>
						<span id="lastNameError" class="text-danger font-weight-bold">${errors.get("lastName")}</span>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="email">Email address</label>
						<input id="email" name="email" class="form-control rounded-pill" type="text"/>
						<span id="emailError" class="text-danger font-weight-bold">${errors.get("email")}</span>
					</div>
					<div class="col-md-6 mb-3">
						<label for="phone">Phone</label>
						<input id="phone" name="phone" class="form-control rounded-pill" type="text"/>
						<span id="phoneError" class="text-danger font-weight-bold">${errors.get("phone")}</span>
					</div>
				</div>
				
				<div class="row">
					
					<div class="col-md-6 mb-3">
						 <label for="birthdate">birthdate</label>
						 <input id="birthdate" type="date" name="birthdate" class="form-control rounded-pill"
						 		min="1000-01-01" max="3000-12-31" >
						 <span id="birthdateError" class="text-danger font-weight-bold">${errors.get("birthdate")}</span>
						
						
<!-- 						<input id="birthdate" name="phone" class="form-control rounded-pill" type="text"/> -->
						
<!-- 						<div class="input-group date" data-provide="datepicker"> -->
						
<!-- 						<label for="birthdate">birthdate</label> -->
<!-- 						    <input id="birthdate" type="text" class="form-control"> -->
<!-- 						    <div class="input-group-addon"> -->
<!-- 						        <span class="glyphicon glyphicon-th"></span> -->
<!-- 						    </div> -->
<%-- 						    <span id="birthdateError" class="text-danger font-weight-bold">${errors.get("birthdate")}</span> --%>
<!-- 						</div> -->
					</div>
					<div class="col-md-6 mb-3">
						<label for="country">Country</label>
						<select id="country" name="country" class ="custom-select rounded-pill">
							<option value="">Choose a country</option>
							<% 
								List<Locale> countries = getAllCountries();
								for(Locale country: countries){
							%>
								<option value="<%=country.getDisplayCountry()%>"><%=country.getDisplayCountry()%></option>
							<%
								}
							%>
						</select>
						<span id="countryError" class="text-danger font-weight-bold">${errors.get("country")}</span>
					</div>
				</div>
				
				<div class="mb-3">
						<label for="street">Street Address</label>
						<input id="street" name="street" class="form-control rounded-pill" type="text" />
						<span id="streetError" class="text-danger font-weight-bold"></span>
				</div>
				
				<div class="row">
					<div class="col-md-3 mb-3">
						<label for="zipCode">Postal/Zip</label>
						<input id="zipCode" name="zipCode" class="form-control rounded-pill" type="text"/>
						<span id="zipCodeError" class="text-danger font-weight-bold">${errors.get("zipCode")}</span>
					</div>
					<div class="col-md-9 mb-3">
						<label for="city">City</label>
						<input id="city" name="city" class="form-control rounded-pill" type="text"/>
						<span id="cityError" class="text-danger font-weight-bold">${errors.get("city")}</span>
					</div>
				</div>
				<button class="btn btn-success btn-lg px-5 my-5 rounded-pill">Register</button>
			</form>
		</div>
	</section>


	<%!
		public List<Locale> getAllCountries(){
			List<Locale> result = new ArrayList<>();
			for(String countryCode: Locale.getISOCountries()){
				result.add(new Locale("", countryCode));
			}
			return result;
		}
	%>	
	
	
	<!-- footer -->
	<%@include file="footer.jsp" %>
	<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
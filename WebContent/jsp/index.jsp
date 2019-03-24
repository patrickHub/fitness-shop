<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.patrickhub.fitnessshop.bean.Product"%>
<%@page import="java.util.List"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Fitness Shop</title>
	<link type="text/css"  rel="stylesheet" href="css/bootstrap.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

</head>
<body>
 	<!-- Header -->
	<%@include file="header.jsp" %>
	
	<section>
		<div class ="container">
			<div class="row mb-5">
				<div class="col-md-6 bg-dark">
					<img class="img-fluid" alt="fitness shop" src="image/home-image-1.png">
				</div>
				<div class="col-md-6 text-uppercase bg-danger text-center align-middle d-flex align-items-center">
						<h1  class="font-weight-bold text-white">welcome to fitness <br>shop supplements</h1>
				</div>
			</div>
			
			<%
				List<Product> products = (ArrayList)request.getAttribute("products");
				List<List<Product>> displays = new ArrayList<>();
				
				Iterator it = products.iterator();
				while(it.hasNext()){ 
					displays.add(new ArrayList<>());
					int i = 0;
					while(it.hasNext() && i<3){
						displays.get(displays.size()-1).add((Product)it.next());
						i++;
					}
				} 
				for(List<Product> line: displays){
					Iterator itColumn = line.iterator();
			%>
				<div class="card-deck mb-3 text-center">
			<%
					while(itColumn.hasNext()){ 
						Product item = (Product)itColumn.next();
			%>
						<div class="card mb-4 shadow-sm" style="max-width:350px;">
					      <div class="card-header">
					        <h4 class="my-0 font-weight-normal"><%=item.getName() %></h4>
					      </div>
					      <div class="card-body">
					        <img class="img-fluid" alt="<%=item.getName()%>" src="image/<%=item.getImgPath()%>" style="max-width:308px; max-height:308px;">
					       
					        <button type="button" class="btn btn-lg btn-block btn-outline-danger mt-5">More options</button>
					      </div>
					    </div>
			 <%
				
					}
			%>
			</div>
			<%
				}
			%>
		</div> <!-- end of container -->
		
	</section> <!-- end of section -->
	
	<!-- footer -->
	<%@include file="footer.jsp" %>
	
<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="js/popper.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

</body>
</html>
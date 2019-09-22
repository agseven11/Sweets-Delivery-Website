<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,com.mithaimafia.cartd.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>cart</title>
    <link rel="Stylesheet" href="bootstrap-4.0.0-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="Stylesheet" href="bootstrap-4.0.0-dist/css/bootstrap.min.css">
    <link rel="Stylesheet" href="css/home1.css">
    <link rel="Stylesheet" href="css/cart.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="Stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    


</head>
<body>
<%
HttpSession s = request.getSession();

String name = (String)s.getAttribute("name");
String id = (String)s.getAttribute("id");
%>

<div id="restt">
	

        <!-- Navigation -->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
            <a class="navbar-brand" href="#"><img src="images/2b.png"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
                <span class="navbar-toggler-icon"></span>
            </button>
    
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
            	
            	 
                <li class="nav-item">
                    <a class="nav-link" href="home1.jsp">Home</a>
                </li> 
               
                
                <li class="nav-item dropdown1">
                        <a class="btn btn-outline-light btn-lg1" href="#"><%=name %>   <i class="fa fa-caret-down"></i></a>
					<div class="places" id="plcid">
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" id="nmid" href="">Profile</a>
                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" id="lgtid" href="LogoutServlet">Logout</a>
                          <div class="dropdown-divider"></div>
                        </div>
                      </div>
                 </li>
                 
             
    
            </ul>
    
    
        </div>
    
        </nav>
    
    
        <!-- End Navigation -->

</div>

<div class="cr1">

	<center>
	<h2>Enter a Delivery Address</h2>
	<input type="text" name="address" placeholder="Address" >
	</center>

</div>


<%
List<CartdModel> l = (List<CartdModel>)request.getAttribute("data");


%>
	<div class="Listuser">
		
		<center>
		<h2>Welcome <%=name%></h2>
		
		
			<table>
			<tr>
				<th>Dishname</th>
				<th>Price</th>
				
			</tr>
			
<%

for(CartdModel r:l)
{
%>
<tr>
		<td><%= r.getDishname() %></td>
		<td><%= r.getPrice() %></td>
		
</tr>
			
<%} %>
</table>
		
		</center>
		
	</div>
	
	<div class = "order">
	<center>
	<button href="#" class="button1">Order</button>
	</center>
	</div>










</body>
</html>
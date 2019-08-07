<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mithai Mafia</title>
    <link rel="Stylesheet" href="bootstrap-4.0.0-dist/css/bootstrap.min.css">
    <link rel="Stylesheet" href="css/home.css">
    <link rel="Stylesheet" href="css/home01.css">
    <link rel="Stylesheet" href="css/fixed.css">
    <link rel="Stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="Stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body data-spy="scroll" data-target="#navbarResponsive">

<%

String status1 = (String)request.getAttribute("status1");
if(status1 != null){

%>
<script>
        $(document).ready(function(){
        	swal("Email Already Exists","","error");
        });

    </script>

<%} %>

<%
String status = (String)request.getAttribute("status");
if(status != null){

%>
<script>
        $(document).ready(function(){
        	swal("Password Doesnot Match","","warning");
        	
        });

    </script>

<%} %>

<%
String status2 = (String)request.getAttribute("status2");
if(status2 != null){

%>
<script>
        $(document).ready(function(){
        	swal("Successfully Registered","","success");
        	
        });

    </script>

<%} %>

<%

String status3 = (String)request.getAttribute("status3");
if(status3 != null){

%>
<script>
        $(document).ready(function(){
        	swal("Invalid Email or Password","","error");
        });

    </script>

<%} %>


    <!-- Start Home Section -->
    <div id="home">

        <!-- Navigation -->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
            <a class="navbar-brand" href="#"><img src="images/2b.png"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
                <span class="navbar-toggler-icon"></span>
            </button>
    
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#home">Home</a>
                </li> 
                <li class="nav-item">
                    <a class="nav-link" href="#about">About</a>
                </li> 
                <li class="nav-item">
                        <a class="nav-link" href="#resources">Resources</a>
                    </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contact">Contact</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="#" id="logid">Login</a>
                </li>  
                <li class="nav-item">
                    <a class="nav-link" href="#" id="regid">SignUp</a>
                </li> 
                
    
            </ul>
    
    
        </div>
    
        </nav>
    
    
        <!-- End Navigation -->
    
        <!-- Start Landing page section-->
        <div class="landing">
                <div class="home-wrap">
                    <div class="home-inner">
        
                    </div>
                    </div>
        
        
            </div>
            
            <div class="caption text-center">
                <h1>Mithai Mafia </h1>
                <h3>Making your life sweet one bite at a time</h3>
                <li class="nav-item dropdown">
                        <a class="btn btn-outline-light btn-lg" href="#">Select Location     <i class="fa fa-caret-down"></i></a>
					<div class="places" id="plcid">
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" id="bskid" href="">Banashankari</a>
                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" id="jayid" href="#">Jayanagar</a>
                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" id="indid" href="#">Indiranagar</a>
                          <div class="dropdown-divider"></div>
                        </div>
                      </div>
                      </li>
                
        
                </div>
                
                <script>
				    document.getElementById("bskid").addEventListener("click",function(){
				    	alert("Please Login");
				    })
				
				</script>
				<script>
				    document.getElementById("jayid").addEventListener("click",function(){
				    	alert("Please Login");
				    })
				
				</script>
				<script>
				    document.getElementById("indid").addEventListener("click",function(){
				    	alert("Please Login");
				    })
				
				</script>
        
        
            <!-- End Landing page section-->
    

    </div>
    <!-- End Home Section -->

    
    <!-- Start About Section -->
    <div id="about" class="offset">
        <div class="col-12 narrow text-centre">
            <center>
            <h1 class="mm1">Mithai Mafia</h1>
            <div class="heading-underline"></div>
            </center>
        </div>
        <div class="row">

       
            <div class="col-md-3">
                    <img src="images/2b.png"></a>
            </div>
            
            <div class="col-md-9">
                    <p class="lead1" >
                            Confectionery is the art of making confections, which are food items that are rich in sugar and carbohydrates. Exact definitions are difficult.In general, though, confectionery is divided into two broad and somewhat overlapping categories, bakers' confections and sugar confections.
                            Bakers' confectionery, also called flour confections, includes principally sweet pastries, cakes, and similar baked goods.Sugar confectionery includes candies (sweets in British English), candied nuts, chocolates, chewing gum, bubble gum, pastillage, and other confections that are made primarily of sugar. In some cases, chocolate confections (confections made of chocolate) are treated as a separate category, as are sugar-free versions of sugar confections.[3] The words candy (US and Canada), sweets (UK and Ireland), and lollies (Australia and New Zealand) are common words for the most common varieties of sugar confectionery.
                            The confectionery industry also includes specialized training schools and extensive historical records.Traditional confectionery goes back to ancient times and continued to be eaten through the Middle Ages into the modern era.
                    </p>
            </div>
        </div>
           



        
    </div>
    <!-- End About Section -->

    <!-- Start Resource Section -->
    <div id="resources" class="offset">
        <div class="fixed-background">
            <div class="row dark text-center">
                <div class="col-12">
                    <h3 class="heading">Built With care</h3>
                    <div class="heading-underline"></div>
                </div>

                <div class="col-md-4">
                    <h3>HTML 5</h3>
                    <div class="feature">
                        <i class="fas fa-code fa-3x"></i>
                    </div>
                    <p class="lead">Built with the latest, HTML 5</p>
                </div>

                <div class="col-md-4">
                    <h3>BOOTSTRAP 4</h3>
                    <div class="feature">
                        <i class="fas fa-bold fa-3x"></i>
                    </div>
                    <p class="lead">Built with the latest, BOOTSTRAP 4</p>
                </div>

                <div class="col-md-4">
                    <h3>CSS 3</h3>
                    <div class="feature">
                        <i class="fab fa-css3 fa-3x" aria-hidden="true"></i>
                    </div>
                    <p class="lead">Built with the latest, CSS 3</p>
                </div>

            </div> <!-- End row Dark -->

        
            <div class="fixed-wrap">
                <div class="fixed">

                </div>
            </div>
        
        </div> 
        
    </div>
    <!-- End Resource Section -->    

    

    <!-- Start Contact Section -->
    <div id="contact" class="offset">
            <footer>
                    <div class="row justify-content-center">
                        <div class="col-md-5 text-center">
                            <img src="">
                            <p>
                                #435,3rd floor,Prinss Complex,Indiranagar,Bangalore <br>560008
                            </p>
                            <strong>Contact Us</strong>
                            <p>Call : 965236523 <br>Email : contact@mithaimafia.com</p>
                            <a href="" target="_blank"><i class="fab fa-facebook-square fa-2x"></i></a>
                            <a href="" target="_blank"><i class="fab fa-twitter-square fa-2x"></i></a>
                            <a href="" target="_blank"><i class="fab fa-instagram fa-2x"></i></a>
            
                       
                        </div>
                        
                        <hr class="socket">
                         
                    </div>

                    
                </footer>
        
    </div>
    <!-- End Contact Section -->
    

    <!--    Login And Signup    -->

    <div class="popup" id="logid">
    <form action="LoginServlet" method="POST">
        <div class="popup-content">
            <div class="close" id="closeid">
                    <i class="far fa-times-circle"></i>
            </div>
                
            <img src="images/l.jpg" alt="">
            <input type="email" name="umail" placeholder="Email"><br>
            <input type="password" name="upass" placeholder="Password"><br>
            <button href="#" class="button">Login</button>
            

        </div>
</form>
    </div>

    <script>
    document.getElementById("logid").addEventListener("click",function(){
        document.querySelector(".popup").style.display = "flex";
        document.querySelector(".popup1").style.display = "none";
    })

    </script>

	<script>
        document.getElementById("closeid").addEventListener("click",function(){
            document.querySelector(".popup").style.display = "none";
        })
    
      </script>

<div class="popup1" id="regid">


        <div class="popup-content1">
        	<form action="RegisterServlet" method="POST">
            <div class="close1" id="closeid1">
                    <i class="far fa-times-circle"></i>
            </div>
                
            <img src="images/l.jpg" alt=""><br>
            <input type="text" name="name" placeholder="Name" required>
            <input type="number" name="phone" placeholder="Phone" required>
            <input type="email" name="mail" placeholder="Email" required>
            <input type="password" name="pass" placeholder="Password" required>
            <input type="password" name="cpass" placeholder="Confirm Password" required>
            <button href="#" class="button1">Register</button>
            
            
            

        </div>
</form>
    </div>

    <script>
    document.getElementById("regid").addEventListener("click",function(){
        document.querySelector(".popup1").style.display = "flex";
        document.querySelector(".popup").style.display = "none";
    })

    </script>

<script>
        document.getElementById("closeid1").addEventListener("click",function(){
            document.querySelector(".popup1").style.display = "none";
        })
    
        </script>



    <!--    End Login And Signup    -->

    

    
    <!--   Script Source File   -->
    <script src = "js/jquery-3.3.1.min.js"></script>
    <script src = "bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>
    <script src = "https://use.fontawesome.com/releases/v5.6.1/css/all.css"></script>
    <!-- End of Script Source File -->





</body>
</html>
<%@page import="java.sql.ResultSet"%>
<%@page import="hire_package.Login_Validate"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="hire_package.DatabaseConnect"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

    <title> Obi [Auto] Motors </title>

    <!--=== Bootstrap CSS ===-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!--=== Animate CSS ===-->
    <link href="assets/css/plugins/animate.css" rel="stylesheet">
    <!--=== Vegas Min CSS ===-->
    <link href="assets/css/plugins/vegas.min.css" rel="stylesheet">
    <!--=== Slicknav CSS ===-->
    <link href="assets/css/plugins/slicknav.min.css" rel="stylesheet">
    <!--=== Magnific Popup CSS ===-->
    <link href="assets/css/plugins/magnific-popup.css" rel="stylesheet">
    <!--=== Owl Carousel CSS ===-->
    <link href="assets/css/plugins/owl.carousel.min.css" rel="stylesheet">
    <!--=== Gijgo CSS ===-->
    <link href="assets/css/plugins/gijgo.css" rel="stylesheet">
    <!--=== FontAwesome CSS ===-->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!--=== Theme Reset CSS ===-->
    <link href="assets/css/reset.css" rel="stylesheet">
    <!--=== Main Style CSS ===-->
    <link href="style.css" rel="stylesheet">
    <!--=== Responsive CSS ===-->
    <link href="assets/css/responsive.css" rel="stylesheet">


</head>

<body class="loader-active" onload="check()">
<% 
    String loc = request.getParameter("loc");
    String twn = request.getParameter("twn");
    String qry = request.getParameter("class");
    String towns[] = {"Nakuru","Eldoret","Nairobi","Kisumu"};
%>
    <!--== Header Area Start ==-->
    <header id="header-area" class="fixed-top">
       
	   <!--== Header Top Start ==-->
        <div id="header-top" class="d-none d-xl-block">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 text-left">
                        <i class="fa fa-map-marker"></i> Eldoret, Kenya (Eld-Iten Rd.)
                    </div>
                    
                    <div class="col-lg-3 text-center">
                        <i class="fa fa-mobile"></i> +254 712 345 678
                    </div>
                    
                    <div class="col-lg-3 text-center">
                        <i class="fa fa-clock-o"></i> Mon-Fri	08:00 - 17:00 Hrs
                    </div>
                    
                    <div class="col-lg-3 text-right">
                        <div class="header-social-icons">
                            <a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                    <!--== Social Icons End ==-->
                </div>
            </div>
        </div>
        <!--== Header Top End ==-->

        <!--== Header Bottom Start ==-->
        <div id="header-bottom">
            <div class="container">
                <div class="row">
                    <!--== Logo Start ==-->
                    <div class="col-lg-4">
                        <a href="index.jsp" class="logo">
                            <img src="assets/img/logo.png" alt="JSOFT">
                        </a>
                    </div>
                    <!--== Logo End ==-->

                    <!--== Main Menu Start ==-->
                    <div class="col-lg-8 d-none d-xl-block">
                        <nav class="mainmenu alignright">
                            <ul>
                                <li class="active"><a href="index.jsp">Home</a></li>
                                <li><a href="about.jsp">About</a></li>
                                <li><a href="cars.jsp">Cars</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
                                <% if (Login_Validate.login){ %>
                                <li style="font-size:10px;"><a href="logout"><i class="fa fa-sign-out" style="font-size:23px;"></i> Logout</a></li>
                                <% } else { %>
                                <li style="font-size:10px;"><a href="login.jsp"> <i class="fa fa-sign-in" style="font-size:23px;"></i> Login</a></li>
                                <% } %>
                            </ul>
                        </nav>
                    </div>
                    <!--== Main Menu End ==-->
                </div>
            </div>
        </div>
        <!--== Header Bottom End ==-->
    </header>
    <!--== Header Area End ==-->

     <!--== SlideshowBg Area Start ==-->
    <section id="slideslow-bg" style="height:125px;" class="vegas-container">
        
    </section>
    <!--== SlideshowBg Area End ==-->
                    <div class="book-ur-car">
                        
                                    <form method="post">
                                        <div class="pick-location bookinput-item">
                                            <select class="custom-select" name="twn" id="townSelect" onchange="this.form.submit()">
                                                <% int t = towns.length; 
                                                String s = "";
                                                if(twn == null){
                                                    out.println("<option disabled selected> Select Town</option>");
                                                } else {
                                                    s = twn;
                                                }
                                                
                                                for(int i = 0; i < t ; i++){ 
                                                    if(towns[i].equals(s)){
                                                        out.println("<option value=\""+towns[i]+"\" selected>"+towns[i]+"</option>");
                                                    } else {
                                                        out.println("<option value=\""+towns[i]+"\">"+towns[i]+"</option>");
                                                    }
                                                }
                                              %>
                                            </select>
                                        </div>
                                        <div class="pick-location bookinput-item">
                                         <select class="custom-select" name="loc" required>
                                              <option value="" disabled selected>Location</option>   
                                        <%
                                           try{
                                              
                                                DatabaseConnect db = new DatabaseConnect();
                                              Connection con =db.getCon();
                                              Statement stmt = con.createStatement();
                                              String f = Login_Validate.filter;


                                           ResultSet rs = stmt.executeQuery("select distinct local_location from vehicle_table where town_location = '"+twn+"';"); 
                                             while( rs.next()){
                                              String location = rs.getString("local_location");
                                       %>
                                            
                                              <option value="<%=location%>"><%=location%></option>
                                            
                                            
                                        <%
                                        }
                                        }catch(Exception e){}
                                        %>
                                          </select>  
                                        </div>
                                        
                                        <div class="bookinput-item">
                                            <select class="custom-select" name="class"  required onselect="">
                                              <option selected>PRICE RANGE</option>
                                              <option value="1">All</option>
                                              <option value="2">Affordable</option>
                                              <option value="3">Medium</option>
                                              <option value="4">Expensive</option>
                                            </select>
                                        </div>
                                        <div class="bookcar-btn bookinput-item">
                                            <button type="submit" onclick="href='#search'">Search Available</button>
                                        </div>
                                        <div class="bookcar-btn bookinput-item">
                                            <button onclick="location.href='index.jsp'" type="reset">Clear Search</button>
                                        </div>
                                    </form>
                                     
                                </div>

    <!--== What We Do Area Start ==-->
    <section id="what-do-area" class="section-padding" style="padding-bottom: 45px;">
        <div class="container">
            <div class="row">
                <!-- Section Title Start -->
                <div class="col-lg-12">
                    <div class="section-title  text-center">
                        <h2>BOOK WITH US & GET DISCOUNTS!</h2>
                        <span class="title-line"><i class="fa fa-institution"></i></span>
                    </div>
                </div>
                <!-- Section Title End -->
            </div>
            
            <div class="row">
                <!-- Single We Do Start -->
                <div class="col-lg-4 col-md-4">
                    <div class="single-we-do we-do-bg-1">
                        <div class="we-do-content">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <h3>RENT CARS</h3>
                                    <p>Need to rent a car for your vacation or business travels? or is it wheels for your next trip? Rent with Us for great deals and prices.</p>
                                    <a href="cars.jsp">Hire Car</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single We Do End -->

                <!-- Single We Do Start -->
                <div class="col-lg-4 col-md-4">
                    <div class="single-we-do we-do-bg-2">
                        <div class="we-do-content">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <h3>DRIVERS & GUIDES</h3>
                                    <p>We are your natural choice of guide service whether you are local tourist exploring your nation, a tour operator or a tourist representative.</p>
                                    <a href="about.jsp">Know More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single We Do End -->

                <!-- Single We Do Start -->
                <div class="col-lg-4 col-md-4">
                    <div class="single-we-do we-do-bg-3">
                        <div class="we-do-content">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <h3>INSPECT & REPAIR</h3>
                                    <p>Need answers to car repair questions? We offer paintless dent repairs, paintworks to scratches, scuffs and dents. We are Prepared. </p>
                                    <a href="contact.jsp">Contact Us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single We Do End -->
            </div>
        </div>
    </section>
    <!--== What We Do Area End ==-->

    
    <!-- Car List Content Start -->
              <section class="section-padding" style="padding-top: 0px;padding-bottom: 25px;">
               <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                  
                    <div class="car-list-content m-t-50" id="search">
                        <%
                            String mobile = "";
                            String mail = "";
                            String contact = "";
                            
                            try{
                               DatabaseConnect db = new DatabaseConnect();
                               Connection con =db.getCon();
                               Statement stmt = con.createStatement();
                               String f = Login_Validate.filter;

                               
                            ResultSet rs = stmt.executeQuery("select * from user_info_table where username = '"+Login_Validate.user_name+"';"); 
                            
                              while( rs.next()){
                               mobile = rs.getString("mobile");
                               mail = rs.getString("email");
                               if (mobile != null){
                                   contact = mobile;
                               } else if (mail != null){
                                   contact = mail;
                               }
                                    }
                                 }
                            catch(Exception e){}
                        %>
                        
                        <%
                            try{
                                 DatabaseConnect db = new DatabaseConnect();
                               Connection con =db.getCon();
                               Statement stmt = con.createStatement();
                               String f = Login_Validate.filter;
                               int min = 0;
                               int max = 0;
                               if(qry.equals("1")){
                                   min = 0;
                                   max = 100000000;
                               } else if(qry.equals("2")){
                                   min = 0;
                                   max = 3000;
                               } else if(qry.equals("3")){
                                   min = 3000;
                                   max = 5500;
                               } else if(qry.equals("4")){
                                   min = 5500;
                                   max = 10000000;
                               }
                               
                            ResultSet rs = stmt.executeQuery("select * from vehicle_table where local_location = '"+loc+"' and vehicle_pricing > '"+min+"' and vehicle_pricing < '"+max+"' and status = 'Available';"); 
                              while( rs.next()){
                               String name = rs.getString("vehicleNo_plate");
                               String description = rs.getString("vehicle_description");
                               String price = rs.getString("vehicle_pricing");
                               String img = rs.getString("vehicle_image");
                               String town = rs.getString("town_location");
                        %>
                    
                        
                        <!-- Single Car Start -->
                        <div class="single-car-wrap" style="margin-bottom: 10px;">
                            <div class="row">
                                <!-- Single Car Thumbnail -->
                                <div class="col-lg-3">
                                    <div>
                                        <img src="assets/uploads/<% out.println(img); %>" style="height:150px; padding: 5px 5px">
                                    </div>
                                </div>
                                <!-- Single Car Thumbnail -->

                                <!-- Single Car Info -->
                                <div class="col-lg-8">
                                    <div class="display-table">
                                        <div class="display-table-cell" style="padding-top: 0px;">
                                            <div class="car-list-info">
                                                <h2><a href="#"><%=name %></a></h2>
                                                <h5 style="padding-bottom: 5px;margin-bottom: 5px;">Ksh.<%=price %> Rental /per day</h5>
                                                <p><% out.println(description); %></p>
                                                <a href="booking.jsp?1=<%=name %>&2=<%=town %>&3=<%=contact %>" class="rent-btn" style="padding: 2px 20px;">Book Now</a> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Car info -->
                            </div>
                        </div>
                        <!-- Single Car End -->
                        <%
                        }
                        }catch(Exception e){}
                        %>
                    </div>
                
                </div>
            </div>
            </section>
            <!-- Car List Content End -->
    
   <!--== Pricing Area Start ==-->
    <section id="pricing-area" class="section-padding overlay">
        <div class="container">
            <div class="row">
                <!-- Section Title Start -->
                <div class="col-lg-12">
                    <div class="section-title  text-center">
                        <h2>Our price Offers</h2>
                        <span class="title-line"><i class="fa fa-flag"></i></span>
                    </div>
                </div>
                <!-- Section Title End -->
            </div>

            <!-- Pricing Table Conatent Start -->
            <div class="row">
                <!-- Single Pricing Table -->
                <div class="col-lg-4 col-md-6 text-center">
                    <div class="single-pricing-table">
                        <h2>Burials Best</h2>
                        <h5>KSH. 3000/= PER DAY</h5>

                        <ul class="package-list">
                            <li>INSURANCE INCLUSIVE</li>
                            <li>FREE VEHICLE DELIVERY</li>
                            <li>FREE DRIVER ALLOCATION</li>
                        </ul>
                    </div>
                </div>
                <!-- Single Pricing Table -->

                <!-- Single Pricing Table -->
                <div class="col-lg-4 col-md-6 text-center">
                    <div class="single-pricing-table">
                        <h2>Weddings Best</h2>
                        <h5>KSH. 5000/= PER DAY</h5>

                        <ul class="package-list">
                            <li>DELIVERY ON REQUEST</li>
                            <li>DECORATION SERVICES</li>
                            <li>COMFORTABLE INTERIOR</li>
                        </ul>
                    </div>
                </div>
                <!-- Single Pricing Table -->

                <!-- Single Pricing Table -->
                <div class="col-lg-4 col-md-6 text-center">
                    <div class="single-pricing-table">
                        <h2>Other Deals</h2>
                        <h5>KSH. 4000/= PER DAY</h5>

                        <ul class="package-list">
                            <li>DRIVER DISCOUNTS</li>
                            <li>FREE START UP FUEL</li>
                            <li>BACKUP BATTERY SUPPLY</li>
                        </ul>
                    </div>
                </div>
                <!-- Single Pricing Table -->
                
            </div>
            <!-- Pricing Table Conatent End -->
        </div>
    </section>
    <!--== Pricing Area End ==-->


    <!--== Footer Area Start ==-->
    <section id="footer-area">
        <!-- Footer Bottom Start -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <p>
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Bottom End -->
    </section>
    <!--== Footer Area End ==-->

    <!--=======================Javascript============================-->
    <!--=== Jquery Min Js ===-->
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <!--=== Jquery Migrate Min Js ===-->
    <script src="assets/js/jquery-migrate.min.js"></script>
    <!--=== Popper Min Js ===-->
    <script src="assets/js/popper.min.js"></script>
    <!--=== Bootstrap Min Js ===-->
    <script src="assets/js/bootstrap.min.js"></script>
    <!--=== Gijgo Min Js ===-->
    <script src="assets/js/plugins/gijgo.js"></script>
    <!--=== Vegas Min Js ===-->
    <script src="assets/js/plugins/vegas.min.js"></script>
    <!--=== Isotope Min Js ===-->
    <script src="assets/js/plugins/isotope.min.js"></script>
    <!--=== Owl Caousel Min Js ===-->
    <script src="assets/js/plugins/owl.carousel.min.js"></script>
    <!--=== Waypoint Min Js ===-->
    <script src="assets/js/plugins/waypoints.min.js"></script>
    <!--=== CounTotop Min Js ===-->
    <script src="assets/js/plugins/counterup.min.js"></script>
    <!--=== YtPlayer Min Js ===-->
    <script src="assets/js/plugins/mb.YTPlayer.js"></script>
    <!--=== Magnific Popup Min Js ===-->
    <script src="assets/js/plugins/magnific-popup.min.js"></script>
    <!--=== Slicknav Min Js ===-->
    <script src="assets/js/plugins/slicknav.min.js"></script>

    <!--=== Mian Js ===-->
    <script src="assets/js/main.js"></script>
    <script>
            function localLocation(){
            x = document.getElementById("townSelect").value;
            }
            function check(){
               <%
                if (Login_Validate.user_type.equals("admin")){
                    String redirectedPage = "/parentPage";
                    response.sendRedirect("admin_index.jsp");
                }
                   %>
           }
    </script>

</body>

</html>
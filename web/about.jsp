<%@page import="hire_package.Login_Validate"%>
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

    <!--== Header Area Start ==-->
    <header id="header-area" class="fixed-top">
        <!--== Header Top Start ==-->
        <div id="header-top" class="d-none d-xl-block">
            <div class="container">
                <div class="row">
                    <!--== Single HeaderTop Start ==-->
                    <div class="col-lg-3 text-left">
                        <i class="fa fa-map-marker"></i> Eldoret, Kenya (Eld-Iten Rd.)
                    </div>
                    <!--== Single HeaderTop End ==-->

                    <!--== Single HeaderTop Start ==-->
                    <div class="col-lg-3 text-center">
                        <i class="fa fa-mobile"></i> +254 712 345 678
                    </div>
                    <!--== Single HeaderTop End ==-->

                    <!--== Single HeaderTop Start ==-->
                    <div class="col-lg-3 text-center">
                        <i class="fa fa-clock-o"></i> Mon-Fri	08:00 - 17:00 Hrs
                    </div>
                    <!--== Single HeaderTop End ==-->

                    <!--== Social Icons Start ==-->
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
                                <li><a href="index.jsp">Home</a></li>
                                <li class="active"><a href="about.jsp">About</a></li>
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

    <!--== Page Title Area Start ==-->
    <section id="about-page-title-area" style="height:125px;padding-top: 0px;" class="section-padding overlay">
        
    </section>
    <!--== Page Title Area End ==-->

    <!--== About Page Content Start ==-->
    <section id="about-area" class="section-padding" style="padding-top: 15px; padding-bottom: 5px">
        <div class="container">
<!--== Services Area Start ==-->
    <section id="service-area" class="section-padding">
        <div class="container">
            <div class="row">
                <!-- Single Service Start -->
                <div class="col-lg-4 col-md-6">
                    <div class="single-service">
                        <div class="media">
                            <div class="service-icon">
                                <span></span>
                                <img src="assets/img/services/service-icon-1.png" alt="JSOFT">
                            </div>
                            <div class="media-body">
                                <h4>RENTAL CAR</h4>
                                <p>Find the best rental prices on hiking, weddings, and hearse rental cars with discounts and coupons on frequent basis, reserve online today!</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Service Start -->

                <!-- Single Service Start -->
                <div class="col-lg-4 col-md-6">
                    <div class="single-service">
                        <div class="media">
                            <div class="service-icon">
                                <span></span>
                                <img src="assets/img/services/service-icon-2.png" alt="JSOFT">
                            </div>
                            <div class="media-body">
                                <h4>CAR REPAIR</h4>
                                <p>We offer paintwork repairs to scratches, scuffs and dents, as well as repairs to the bodies of vehicles damaged by collisions.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Service Start -->

                <!-- Single Service Start -->
                <div class="col-lg-4 col-md-6">
                    <div class="single-service">
                        <div class="media">
                            <div class="service-icon">
                                <span></span>
                                <img src="assets/img/services/service-icon-3.png" alt="JSOFT">
                            </div>
                            <div class="media-body">
                                <h4>TAXI SERVICE</h4>
                                <p>We offer you unparalleled professional transport solutions designed to serve your diverse needs every step of the way. We value you, for we are you. </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Service Start -->

                <!-- Single Service Start -->
                <div class="col-lg-4 col-md-6">
                    <div class="single-service">
                        <div class="media">
                            <div class="service-icon">
                                <span></span>
                                <img src="assets/img/services/service-icon-4.png" alt="JSOFT">
                            </div>
                            <div class="media-body">
                                <h4>Car insurance</h4>
                                <p>We provide high end insurance that protects you, your car and third parties against all possible risks. For your sefty, we cover a wide range of possibilities.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Service Start -->

                <!-- Single Service Start -->
                <div class="col-lg-4 col-md-6">
                    <div class="single-service">
                        <div class="media">
                            <div class="service-icon">
                                <span></span>
                                <img src="assets/img/services/service-icon-5.png" alt="JSOFT">
                            </div>
                            <div class="media-body">
                                <h4>car wash</h4>
                                <p>Thinking about scraping those bugs off your windshield? Wish someone else would do it? Take a ride to us and experience the feel through our automatic car wash.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Service Start -->

                <!-- Single Service Start -->
                <div class="col-lg-4 col-md-6">
                    <div class="single-service">
                        <div class="media">
                            <div class="service-icon">
                                <span></span>
                                <img src="assets/img/services/service-icon-6.png" alt="JSOFT">
                            </div>
                            <div class="media-body">
                                <h4>call driver</h4>
                                <p>We offer driver services allowing you to arrive in style and comfort wherever you wish to go. Why use public transport when you could ride in style?</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Service Start -->
            </div>
        </div>
    </section>
    <!--== Services Area End ==-->
        </div>
    </section>
    <!--== About Page Content End ==-->
    
    <!--== Our Facility Content Start ==-->
    <section id="our-facility" class="section-padding overlay">
        <div class="container">
            <div class="row">
                <!-- Single Facility Start -->
                <div class="col-lg-3 col-md-6">
                    <div class="single-our-facility">
                        <h3>RENTALS</h3>
                        <ul>
                            <li>Regular Discounts</li>
                            <li>Affordable Pricing</li>
                            <li>Reliability on Pickup's</li>
                        </ul>
                    </div>
                </div>
                <!-- Single Facility Start -->
                
                <!-- Single Facility Start -->
                <div class="col-lg-3 col-md-6">
                    <div class="single-our-facility">
                        <h3>GUIDES</h3>
                        <ul>
                            <li>Experienced Guides</li>
                            <li>Interactive and Fun Drivers</li>
                            <li>Offers on Multiple Bookings</li>
                        </ul>
                    </div>
                </div>
                <!-- Single Facility Start -->

                <!-- Single Facility Start -->
                <div class="col-lg-3 col-md-6">
                    <div class="single-our-facility">
                        <h3>INSURANCE</h3>
                        <ul>
                            <li>Bundled Insurance</li>
                            <li>Cover on All Automobiles</li>
                            <li>Flexible and Instant Assist</li>
                        </ul>
                    </div>
                </div>
                <!-- Single Facility Start -->

                <!-- Single Facility Start -->
                <div class="col-lg-3 col-md-6">
                    <div class="single-our-facility">
                        <h3>REPAIRS</h3>
                        <ul>
                            <li>Quality Repairs</li>
                            <li>Moderate Price Range</li>
                            <li>Best Spares Parts Dealers</li>
                        </ul>
                    </div>
                </div>
                <!-- Single Facility Start -->  
            </div>
        </div>
    </section>
    <!--== Our Facility Content End ==-->

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
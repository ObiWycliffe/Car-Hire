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

<body class="loader-active" onload="mapswap()" onload="check()">

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
                                <li><a href="about.jsp">About</a></li>
                                <li><a href="cars.jsp">Cars</a></li>
                                <li class="active"><a href="contact.jsp">Contact</a></li>
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
    <section id="contact-page-title-area" style="height:125px;padding-top: 0px;" class="section-padding overlay">
        
    </section>
    <!--== Page Title Area End ==-->

    <section id="footer-area">
    <!-- Footer Widget Start -->
    <div class="footer-widget-area" style="background-color: #062c33;">
            <div class="container">
                <div class="row">
                    <!-- Single Footer Widget Start -->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-footer-widget">
                            <h2>About Us</h2>
                            <div class="widget-body">
                                <img src="assets/img/logo.png" alt="JSOFT">
                                <p>Whether you have a question about our offers, pricings or anything else, we look forward to hearing from you.</br></p></br>
                                <p>Our aspiration to offer you the best car service is unmatched. We value you, because we are you.</br></p>
                                
                                <div class="newsletter-area" style="margin-top: 0px;">
                                <a href="about.jsp" class="map-show">Read More</a>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- Single Footer Widget End -->

                    <!-- Single Footer Widget Start -->
                    <div class="col-lg-4 col-md-6" style="padding-left: 0px;padding-right: 30px;">
                        <div class="single-footer-widget">
                            <h2>Our Centers</h2>
                            <div class="widget-body">
                                <ul class="recent-post">
                                    <li>
                                        <div style="cursor: pointer;" onclick="mapswap(1)">
                                        <a>
                                           Eldoret: Main; Along Eldoret-Iten Rd.
                                           <i class="fa fa-map-marker"></i>
                                       </a>
                                       </div>
                                    </li>
                                    <li>
                                        <div style="cursor: pointer;" onclick="mapswap(2)">
                                        <a>
                                          Kisumu: Branch; Kisumu Int. Airport
                                           <i class="fa fa-map-marker"></i>
                                       </a>
                                       </div>
                                    </li>
                                    <li>
                                        <div style="cursor: pointer;" onclick="mapswap(3)">
                                        <a>
                                           Nakuru: Branch; Nkr. Athletics Club
                                           <i class="fa fa-map-marker"></i>
                                       </a>
                                       </div>
                                    </li>
                                    <li>
                                        <div style="cursor: pointer;" onclick="mapswap(4)">
                                        <a>
                                            Nairobi: Branch; Along Upper-Hill Rd.
                                           <i class="fa fa-map-marker"></i>
                                       </a>
                                       </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Single Footer Widget End -->

                    <!-- Single Footer Widget Start -->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-footer-widget">
                            <h2>get in touch</h2>
                            <div class="widget-body">
                                <p>For further inquiries, visit our main office branch or contact us via the email. We value your interest. </p>

                                <ul class="get-touch">
                                    <li><i class="fa fa-map-marker"></i> Eldoret, Kenya (Eld-Iten Rd.)</li>
                                    <li><i class="fa fa-mobile"></i> +254 712 345 678</li>
                                    <li style="height: 30px;"><i class="fa fa-envelope"></i> eldoret.carhire@gmail.com</li>
                                    <li>_____________________________________</li>
                                    <li><i class="fa fa-clock-o"></i> Mon-Fri	08:00 - 17:00 Hrs</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Single Footer Widget End -->
                </div>
            </div>
        </div>
        <!-- Footer Widget End -->
        </section>

    <!--== Map Area Start ==-->
    <div class="maparea" id="eld" style="height: 475px">
        <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.6320183225816!2d35.31032101430507!3d0.553696199596046!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x17810407c1cd793d%3A0xe86cff5cb7423386!2sChepkoilel+Junction!5e0!3m2!1sen!2ske!4v1559736870629!5m2!1sen!2ske" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen></iframe>
    </div>
    <div class="maparea" id="ksm" style="height: 0px;">
        <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.8144151417746!2d34.72599811465006!3d-0.0801646355218782!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182aa5b4ea46c563%3A0x16acdf64a4926262!2sKisumu+International+Airport+Access+Road%2C+Kisumu!5e0!3m2!1sen!2ske!4v1565175629092!5m2!1sen!2ske" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen></iframe>
    </div>
    <div class="maparea" id="nkr" style="height: 0px;">
        <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.766825347871!2d36.063367614650744!3d-0.2911012354319571!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x18298dc186ede701%3A0x42d8dd651d754c1a!2sNakuru+Athletics+Club!5e0!3m2!1sen!2ske!4v1565189725169!5m2!1sen!2ske" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen></iframe>
    </div>
    <div class="maparea" id="nrb" style="height: 0px;">
        <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7949397536013!2d36.81592141465495!3d-1.2977437360045632!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f10e6932c8af3%3A0x52acfa7243560988!2sUpper+Hill+Rd%2C+Nairobi!5e0!3m2!1sen!2ske!4v1565190089746!5m2!1sen!2ske" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen></iframe>
    </div>
    <!--== Map Area End ==-->

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
        function mapswap(y){
            if (y === 1){
                document.getElementById("eld").style.height = "475px";
                document.getElementById("ksm").style.height = "0px";
                document.getElementById("nkr").style.height = "0px";
                document.getElementById("nrb").style.height = "0px";
            } else if (y === 2){
                document.getElementById("eld").style.height = "0px";
                document.getElementById("ksm").style.height = "475px";
                document.getElementById("nkr").style.height = "0px";
                document.getElementById("nrb").style.height = "0px";
            }
            else if (y === 3){
                document.getElementById("eld").style.height = "0px";
                document.getElementById("ksm").style.height = "0px";
                document.getElementById("nkr").style.height = "475px";
                document.getElementById("nrb").style.height = "0px";
            }
            else if (y === 4){
                document.getElementById("eld").style.height = "0px";
                document.getElementById("ksm").style.height = "0px";
                document.getElementById("nkr").style.height = "0px";
                document.getElementById("nrb").style.height = "475px";
            }
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
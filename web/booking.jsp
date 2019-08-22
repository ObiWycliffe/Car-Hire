<%@page import="hire_package.Login_Validate"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="hire_package.DatabaseConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <% 
        String v = request.getParameter("1");
        String t = request.getParameter("2");
        String m = request.getParameter("3");
    %>

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
                                <li><a href="cars.jsp">Cars</a></li>
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
     <section id="login-signup-page-title-area" style="height:125px;" class="vegas-container">
        
    </section>
    <!--== Page Title Area End ==-->

     
    <section id="about-area" class="section-padding" style="padding-top: 0px; padding-bottom: 0px;">
        <div class="container">
    <!-- About Fretutes Start -->
            <div class="about-feature-area">
                <div class="row">
                    <!-- Single Fretutes Start -->
                    <div class="col-lg-4">
                        <div class="about-feature-item" style="padding-top: 30px; padding-bottom: 30px;">
                            <i class="fa fa-thumbs-o-up"></i>
                            <h3>BEST VOTED</h3>
                            <p>We guarantee a variety of well maintained vehicle models to suite your needs.</p>
                        </div>
                    </div>
                    <!-- Single Fretutes End -->

                    <!-- Single Fretutes Start -->
                    <div class="col-lg-4">
                        <div class="about-feature-item" style="padding-top: 30px; padding-bottom: 30px;">
                            <i class="fa fa-map-marker"></i>
                            <h3>LOCATION</h3>
                            <p>We are well connected and distributed, we look forward to hearing from you.</p>
                        </div>
                    </div>
                    <!-- Single Fretutes End -->

                    <!-- Single Fretutes Start -->
                    <div class="col-lg-4">
                        <div class="about-feature-item" style="padding-top: 30px; padding-bottom: 30px;">
                            <i class="fa fa-lightbulb-o"></i>
                            <h3>CUSTOMER VALUE</h3>
                            <p>Our aspiration to offer you the best car service is unmatched. We value you.</p>
                        </div>
                    </div>
                    <!-- Single Fretutes End -->
                </div>
            </div>
            <!-- About Fretutes End -->

            </div>
    </section>
    
    
    <!--== Contact Page Area Start ==-->
    <div class="contact-page-wrao section-padding" style="padding-top: 11px; padding-bottom: 10px;">
        <div class="container">
            <div class="row">
                 <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <form class="form-sample" onsubmit="bookVehicle()" method="post">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">First Name</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" name="fName" value="<%=Login_Validate.fname %>"/>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Last Name</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" name="lName" value="<%=Login_Validate.lname %>"/>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Mobile</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" name="mob" value="<%=m %>"/>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Town</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" name="twn" disabled value="<%=t %>"/>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Return Date</label>
                            <div class="col-sm-9">
                                <input type="date" class="form-control" placeholder="dd/mm/yyyy" name="rDate" id="bkdt"  required>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Vehicle</label>
                            <div class="col-sm-9" id="vNm">
                              <input type="text" class="form-control" name="vName" disabled value="<%=v %>"/>
                            </div>
                          </div>
                        </div>
                          <div class="row">
                          <div class="book-ur-car" style="padding-bottom: 0px;padding-top: 0px;padding-left: 0px;padding-right: 0px;
                                                          margin-top: 0px;margin-right: 0px;margin-left: 168px;width: 215px;height: 38px;">
                                <div class="bookcar-btn bookinput-item" style="width: 215px;">
                                    <button type="submit">Submit Booking</button>
                                </div>
                          </div>
                          <div class="book-ur-car" style="padding-bottom: 0px;padding-top: 0px;padding-left: 0px;padding-right: 0px;
                                                          margin-top: 0px;margin-right: 0px;margin-left: 15px;width: 150px;height: 38px;">
                                <div class="bookcar-btn bookinput-item" style="width: 150px;">
                                    <button type="button" onclick="location.href='client_bookings.jsp';">View</button>
                                </div>
                          </div>
                          </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
        </div>
    </div>
    <!--== Contact Page Area End ==-->
    
    <!--== Footer Area Start ==-->
    <section id="footer-area" class="fixed-bottom">
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
     
    <script>
function bookVehicle(){
    <%
       try{
          String fname = request.getParameter("fName");
          String lname = request.getParameter("lName");
          String mobile = request.getParameter("mob");
          String town = t;
          String rdate = request.getParameter("rDate");
          String vname = v;
          
          if (rdate != null){
              
        DateFormat dateft = new SimpleDateFormat("yyyy-MM-dd");
        Date dt = new Date();
        String x = dateft.format(dt);
        
              
         DatabaseConnect db = new DatabaseConnect();
         Connection con = db.getCon();
         Statement stmt = con.createStatement();
         //out.println("12");
         stmt.executeUpdate("insert into bookings_table(first_name,last_name,vehicle,date_booked,return_date,town,contact,user_id)values('"+fname+"','"+lname+"','"+vname+"','"+x+"','"+rdate+"','"+town+"','"+mobile+"','"+Login_Validate.userId+"')");
         stmt.executeUpdate("update vehicle_table set status = 'Booked' where vehicleNo_plate = '"+vname+"';");
         out.println("alert(\"added user\");");
         String redirectPage = "/parentPage";
         response.sendRedirect("client_bookings.jsp?b=ok");
          }
         
       }catch(Exception e){
       out.println(e);
       }
        %>
}
function check(){
    document.getElementById("bkdt").min = new Date(new Date().getTime() - new Date().getTimezoneOffset() * 60000).toISOString().split("T")[0];
               <% 
                if (!Login_Validate.login){
                    String redirectedPage = "/parentPage";
                    response.sendRedirect("login.jsp");
                } 
                else if (Login_Validate.user_type.equals("admin")){
                    String redirectedPage = "/parentPage";
                    response.sendRedirect("admin_index.jsp");
                }
                   %>
           } 
</script>
    
    
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

</body>

</html>

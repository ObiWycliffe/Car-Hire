<%@page import="hire_package.Login_Validate"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="hire_package.DatabaseConnect"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

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


    <!--[if lt IE 9]>
        <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="loader-active" onload="check()">
    <% int x = 0;
        int y = 0; int k = 0;
        int z = 0;
        int id = 1;
        
        if(request.getParameter("id") != null){ 
            int j = Integer.parseInt(request.getParameter("id"));
            id = j; 
    }%>

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
                                <li class="active"><a href="cars.jsp">Cars</a></li>
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
    <section id="cars-page-title-area" style="height:125px;padding-top: 0px;" class="section-padding overlay">
        
    </section>
    <!--== Page Title Area End ==-->

    <!--== Car List Area Start ==-->
    <section id="car-list-area" class="section-padding" style="padding-top: 30px;padding-bottom: 0px;">
        <div class="container">
            <div class="row">
                <!-- Car List Content Start -->
                <div class="col-lg-12">
                    <div class="car-list-content">
                        <div class="row">
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

                               
                            ResultSet rs = stmt.executeQuery("select * from vehicle_table where status = 'Available';"); 
                            
                              while( rs.next()){
                                  if (y >= (id*3)-3 && y <= (id*3)  ){
                                  if (k == 3 ){break;}
                               String name = rs.getString("vehicleNo_plate");
                               String description = rs.getString("vehicle_description");
                               String price = rs.getString("vehicle_pricing");
                               String town = rs.getString("town_location");
                               String img = rs.getString("vehicle_image");
                        %>
                            
                            <!-- Single Car Start -->
                            <div class="col-lg-4 col-md-4" style="padding-bottom: 30px;">
                                <div class="single-car-wrap">
                                    <div class="car-list-thumb" style="height: 210px;background-image: url(assets/uploads/<% out.println(img); %>);"></div>
                                    <div class="car-list-info without-bar" style="padding: 20px 10px">
                                        <h2><a href="#"><%=name %></a></h2>
                                        <h5>Ksh.<%=price %> Rental /per day</h5>
                                        <p style="height:100px;"><% out.println(description); %></p>
                                        
                                        <a href="booking.jsp?1=<%=name %>&2=<%=town %>&3=<%=contact %>" class="rent-btn" style="padding: 2px 20px;">Book Now</a>
                                    </div>
                                </div>
                                        
                                        
                                        
                                  
                                        
                            </div>
                            <!-- Single Car End -->
                            
                         <%
                             k++;
                            } 
                            y++;
                        }
                            rs.last();
                            x = rs.getRow();
                            z = (x/3);
                            if (x%3 != 0){z++; }
                        }catch(Exception e){}
                        %>
                        </div>
                    </div>
                        
                        
                        <!-- Page Pagination Start -->
                    <div class="page-pagi" style="margin-top: 0px;margin-bottom: 30px;">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <% if (id != 1) { %>
                                <li class="page-item"><a class="page-link" href="cars.jsp?id=<%=id-1  %>">Previous</a></li>
                                <% } %>
                                <% for(int i = 0; i < z ; i++){  %>
                                <li class="page-item <% if(i+1 == id){ out.println("active");} %>"><a class="page-link" href="cars.jsp?id=<%=i+1  %>"><%=i+1  %></a></li>
                                
                                <% }  %>
                                <% if (id != z) { %>
                                <li class="page-item"><a class="page-link" href="cars.jsp?id=<%=id+1  %>">Next</a></li>
                                <% }  %>
                            </ul>
                        </nav>
                    </div>
                    <!-- Page Pagination End -->
                </div>
                <!-- Car List Content End -->
            </div>
        </div>
    </section>
    <!--== Car List Area End ==-->

    <section style="margin-bottom: 20px;"> 
            <div class="row">
            <div class="col-lg-1"> </div>
            <div class="col-lg-10 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                      <h4 class="card-title">All Vehicles</h4>
                    <table class="table table-bordered">
                        <thead>
                        <tr class="table-warning">
                          <th> # </th>
                          <th> Name </th>
                          <th> Town </th>
                          <th> Location </th>
                          <th width="25%"> Description </th>
                          <th> Price </th>
                          <th> Select </th>
                        </tr>
                      </thead>
                        <%
                            try{
                                 DatabaseConnect db = new DatabaseConnect();
                               Connection con =db.getCon();
                               Statement stmt = con.createStatement();
                               String f = Login_Validate.filter;
                               int q = 0;

                               
                            ResultSet rs = stmt.executeQuery("select * from vehicle_table where status = 'Available';"); 
                              while( rs.next()){
                                  q++;
                               String Id = Integer.toString(q);
                               String vId = rs.getString("vehicle_id");
                               String vname = rs.getString("vehicleNo_plate");
                               String tloc = rs.getString("town_location");
                               String lloc = rs.getString("local_location");
                               String description = rs.getString("vehicle_description");
                               String price = rs.getString("vehicle_pricing");
                        %>
                    
                      <tbody>
                          
                        <tr>
                          <td><%out.println(Id);%></td>
                          <td><%out.println(vname);%></td>
                          <td><%out.println(tloc);%></td>
                          <td><%out.println(lloc);%></td>
                          <td width="40%"><%out.println(description);%></td>
                          <td><b>Ksh.<%out.println(price);%></b> Rental /Per Day</td>
                           <td>
                               <div class="book-ur-car" style="padding-bottom: 0px;padding-top: 0px;padding-left: 0px;padding-right: 0px;
                                                          margin-top: 0px;margin-right: 0px;width: 100px;height: 28px;">
                                <div class="bookcar-btn bookinput-item" style="width: 100px;">
                                    <button type="submit" style="padding-bottom: 3px; padding-top: 3px;" onclick="location.href='booking.jsp?b=+<%=vId %>&1=<%=vname %>&2=<%=tloc %>&3=<%=contact %>';">Book</button>
                                </div>
                              </div>
                           </td>
                        </tr>
                        
                      </tbody>
                      <%
                          
                      }
                      }catch(Exception e){}
                      %>
                      
                    </table>
                  </div>
                </div>
              </div>
        </div>
    </section>
    
    
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
             var slideIndex = 1;
            showSlides(slideIndex);

            // Next/previous controls
            function plusSlides(n) {
              showSlides(slideIndex += n);
            }

            // Thumbnail image controls
            function currentSlide(n) {
              showSlides(slideIndex = n);
            }

            function showSlides(n) {
              var i;
              var slides = document.getElementsByClassName("mySlides");
              var dots = document.getElementsByClassName("dot");
              if (n > slides.length) {slideIndex = 1} 
              if (n < 1) {slideIndex = slides.length}
              for (i = 0; i < slides.length; i++) {
                  slides[i].style.display = "none"; 
              }
              for (i = 0; i < dots.length; i++) {
                  dots[i].className = dots[i].className.replace(" active", "");
              }
              slides[slideIndex-1].style.display = "block"; 
              dots[slideIndex-1].className += " active";
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
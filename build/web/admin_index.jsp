<%@page import="hire_package.DatabaseConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="hire_package.Login_Validate"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Car Hire </title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/iconfonts/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/iconfonts/ionicons/css/ionicons.css">
    <link rel="stylesheet" href="assets/iconfonts/typicons/src/font/typicons.css">
    <link rel="stylesheet" href="assets/iconfonts/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="assets/css/vendor.bundle.addons.css">
    <!-- endinject -->
    
    <!-- inject:css -->
    <link rel="stylesheet" href="assets/css/shared/style.css">
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="assets/css/demo_1/style.css">
    <!-- End Layout styles -->
    <link rel="shortcut icon" href="assets/images/favicon.png" />
  </head>
  <body  onload="check()">
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
      <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
          <a class="navbar-brand brand-logo" href="admin_index.jsp" style="height: 34px;padding-top: 20px;width: 100px;">
            <img src="assets/img/logo.png" alt="logo" /> </a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center">
          <ul class="navbar-nav">
            <li class="nav-item font-weight-semibold d-none d-lg-block"><u>Our Mission</u>: <i>Customer Service at Best</i></li> 
          </ul>
            
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-category" style="width: 200px;margin-left: 35px;padding-left: 55px;">Admin Panel </li>
            <li class="nav-item">
              <a class="nav-link" href="admin_index.jsp">
                <i class="menu-icon typcn typcn-document-text"></i>
                <span class="menu-title">Dashboard</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="add_vehicle.jsp">
                <i class="menu-icon typcn typcn-shopping-bag"></i>
                <span class="menu-title">Add Vehicle</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                <i class="menu-icon typcn typcn-document-add"></i>
                <span class="menu-title">System Details</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="auth">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item">
                    <a class="nav-link" href="all_cars.jsp"> All Vehicles </a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="booked_cars.jsp"> Booked Vehicles </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="view_all.jsp"> View Clients </a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="logout">
                    <i class="menu-icon typcn typcn-document-add"></i>
			<span class="menu-title">Log Out </span>
		</a>        
            </li>
          </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
              
            <div class="row">
              <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                        <div class="row">
                          <div class="col-md-6">
                              
                               <%
                                   int tot = 0;
                            try{
                               DatabaseConnect db = new DatabaseConnect();
                               Connection con =db.getCon();
                               Statement stmt = con.createStatement();
                               Statement stmt1 = con.createStatement();
                               
                               ResultSet rs1 = stmt1.executeQuery("select count(*) from vehicle_table;"); 
                               if(rs1.next()){
                                String amnt1 = rs1.getString("count(*)");
                                tot = Integer.parseInt(amnt1);
                               }
                               
                               ResultSet rs = stmt.executeQuery("select count(*) from vehicle_table where status = 'booked';"); 
                               
                             
                               if( rs.next()){ // && 
                               String amnt = rs.getString("count(*)");
                               //String amnt1 = rs1.getString("count(*)");
                               int val = Integer.parseInt(amnt);
                               //int val1 = Integer.parseInt(amnt1);
                               int m = (val*100)/tot;
                            %>
                            
                              
                            <div class="d-flex align-items-center pb-2">
                              <div class="dot-indicator bg-danger mr-2"></div>
                              <p class="mb-0">Vehicles Out</p>
                            </div>
                            <h4 class="font-weight-semibold"><%out.println(amnt);%></h4>
                            <div class="progress progress-md">
                              <div class="progress-bar bg-danger" role="progressbar" style="width: <%=m %>%" aria-valuenow="78" aria-valuemin="0" aria-valuemax="78"></div>
                            </div>
                            
                          <%
                           }
                          }catch(Exception e){}
                          %>
                            
                          </div>
                          <div class="col-md-6 mt-4 mt-md-0">
                              
                                <%
                            try{
                               DatabaseConnect db = new DatabaseConnect();
                               Connection con =db.getCon();
                               Statement stmt = con.createStatement();


                               ResultSet rs = stmt.executeQuery("select count(*) from vehicle_table where status = 'available';"); 
                             while( rs.next()){
                               String amnt = rs.getString("count(*)");
                               int val = Integer.parseInt(amnt);
                               int m = (val*100)/tot;
                            %>
                            
                              
                              
                            <div class="d-flex align-items-center pb-2">
                              <div class="dot-indicator bg-success mr-2"></div>
                              <p class="mb-0">Vehicles In</p>
                            </div>
                            <h4 class="font-weight-semibold"><%out.println(amnt);%></h4>
                            <div class="progress progress-md">
                              <div class="progress-bar bg-success" role="progressbar" style="width: <%=m %>%" aria-valuenow="45" aria-valuemin="0" aria-valuemax="45"></div>
                            </div>
                            
                               
                          <%
                           }
                          }catch(Exception e){}
                          %>
                            
                          </div>
                        </div>
                      </div>
                </div>
              </div>
              <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body" style="background-color: background">
                        <div class="d-flex justify-content-between pb-2 align-items-center">
                            
                            <%
                            try{
                               DatabaseConnect db = new DatabaseConnect();
                               Connection con =db.getCon();
                               Statement stmt = con.createStatement();


                               ResultSet rs = stmt.executeQuery("select count(*) from user_info_table;"); 
                             while( rs.next()){
                               String amnt = rs.getString("count(*)");
                               //int val = Integer.parseInt(amnt);
                               
                            %>
                            
                           <a class="nav-link" href="view_all.jsp">
                          <h2 class="font-weight-semibold mb-0"><%out.println(amnt);%></h2>
                           </a>
                          <div class="icon-holder">
                            <i class="mdi mdi-briefcase-outline"></i>
                          </div>

                          <%
                           }
                          }catch(Exception e){}
                          %>
                          
                        </div>
                        <div class="d-flex justify-content-between">
                            <h5 class="font-weight-semibold mb-0">Signed Up Users</h5>
                          <p class="text-white mb-0">Total in system</p>
                        </div>
                      </div>
                </div>
              </div>
              <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body"   style="color: blue">
                        <div class="d-flex justify-content-between pb-2 align-items-center">
                            
                            <%
                            try{
                               DatabaseConnect db = new DatabaseConnect();
                               Connection con =db.getCon();
                               Statement stmt = con.createStatement();


                               ResultSet rs = stmt.executeQuery("select count(*) from vehicle_table;"); 
                             while( rs.next()){
                               String amnt = rs.getString("count(*)");
                               //int val = Integer.parseInt(amnt);
                            %>
                           
                          <a class="nav-link" href="all_cars.jsp"> 
                          <h2 class="font-weight-semibold mb-0"><%out.println(amnt);%></h2>
                          </a>
                          <div class="icon-holder">
                            <i class="mdi mdi-briefcase-outline"></i>
                          </div>
                          
                          <%
                           }
                          }catch(Exception e){}
                          %>
                          
                        </div>
                        <div class="d-flex justify-content-between">
                          <h5 class="font-weight-semibold mb-0">Total Vehicles</h5>
                          <p style="color: blue">Since last month</p>
                        </div>
                      </div>
                </div>
              </div>
            </div>
              
              
              <div class="col-lg-12 stretch-card">
                <div class="card">
                  <div class="card-body" style="padding-bottom: 5px; padding-top: 15px;">
                    <h4 class="card-title"><b><u>Booked Vehicles</u></b></h4>
                    <table class="table table-bordered">
                      <thead>
                        <tr class="table-primary">
                          <th> # </th>
                          <th> Name </th>
                          <th> Vehicle </th>
                          <th> Date Booked </th>
                          <th> Return Date </th>
                          <th> Contact </th>
                          <th> Town </th>
                        </tr>
                      </thead>
                      
                      <%
                            try{
                                 DatabaseConnect db = new DatabaseConnect();
                               Connection con =db.getCon();
                               Statement stmt = con.createStatement();
                               String f = Login_Validate.filter;
                               int x = 0;
                               int y = 0;

                               
                            ResultSet rs = stmt.executeQuery("select * from bookings_table order by date_booked desc;"); 
                              while( rs.next()){
                                  y++;
                               String indx = Integer.toString(y);
                               String fname = rs.getString("first_name");
                               String lname = rs.getString("last_name");
                               String vehicle = rs.getString("vehicle");
                               String bookDte = rs.getString("date_booked");
                               String returnDte = rs.getString("return_date");
                               String contact = rs.getString("contact");
                               String twn = rs.getString("town");
                               x++;
                               if (x > 5){
                                   break;
                               }
                        %>
                    
                      
                      <tbody>
                        <tr <% if (x%2 == 0){ out.println("class=\"table-info\""); } %>>
                          <td><%out.println(indx);%></td>
                          <td><%out.println(fname);%> <%out.println(lname);%></td>
                          <td><%out.println(vehicle);%></td>
                          <td><%out.println(bookDte);%></td>
                          <td><%out.println(returnDte);%></td>
                          <td><%out.println(contact);%></td>
                          <td><%out.println(twn);%></td>
                        </tr>
                      </tbody>
                      
                      <%
                      }
                      }catch(Exception e){}
                      %>
                      
                    </table>
                    
                    <div align="right" style="margin-top: 5px; margin-left: 825px;">
                    <span class="input-group-append">
                        <button class="file-upload-browse btn btn-info" type="button" onclick="location.href='booked_cars.jsp';">View All</button>
                    </span>
                    </div>
                  </div>
                </div>
              </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <footer class="footer">
            <div class="container-fluid clearfix">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2019 
			   All rights reserved.</span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
                      
    <script src="assets/js/vendor.bundle.base.js"></script>
    <script src="assets/js/vendor.bundle.addons.js"></script>
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="assets/js/dashboard.js"></script>
    <!-- End custom js for this page-->
    <script>
         function check(){
               <% 
                if (!Login_Validate.login){
                    String redirectedPage = "/parentPage";
                    response.sendRedirect("login.jsp");
                } 
                else if (Login_Validate.user_type.equals("user")){
                    String redirectedPage = "/parentPage";
                    response.sendRedirect("index.jsp");
                }
                   %>
           } 
    </script>
  </body>
</html>
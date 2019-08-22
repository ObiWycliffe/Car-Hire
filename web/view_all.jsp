<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="hire_package.Login_Validate"%>
<%@page import="java.sql.Connection"%>
<%@page import="hire_package.DatabaseConnect"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Obi [Auto] Motors </title>
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
  <body onload="check()">
    <div class="container-scroller">
      <!-- partial:../../partials/_navbar.html -->
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
        <!-- partial:../../partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-category" style="width: 200px;margin-left: 35px;padding-left: 55px;"> Admin Panel </li>
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
            </li><li class="nav-item">
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
               <div class="col-lg-12 stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title"><b><u>All Registered Clients</u></b></h4>
                    <table class="table table-bordered">
                      <thead>
                        <tr class="table-primary">
                          <th> # </th>
                          <th> First name </th>
                          <th> Last Name </th>
                          <th> Email </th>
                          <th> User </th>
                          <th> Mobile </th>
                          <th> Address </th>
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

                               
                            ResultSet rs = stmt.executeQuery("select * from user_info_table order by town asc;"); 
                              while( rs.next()){
                                  y++;
                               String uId = Integer.toString(y);
                               String fname = rs.getString("first_name");
                               String lname = rs.getString("last_name");
                               String mail = rs.getString("email");
                               String uname = rs.getString("username");
                               String mob = rs.getString("mobile");
                               String add = rs.getString("address");
                               String twn = rs.getString("town");
                               x++;
                        %>
                    
                      
                      <tbody>
                        <tr <% if (x%2 == 0){ out.println("class=\"table-info\""); } %>>
                          <td><%out.println(uId);%></td>
                          <td><%out.println(fname);%></td>
                          <td><%out.println(lname);%></td>
                          <td><%out.println(mail);%></td>
                          <td><%out.println(uname);%></td>
                          <td><%out.println(mob);%></td>
                          <td><%out.println(add);%></td>
                          <td><%out.println(twn);%></td>
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
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
          <footer class="footer">
            <div class="container-fluid clearfix">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright � 2019 
			   All rights reserved.</span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="assets/js/vendor.bundle.base.js"></script>
    <script src="assets/js/vendor.bundle.addons.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
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
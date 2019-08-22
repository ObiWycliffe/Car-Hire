<%@page import="hire_package.Login_Validate"%>
<%@page import="hire_package.DatabaseConnect"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
  <body onload="check()" onload="popup()">
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
              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Add New Vehicle</h4>
                    <form class="form-sample" action="add_vehicle" method="post" enctype="multipart/form-data">
                      <p class="card-description"><b> Vehicle Info </b></p>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Vehicle</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" placeholder="Vehicle Plate No." name="vName" required/>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Vehicle Pricing</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control"  placeholder="Ksh. 0.00" name="amnt" required/>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Image upload</label>
                            <div class="col-sm-9">
                              <input type="file" class="form-control file-upload-info" placeholder="Upload Vehicle Image" name="img" 
                                     style="padding-left: 0px;width: 345px;padding-right: 0px;padding-top: 0px;height: 22px;margin-top: 5px;" accept="image/*" required>
                                
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Description</label>
                            <div class="col-sm-9">
                                <textarea class="form-control" id="exampleTextarea1" rows="2" name="desc" required></textarea>
                              </div>
                          </div>
                        </div>
                      </div>
			<div class="row">
                            <p class="card-description"> <p class="card-description"> </p></p>
			</div>
					  
                      <p class="card-description"><b> Location </b></p>
                      <div class="row">
                           <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Town</label>
                            <div class="col-sm-9">
                              <select class="form-control" name="twn" required>
                                <option disabled selected>Select Town</option>
                                <option value="Eldoret">Eldoret</option>
                                <option value="Kisumu">Kisumu</option>
                                <option value="Nakuru">Nakuru</option>
                                <option value="Narobi">Nairobi</option>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Status</label>
                            <div class="col-sm-9">
                              <select class="form-control" name="stat">
                                <option disabled selected>Status</option>
                                <option value="Available">Available</option>
                                <option value="Pending">Pending</option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                          <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Location</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" placeholder="Enter Location" name="loc"/>
                            </div>
                          </div>
                        </div>
                      </div>
                          <button type="submit" class="btn btn-success mr-2">Upload</button>
                          <button class="btn btn-light" type="reset">Cancel</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
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
     
    <script>
        function popup(){
                var y = "<%=request.getParameter("b")%>";
                if(y === "ok"){
                    alert("Upload Successfull");
                    location.href="add_vehicle.jsp";
                }
            }
            
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
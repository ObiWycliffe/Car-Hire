<%@page import="hire_package.Login_Validate"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="hire_package.DatabaseConnect"%>
<%@page import="java.sql.ResultSet"%>
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

<body class="loader-active">
<!--== Header Area Start ==-->
    <header id="header-area" class="fixed-top">
        <% 
            String []usrn = new String[100];
            DatabaseConnect db1 = new DatabaseConnect();
            Connection con1 = db1.getCon();
            Statement stmt1 = con1.createStatement();
            int x = 0;
            ResultSet rss = stmt1.executeQuery("select username from user_info_table;");
            while(rss.next()){
                usrn[x] = rss.getString("username");
                x++;
            }
            
            %>
       
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
    <section id="login-signup-page-title-area" style="height:70px;" class="vegas-container">
        
    </section>
    <!--== SlideshowBg Area End ==-->
    
    <!--== Login Page Content Start ==-->
    <section id="lgoin-page-wrap" class="section-padding" style="padding-top: 15px;padding-bottom: 25px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-8 m-auto">
                	<div class="login-page-content" style="padding-bottom: 15px;">
                		<div class="login-form" style="padding-top: 20px;">
                			<h3>Sign Up</h3>
							<form onsubmit="register()" method="post">
								<div class="name">
									<div class="row">
										<div class="col-md-6">
											<input style="height: 41px;margin-bottom: 5px;margin-top: 5px;"type="text" placeholder="First Name" name="fname" required>
										</div>
										<div class="col-md-6">
											<input style="height: 41px;margin-bottom: 5px;margin-top: 5px;"type="text" placeholder="Last Name" name="lname" required>
										</div>
									</div>
								</div>
								<div class="txt">
									<input style="height: 41px;margin-bottom: 5px;margin-top: 5px;" type="email" placeholder="Email" name="email" required>
								</div>
								<div class="username">
                                                                    <input style="height: 41px;margin-bottom: 0px;margin-top: 5px;" type="text" placeholder="Username" name="uname" id="usrid" oninput="checkname()" required>
								</div>
                                                                <p style="width: 100px;height: 15px; font-size: 12px;"><i id="usrer" style="color: red;"></i></p>
								<div class="row">
										<div class="col-md-6">
											<input style="height: 41px;margin-bottom: 5px;margin-top: 3px;" type="text" placeholder="Mobile" name="mobile">
										</div>
										<div class="col-md-6">
											<input style="height: 41px;margin-bottom: 5px;margin-top: 3px;" type="text" placeholder="Address" name="add"  required>
										</div>
									</div>
                                                                    <div>
                                                                        <div class="log-btn" style="height: 41px;margin-bottom: 5px;margin-top: 5px;" placeholder="Location" required>
                                                                            <select class="form-control" name="twn" style="background-color: transparent; border: 1px solid #555; color: #777; font-size: 15px;">
                                                                              <option disabled selected>Location</option>
                                                                              <option value="Eldoret">Eldoret</option>
                                                                              <option value="Kisumu">Kisumu</option>
                                                                              <option value="Nakuru">Nakuru</option>
                                                                              <option value="Narobi">Nairobi</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
								<div class="password">
									<input style="height: 41px;margin-bottom: 0px;margin-top: 5px;" id="pwd" type="password" placeholder="Password" name="pass" oninput="passcheck()" required>
								</div>
                                                                <p style="width: 150px;height: 15px; font-size: 12px;"><i id="err" style="color: red;"></i></p>
								<div class="password">
                                                                    <input style="height: 41px;margin-bottom: 5px;margin-top: 3px;" id="cpwd" type="password" placeholder="Confirm Password" name="confirmPass" oninput="passcheck()" required>
								</div>
								<div class="log-btn" id="btn" style="visibility: hidden;">
									<button style="height: 41px;margin-bottom: 0px;margin-top: 10px;"  type="submit"><i class="fa fa-check-square"></i> Sign Up</button>
								</div>
							</form>
                		</div>
                		<div class="create-ac">
                			<p>Have an account? <a href="login.jsp">Log In</a></p>
                		</div>
                	</div>
                </div>
        	</div>
        </div>
    </section>
    <!--== Login Page Content End ==-->
    
    <script>
        var ps = 0;
        var ur = 0;
function register(){
    <%
       try{
          String fname = request.getParameter("fname");
          String lname = request.getParameter("lname");
          String email = request.getParameter("email");
          String uname = request.getParameter("uname");
          String mobile = request.getParameter("mobile");
          String add = request.getParameter("add");
          String town = request.getParameter("twn");
          String pass = request.getParameter("pass");
          if (fname != null){
          
          DatabaseConnect db = new DatabaseConnect();
         Connection con = db.getCon();
         Statement stmt = con.createStatement();
         out.println("12");
         stmt.executeUpdate("insert into user_info_table(first_name,last_name,email,username,mobile,address,town,password,account)values('"+fname+"','"+lname+"','"+email+"','"+uname+"','"+mobile+"','"+add+"','"+town+"','"+pass+"','user')");
         out.println("alert(\"added user\");");
          }
         
       }catch(Exception e){
       out.println(e);
       }
        %>
}
function checkname(){
    var usr =[<% for (int z = 0;z < x; z++){out.println("\""+usrn[z]+"\""); out.println(",");}%>];
    x = document.getElementById("usrid").value;
    y = document.getElementById("usrer");
    a = 0;
    for (c = 0; c < usr.length; c++){
        if (usr[c] === x){
            a =1;
            break;
        }
    }
    if (a === 1){
        y.innerHTML = "Username Taken";
        document.getElementById("btn").style.visibility = "hidden";
        ps = 0;
    } else {
        y.innerHTML = "";
        ps = 1;
        if (ur === 1){
            document.getElementById("btn").style.visibility = "visible";
        }
    }
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
    <script>
        function passcheck(){
           x = document.getElementById("pwd").value;
           y = document.getElementById("cpwd").value;
           z = document.getElementById("err");
           
           if (x === y ){
               z.innerHTML = "";
               ur = 1;
               if (ps === 1){
                    document.getElementById("btn").style.visibility = "visible";
                }
           } else {
               ur = 0;
               z.innerHTML = "Passwords Do Not Match";
               z.style.color = "red";
               document.getElementById("btn").style.visibility = "hidden";
           }
           
        }
    </script>
</body>

</html>
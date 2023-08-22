<%-- 
    Document   : registration
    Created on : Feb 21, 2019, 8:26:04 PM
    Author     : Ashish
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Hostel</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Unicat project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
        <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
        <link rel="stylesheet" type="text/css" href="styles/registration.css">
        <link rel="stylesheet" type="text/css" href="styles/responsive.css">

    </head>
    <body>
        <%
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/paperless_hostel","root","");
           Statement stmt=con.createStatement();
        %>
        <script type="text/javascript">
            function ajax()
            {
                
                var ajaxrequest;
                try
                {
                    ajaxRequest=new XMLHttpRequest();
                }
                catch(exception){
                    alert("browser not supported");
                }
                ajaxRequest.onreadystatechange=function()
                {
                    if(ajaxRequest.readyState==4)
                    {
                     var ajaxDisplay=document.getElementById("res");
                     ajaxDisplay.innerHTML=ajaxRequest.responseText;
                     res=ajaxRequest.responseText;
                    }
                }
                var em=document.getElementById("sid").value;
                var querystring="?sid="+em;
                ajaxRequest.open("GET","ajaxregister.jsp"+querystring, true);
                ajaxRequest.send(null);
            }
            
            function password()
            {
                var x=document.getElementById("pass").value;
               var y=document.getElementById("pass1").value;
                if(x==y)
                {
                    
                }
                else
                {
                    alert("Password doesn't match");
                }
                    
                
            }
            </script>
        <div class="super_container">

            <!-- Header -->

            <header class="header">

                <!-- Top Bar -->


                <!-- Header Content -->
                <div class="header_container">
                    <div class="container" style="margin-left:0px;">
                        <div class="row">
                            <div class="col">
                                <div class="header_content d-flex flex-row align-items-center justify-content-start" > 
                                    <div>
                                        <img src="MANIT-Bhopal-.png" style="margin-left:10px ;margin-top:10px;;width:90px; height:90px; float:left; ">
                                    </div>
                                    <div class="logo_text">
                                        <p style="color:#ff3333; margin-bottom:0px;">MAULANA AZAD NATIONAL INSTITUTE OF TECHNOLOGY</p>
                                        <p style="color: #b3003b;margin-bottom:0px;">PAPERLESS HOSTEL , Bhopal (M.P.)</p>
                                        <p style="color: #b3003b;">Pincode - 462003</p>
                                    </div>
                                    <nav class="main_nav_contaner ml-auto">
                                        <ul class="main_nav">
                                            <li ><a href="index.jsp">Home</a></li>
                                            <li><a href="notification.jsp">Notification</a></li>
                                            <li><a href="about.jsp">About</a></li>
                                            <li><a href="contact.jsp">Contact</a></li>
                                            <li><a href="registration.jsp"><button class="btnregister">Register</button></a></li>
                                            <li><a href="#"><button class="btnsign_in" onclick="document.getElementById('id01').style.display = 'block'" >Sign in</button></a></li>
                                        </ul>
                                    </nav>
           <!-- Sign up popup-->
    <jsp:include  page="signin.jsp"></jsp:include>  
        <!-- Sign up popup-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </header>
            
   
 
            <!-- Menu -->

            <div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
                <div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>


            </div>

            <!-- Registration form-->
            <div class="testbox">
                <center><h1>Registration</h1></center>

                <form action="getregister.jsp" method="post" >
                    <hr>
                    <div class="accounttype" style="margin-left:30px;">
                        <input type="radio" value="student" id="radioOne" name="account" checked />
                        <label for="student"  class="" >Student</label>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <input  type="radio" value="staff" id="radioTwo" name="account" />
                        <label for="staff" class="">Staff</label>
                    </div>
                    <hr>
                    <div style="margin-left:30px;"><img src="images/icon1.jpg" style="margin-left:15px ;margin-top:14px;margin-right:8px;width:35px; height:36px; float:left; "></div>
                    <input type="text" name="email"   placeholder="Email" required/>
                    <div style="margin-left:30px;"><img src="images/icon2.jpg" style="margin-left:15px ;margin-top:14px;margin-right:8px;width:35px; height:36px; float:left; "></div>
                    <input type="text" name="name"  placeholder="Name" required/>
                    <div style="margin-left:30px;"><img src="images/icon2.jpg" style="margin-left:15px ;margin-top:14px;margin-right:8px;width:35px; height:36px; float:left; "></div> 
                    <input type="text" name="sid"id="sid" onchange="ajax()" placeholder="Scholar Number/Employee ID" />
                    <div style="margin-left:30px;"><img src="images/icon3.jpg" style="margin-left:15px ;margin-top:14px;margin-right:8px;width:35px; height:36px; float:left; "></div>
                    <input type="password" name="pass" id="pass" placeholder="Password" required/>
                    <div style="margin-left:30px;"><img src="images/icon4.png" style="margin-left:15px ;margin-top:14px;margin-right:8px;width:35px; height:36px; float:left; "></div>  
                    <input type="password" name="pass1" id="pass1" onblur="password()" placeholder="Confirm Password" required/>
                    <div class="gender">
                        <input type="radio" value="male" id="male" name="gender" checked/>
                        <label for="male" class="" checked/>Male</label>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <input type="radio" value="female" id="female" name="gender" />
                        <label for="female" class="">Female</label>
                    </div>


                    <p>By clicking Register, you agree on our <a href="#">terms and condition</a></p>
                    <br>
                    <input type="submit" value="Register" style="border-radius:15px; height:40px; margin-left:178px; background-color:blue; color:white; width:100px;" onmouseover="fun()" >
                </form>

            </div>

            <!-- Feature-->
            <div class="features">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="section_title_container text-center">
                                <h2 class="section_title">Welcome To Hostel</h2>
                                <div class="section_subtitle"><p>People tend to make this too complex! 
                                        Don't drown the traveler in information. Be concise.
                                        Many times (in the case of hospitality), 
                                        photos sell much better than words do. So,show your hostel and your rooms, 
                                        show the location of your hostel on interactive map, along with your area's relevant
                                        landmarks or attractions. Give them a quick idea of price range, or point them to your 
                                        website's booking engine for checking out rates.
                                        It's this simple stuff that really matters.</p></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>


            <!-- Footer -->

            <footer class="footer">
                <div class="footer_background" style="background-image:url(images/footer_background.png)"></div>
                <div class="container">
                    <div class="row footer_row">
                        <div class="col">
                            <div class="footer_content">
                                <div class="row">

                                    <div class="col-lg-3 footer_col">

                                        <!-- Footer About -->
                                        <div class="footer_section footer_about">
                                            <div class="footer_logo_container">
                                                <img src="MANIT-Bhopal-.png" style="margin-left:20px ;margin-right:20px;margin-bottom:10px;;width:85px; height:85px; float:left; ">
                                            </div>
                                            <div class="footer_about_text">
                                                <p>Maulana Azad National Institute of Technology.</p>
                                            </div>
                                            <div class="footer_social">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-lg-3 footer_col">

                                        <!-- Footer Contact -->
                                        <div class="footer_section footer_contact">
                                            <div class="footer_title">Contact Us</div>
                                            <div class="footer_contact_info">
                                                <ul>
                                                    <li>Email: manithostel@gmail.com</li>
                                                    <li>Phone:  +(91)8786787890</li>
                                                    <li>Near Mata mandir</li>
                                                </ul>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-lg-3 footer_col">

                                        <!-- Footer links -->
                                        <div class="footer_section footer_links">
                                            <div class="footer_title">Contact Us</div>
                                            <div class="footer_links_container">
                                                <ul>
                                                    <li><a href="index.html">Home</a></li>
                                                    <li><a href="notification.html">Notification</a></li>
                                                    <li><a href="about.html">About</a></li>
                                                    <li><a href="contact.html">Contact</a></li>

                                                </ul>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row copyright_row">
                        <div class="col">
                            <div class="copyright d-flex flex-lg-row flex-column align-items-center justify-content-start">
                                <div class="cr_text"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Designed by Ashish & Sunil
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
                                <div class="ml-lg-auto cr_links">
                                    <ul class="cr_list">
                                        <li><a href="#">Copyright notification</a></li>
                                        <li><a href="#">Terms of Use</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>

        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="styles/bootstrap4/popper.js"></script>
        <script src="styles/bootstrap4/bootstrap.min.js"></script>
        <script src="plugins/greensock/TweenMax.min.js"></script>
        <script src="plugins/greensock/TimelineMax.min.js"></script>
        <script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
        <script src="plugins/greensock/animation.gsap.min.js"></script>
        <script src="plugins/greensock/ScrollToPlugin.min.js"></script>
        <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
        <script src="plugins/easing/easing.js"></script>
        <script src="plugins/parallax-js-master/parallax.min.js"></script>
        <script src="js/custom.js"></script>
    
    </body>
</html>
<%-- 
    Document   : index
    Created on : Feb 21, 2019, 8:02:22 PM
    Author     : Ashish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <link rel="stylesheet" type="text/css" href="styles/main_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/responsive.css">
       
        
    </head>
    <body>
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
                                            <li class="active"><a href="index.jsp">Home</a></li>
                                            <li><a href="notification.jsp">Notification</a></li>
                                            <li><a href="about.jsp">About</a></li>
                                            <li><a href="contact.jsp">Contact</a></li>
                                            <li><a href="registration.jsp"><button class="btnregister">Register</button></a></li>
                                            <li><a href="#"><button class="btnsign_in" onclick="document.getElementById('id01').style.display = 'block'" >Sign in</button></a></li>
                                        </ul>
                                    </nav>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </header>
            <%-- Header close --%>
         <!-- Sign up popup-->
        <jsp:include  page="signin.jsp"></jsp:include>  
            <!-- Sign up popup-->
       
            

            <!-- Menu -->

            <div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
                <div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>


            </div>

            <!-- Home -->

            <div class="home">
                <div class="home_slider_container">

                    <!-- Home Slider -->
                    <div class="owl-carousel owl-theme home_slider">

                        <!-- Home Slider Item -->
                        <div class="owl-item">
                            <div class="home_slider_background" style="background-image:url(images/download11.jpeg)"></div>


                        </div>

                        <!-- Home Slider Item -->
                        <div class="owl-item">
                            <div class="home_slider_background" style="background-image:url(images/download32.jpeg)"></div>
                        </div>

                        <!-- Home Slider Item -->
                        <div class="owl-item">
                            <div class="home_slider_background" style="background-image:url(images/download31.jpg)"></div>	
                        </div>

                        <!-- Home Slider Item -->
                        <div class="owl-item">
                            <div class="home_slider_background" style="background-image:url(images/download.jpeg)"></div>	
                        </div>

                    </div>
                </div>

                <!-- Home Slider Nav -->

                <div class="home_slider_nav home_slider_prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>
                <div class="home_slider_nav home_slider_next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
            </div>

            <!-- Features -->

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

            <!-- Rooms -->

            <div class="courses">
                <div class="section_background parallax-window" data-parallax="scroll" data-image-src="images/courses_background.jpg" data-speed="0.8"></div>
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="section_title_container text-center">
                                <h2 class="section_title" id="room">Rooms</h2>

                            </div>
                        </div>
                    </div>
                    <div class="row courses_row">

                        <!-- Occupacy -->
                        <div class="col-lg-4 course_col">
                            <div class="course">
                                <div class="course_image"><img src="images/download33.jpeg" alt=""></div>
                                <div class="course_body">
                                    <h3 class="course_title"><a href="#">Single Occupancy</a></h3>
                                    <div class="course_text">
                                        <p>Single Occupancy is only available for P.G. Student ( MCA/M.Tech/MBA/M.Plan/Ph.D )</p>
                                    </div>
                                </div>
                                <div class="course_footer">
                                    <div class="course_footer_content d-flex flex-row align-items-center justify-content-start">
                                        <div class="course_price ml-auto">₹ 20500</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Course -->
                        <div class="col-lg-4 course_col">
                            <div class="course">
                                <div class="course_image"><img src="images/download34.jpeg" alt=""></div>
                                <div class="course_body">
                                    <h3 class="course_title"><a href="#">Double Occupancy</a></h3>
                                    <div class="course_text">
                                        <p>Double Occupancy is only available for UG Student ( II/III/IV year)</p>
                                    </div>
                                </div>
                                <div class="course_footer">
                                    <div class="course_footer_content d-flex flex-row align-items-center justify-content-start">

                                        <div class="course_price ml-auto">₹ 18500</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Course -->
                        <div class="col-lg-4 course_col">
                            <div class="course">
                                <div class="course_image"><img src="images/download33.jpeg" alt=""></div>
                                <div class="course_body">
                                    <h3 class="course_title"><a href="#">Triple Occupancy</a></h3>
                                    <div class="course_text">
                                        <p>Triple Occupancy is only available for UG Student ( I year )</p>
                                    </div>
                                </div>
                                <div class="course_footer">
                                    <div class="course_footer_content d-flex flex-row align-items-center justify-content-start">
                                        <div class="course_price ml-auto">₹ 15500</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>

            <!-- Team -->

            <div class="team">
                <div class="team_background parallax-window" data-parallax="scroll" data-image-src="images/team_background.jpg" data-speed="0.8"></div>
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="section_title_container text-center">
                                <h2 class="section_title">Our Staff</h2>
                                <div class="section_subtitle"><p></p></div>
                            </div>
                        </div>
                    </div>
                    <div class="row team_row">

                        <!-- Team Item -->
                        <div class="col-lg-3 col-md-6 team_col">
                            <div class="team_item">
                                <div class="team_image"><img src="images/download4.jpg" alt=""></div>
                                <div class="team_body">
                                    <div class="team_title"><a href="#">Mr Ashish</a></div>
                                    <div class="team_subtitle">Warden</div>
                                    <div class="social_list">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Team Item -->
                        <div class="col-lg-3 col-md-6 team_col">
                            <div class="team_item">
                                <div class="team_image"><img src="images/download4.jpg" alt=""></div>
                                <div class="team_body">
                                    <div class="team_title"><a href="#">Mr Sunil</a></div>
                                    <div class="team_subtitle">Caretaker</div>
                                    <div class="social_list">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Team Item -->
                        <div class="col-lg-3 col-md-6 team_col">
                            <div class="team_item">
                                <div class="team_image"><img src="images/download4.jpg" alt=""></div>
                                <div class="team_body">
                                    <div class="team_title"><a href="#">Mr Abhishek</a></div>
                                    <div class="team_subtitle">Electric Department</div>
                                    <div class="social_list">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Team Item -->
                        <div class="col-lg-3 col-md-6 team_col">
                            <div class="team_item">
                                <div class="team_image"><img src="images/download4.jpg" alt=""></div>
                                <div class="team_body">
                                    <div class="team_title"><a href="#">Mr Ankit</a></div>
                                    <div class="team_subtitle">Mess Incharge</div>
                                    <div class="social_list">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

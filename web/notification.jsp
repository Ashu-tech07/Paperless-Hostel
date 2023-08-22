<%-- 
    Document   : notification
    Created on : Feb 24, 2019, 10:50:36 PM
    Author     : Ashish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notification</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Unicat project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
        <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
        <link rel="stylesheet" type="text/css" href="styles/notification.css">
        <link rel="stylesheet" type="text/css" href="styles/notification_responsive.css">
    </head>
</head>
<body>
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
                                    <p style="color:#b3003b;">Pincode - 462003</p>
                                </div>
                                <nav class="main_nav_contaner ml-auto">
                                    <ul class="main_nav">
                                        <li ><a href="index.jsp">Home</a></li>
                                        <li class="active"><a href="notification.jsp">Notification</a></li>
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
        <!-- Menu -->


    
    <!-- Sign up popup-->
    <jsp:include  page="signin.jsp"></jsp:include>  
        <!-- Sign up popup-->

        <!-- Home -->
        
   
        <!-- Courses -->

        <div class="courses">
            <div class="container">
                <div class="row">

                    <!-- Courses Main Content -->
                    <div class="col-lg-8">
                        <
                        <div class="courses_container">
                            <div class="row courses_row">

                                <!-- Course -->
                                <div class="col-lg-6 course_col">
                                    <div class="course">
                                        <div class="course_image"><img src="images/download1.jpg" alt=""></div>
                                        <div class="course_body">
                                            <h3 class="course_title"><a href="#">Latest News</a></h3>
                                            <div class="course_teacher">How to apply</div>
                                            <div class="course_text">
                                                <p>First, You have to register into hostel. And then Sign in and submit a online form for apply for hostel</p>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>

                                <!-- Course -->
                                <div class="col-lg-6 course_col">
                                    <div class="course">
                                        <div class="course_image"><img src="images/download5.jpeg" alt=""></div>
                                        <div class="course_body">
                                            <h3 class="course_title"><a href="#room">Fee details</a></h3>
                                            <div class="course_teacher">Fee details</div>
                                            <div class="course_text">
                                                <p>Fill the fee through SBI Collect in the name of <b>Director-MANIT</b></p>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>

                                <!-- Course -->
                                <div class="col-lg-6 course_col">
                                    <div class="course">
                                        <div class="course_image"><img src="images/download2.jpg" alt=""></div>
                                        <div class="course_body">
                                            <h3 class="course_title"><a href="#">ABOUT MESS</a></h3>
                                            <div class="course_teacher">Mess Fee - Rs 2500 per month</div>
                                            <div class="course_text">
                                                <p>First fill the mess fee through SBI Collect in the name of mess and then apply
                                                for mess and fill your fee detail</p>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>

                                <!-- Course -->
                                <div class="col-lg-6 course_col">
                                    <div class="course">
                                        <div class="course_image"><img src="images/1.jpg" alt=""></div>
                                        <div class="course_body">
                                            <h3 class="course_title"><a href="#">MANIT CRICKET LEAGUE</a></h3>
                                            <div class="course_teacher">Registration charges - RS 800</div>
                                            <div class="course_text">
                                                <p>Register before 13th April with 8 players for this amazing crickert league.Winner will get Rs 3100 cash prize.</p>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>

                                <!-- Course -->
                                

                                <!-- Course -->
                                

                            </div>
                            <div class="row pagination_row">
                                <div class="col">
                                    <div class="pagination_container d-flex flex-row align-items-center justify-content-start">
                                        <ul class="pagination_list">
                                            <li class="active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                        </ul>
                                        <div class="courses_show_container ml-auto clearfix">
                                            <div class="courses_show_text">Showing <span class="courses_showing">1-6</span> of <span class="courses_total">26</span> results:</div>
                                            <div class="courses_show_content">
                                                <span>Show: </span>
                                                <select id="courses_show_select" class="courses_show_select">
                                                    <option>06</option>
                                                    <option>12</option>
                                                    <option>24</option>
                                                    <option>36</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Notification Sidebar -->
                    <div class="col-lg-4">
                        <div class="sidebar">

                            <!-- Categories -->
                            

                            <!-- Latest Notification -->
                            <div class="sidebar_section">
                                <div class="sidebar_section_title">Latest Notifications</div><hr>
                                <div class="sidebar_latest">
                                      <!-- Latest Course -->
                                      
                                    <div class="latest d-flex flex-row align-items-start justify-content-start">
                                        
                                        <div class="latest_content">
                                            <div class="latest_title"><a  href="Dashboard/assets/img/Hostel_allotment_24-12-18.pdf">New hostel allotment list</a><img src="images/new.gif"></div>
                                            
                                        </div>
                                    </div>

                                    <!-- Latest Course -->
                                    <div class="latest d-flex flex-row align-items-start justify-content-start">
                                        
                                        <div class="latest_content">
                                            <div class="latest_title"><a href="Dashboard/assets/img/Notice to Existing Students for hostel allotment.pdf">Notice to Existing Students for hostel allotment</a><img src="images/new.gif"></div>
                                           
                                        </div>
                                    </div>
                                     <!-- Latest Course -->
                                    <div class="latest d-flex flex-row align-items-start justify-content-start">
                                        
                                        <div class="latest_content">
                                            <div class="latest_title"><a href="Dashboard/assets/img/notice for hostel charges.pdf">Notice for new student charges</a><img src="images/new.gif"></div>
                                           
                                        </div>
                                    </div>
                                      <!-- Latest Course -->
                                    <div class="latest d-flex flex-row align-items-start justify-content-start">
                                        
                                        <div class="latest_content">
                                            <div class="latest_title"><a href="Dashboard/assets/img/Hostel_allotment_24-12-18.pdf">Hostel  allotment notification</a><img src="images/new.gif"></div>
                                           
                                        </div>
                                    </div>

                                    <!-- Latest Course -->
                                    <div class="latest d-flex flex-row align-items-start justify-content-start">
                                        
                                        <div class="latest_content">
                                            <div class="latest_title"><a href="Dashboard/assets/img/notice for hostel charges.pdf">Notice for hostel charges</a><img src="images/new.gif"></div>
                                            
                                        </div>
                                    </div>
                                      

                                </div>
                            </div>

                            <!-- Gallery -->
                           

                            <!-- Tags -->
                            <div class="sidebar_section">
                                <div class="sidebar_section_title"></div>
                                <div class="sidebar_tags" id="room">
                                    
                                </div>
                            </div>

                            <!-- Banner -->
                            <div class="sidebar_section" >
                                <div class="sidebar_banner d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="sidebar_banner_background" style="background-image:url(images/banner_1.jpg)"></div>
                                    <div class="sidebar_banner_overlay"></div>
                                    <div class="sidebar_banner_content" >
                                        <table border="1" ><tr>
                                                <th>Occupancy </th> <th>  Hostel Fees</th>
                                            </tr>
                                            <tr><td>Single</td><td> ₹ 20500 </td></tr>
                                            <tr><td>Double</td><td> ₹ 18500</td></tr>
                                            <tr><td>Triple</td><td> ₹ 15500</td></tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Newsletter -->

        
    <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>

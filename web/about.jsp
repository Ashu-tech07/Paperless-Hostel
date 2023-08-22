<%-- 
    Document   : about
    Created on : Feb 22, 2019, 12:28:11 AM
    Author     : Ashish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>About</title>
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
<link rel="stylesheet" type="text/css" href="styles/about.css">
<link rel="stylesheet" type="text/css" href="styles/about_responsive.css">
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
								<p style="color: #b3003b;">Pincode - 462003</p>
							</div>
							<nav class="main_nav_contaner ml-auto">
								<ul class="main_nav">
									<li ><a href="index.jsp">Home</a></li>
									<li><a href="notification.jsp">Notification</a></li>
									<li class="active"><a href="about.jsp">About</a></li>
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
        <!-- Sign up popup-->
       <jsp:include  page="signin.jsp"></jsp:include>  
            <!-- Sign up popup-->
	<!-- Menu -->

	
	
	<!-- Home -->

	

	<!-- About -->

	<div class="about">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<h2 class="section_title">Welcome To Paperless Hostel</h2>
						<div class="section_subtitle"><p>Welcome to paperless hostel. This is an online portal for managing all the works of hostel. By this , all the data 
                                                     will be up to date.</p></div>
					</div>
				</div>
			</div>
			<div class="row about_row">
				
				<!-- About Item -->
				<div class="col-lg-4 about_col about_col_left">
					<div class="about_item">
						<div class="about_item_image"><img src="images/download33.jpeg" alt=""></div>
						<div class="about_item_title"><a href="#">Our Facilities</a></div>
						<div class="about_item_text">
							<p>We provide Excellent Hostel Facilities.
                                                        
                                                        Uninterrupted power supply , separate Generator for Students.Open Air Theater - programs on every weekends</p>
						</div>
					</div>
				</div>

				<!-- About Item -->
				<div class="col-lg-4 about_col about_col_middle">
					<div class="about_item">
						<div class="about_item_image"><img src="images/download13.jpeg" alt=""></div>
						<div class="about_item_title"><a href="#">Our Mission</a></div>
						<div class="about_item_text">
							<p>We believe that hostelling is not just about having a place to stay; 
                                                            it’s about having fun, experiencing different cultures and meeting new people. 
                                                            This is why we work with Youth Hostel Associations worldwide to provide the best environment for you to thrive in.
                                                            We aim to provide HI hostels</p>
						</div>
					</div>
				</div>

				<!-- About Item -->
				<div class="col-lg-4 about_col about_col_right">
					<div class="about_item">
						<div class="about_item_image"><img src="images/download7.jpeg" alt=""></div>
						<div class="about_item_title"><a href="#">Our Activities</a></div>
						<div class="about_item_text">
							<p>The Hostel is a platform for the students to develop all their talents. 
                                                           
                                                            It is indeed a spring board for many to begin well. This is followed by various 
                                                            programmes under the able guidance of cultural team as well as wardens & secretary.</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Feature -->

	<div class="feature">
		<div class="feature_background" style="background-image:url(images/download40.jpeg)"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<h2 class="section_title" style="color: white;">Why Choose Us</h2>
                                                <div class="section_subtitle"><p style="color: white;">We provide Excellent Hostel Facilities.
                                                        
                                                        Uninterrupted power supply , separate Generator for Students.Open Air Theater - programs on every weekends</p></div>
					</div>
				</div>
			</div>
			<div class="row feature_row">

				<!-- Feature Content -->
				<div class="col-lg-6 feature_col">
					<div class="feature_content">
						<!-- Accordions -->
						<div class="accordions">
							
							<div class="elements_accordions">

								<div class="accordion_container">
									<div class="accordion d-flex flex-row align-items-center"><div>Fresher’s Day</div></div>
									<div class="accordion_panel">
										<p>The Hostel is a platform for the students to develop all their talents. Fresher’s Day is organized with variety of entertainment programmes. It is indeed a spring board for many to begin well. This is followed by various programmes under the able guidance of cultural team as well as wardens & secretary.</p>
									</div>
								</div>

								<div class="accordion_container">
									<div class="accordion d-flex flex-row align-items-center active"><div>You’re learning from the best.</div></div>
									<div class="accordion_panel">
										<p>Hostel celebrates almost all festivals celebrated across the country such as New Year, 
                                                                                    Independence Day, Holi, Diwali, Lakshmi, Saraswathi and Ganesha festivals etc. 
                                                                                    The annual hostel magazine is being released on the occasion of the hostel day. 
                                                                                   </p>
									</div>
								</div>

								<div class="accordion_container">
									<div class="accordion d-flex flex-row align-items-center"><div>Health Forum.</div></div>
									<div class="accordion_panel">
										<p>The Health Forum of the hostel takes initiative to build & bringing awareness among all the students with regard to their health
                                                                                Hospital Trust regular medical check-up, health care facilities are being offered at concessional rates to all the hostelites</p>
									</div>
								</div>

								<div class="accordion_container">
									<div class="accordion d-flex flex-row align-items-center"><div>We encourage our students to go global.</div></div>
									<div class="accordion_panel">
										<p>Sports plays a very vital role in keeping everyone fit and energetic and it is something very essential and part of life to young ones..</p>
									</div>
								</div>

							</div>

						</div>
						<!-- Accordions End -->
					</div>
				</div>

				<!-- Feature Video -->
				<div class="col-lg-6 feature_col">
					<div class="feature_video d-flex flex-column align-items-center justify-content-center">
						<div class="feature_video_background" style="background-image:url(images/download32.jpeg)"></div>
						<a class="vimeo feature_video_button" href="images/vid.mp4" title="Hostel activities">
							<img src="images/play.png" alt="">
						</a>
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

	<!-- Counter -->

	

	<!-- Footer -->
        <jsp:include page="footer.jsp"></jsp:include>
    

	
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
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="js/about.js"></script>
</body>
</html>
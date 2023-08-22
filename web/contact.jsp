<%-- 
    Document   : contact
    Created on : Feb 24, 2019, 10:45:27 PM
    Author     : Ashish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Unicat project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
        <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="styles/contact.css">
        <link rel="stylesheet" type="text/css" href="styles/contact_responsive.css">
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
								<p style="color: #b3003b;margin-bottom:0px;">PAPERLESS HOSTEL, Bhopal (M.P.)</p>
								<p style="color: #b3003b;">Pincode - 462003</p>
							</div>
							<nav class="main_nav_contaner ml-auto">
								<ul class="main_nav">
									<li ><a href="index.jsp">Home</a></li>
									<li ><a href="notification.jsp">Notification</a></li>
									<li><a href="about.jsp">About</a></li>
									<li class="active"><a href="contact.jsp">Contact</a></li>
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

	<div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
		<div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
		<div class="search">
			<form action="#" class="header_search_form menu_mm">
				<input type="search" class="search_input menu_mm" placeholder="Search" required="required">
				<button class="header_search_button d-flex flex-column align-items-center justify-content-center menu_mm">
					<i class="fa fa-search menu_mm" aria-hidden="true"></i>
				</button>
			</form>
		</div>
		<nav class="menu_nav">
			<ul class="menu_mm">
				<li class="menu_mm"><a href="index.jsp">Home</a></li>
				<li class="menu_mm"><a href="#">About</a></li>
				<li class="menu_mm"><a href="#">Courses</a></li>
				<li class="menu_mm"><a href="#">Blog</a></li>
				<li class="menu_mm"><a href="#">Page</a></li>
				<li class="menu_mm"><a href="contact.jsp">Contact</a></li>
			</ul>
		</nav>
	</div>
	
	<!-- Home -->

	

	<!-- Contact -->

	<div class="contact">
		
		<!-- Contact Map -->

		<div class="contact_map">

			<!-- Google Map -->
			
			<div class="map">
				<div id="google_map" class="google_map">
					<div class="map_container">
						<div id="map"></div>
					</div>
				</div>
			</div>

		</div>

		<!-- Contact Info -->

		<div class="contact_info_container">
			<div class="container">
				<div class="row">

					<!-- Contact Form -->
					<div class="col-lg-6">
						<div class="contact_form">
							<div class="contact_info_title">Contact Form</div>
							<form action="#" class="comment_form">
								<div>
									<div class="form_title">Name</div>
									<input type="text" class="comment_input" required="required">
								</div>
								<div>
									<div class="form_title">Email</div>
									<input type="text" class="comment_input" required="required">
								</div>
								<div>
									<div class="form_title">Message</div>
									<textarea class="comment_input comment_textarea" required="required"></textarea>
								</div>
								<div>
									<button type="submit" class="comment_button trans_200">submit now</button>
								</div>
							</form>
						</div>
					</div>

					<!-- Contact Info -->
					<div class="col-lg-6">
						<div class="contact_info">
							<div class="contact_info_title">Contact Info</div>
							<div class="contact_info_text">
								<p>The institute hostel management consists of

1.     Chief Warden of all the Hostels

2.     Warden Incharge Boys’ Hostel of all the boys hostels

3.     Warden Incharge Girls’ Hostel of all the girls hostels

4.    Warden-I & Warden-II of the respective hostel.</p>
							</div>
							<div class="contact_info_location">
								<div class="contact_info_location_title">COW Office</div>
								<ul class="location_list">
									<li>Near Hostel no.-2, MANIT</li>
									<li>1-234-567-89011</li>
									<li>hostel@gmail.com</li>
								</ul>
							</div>
							<div class="contact_info_location">
								<div class="contact_info_location_title">MANIT office</div>
								<ul class="location_list">
									<li>MANIT Director office</li>
									<li>1-234-567-89011</li>
									<li>manitoffice@gmail.com</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Newsletter -->


</div>
<%-- Footer --%>
<jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

<%-- 
    Document   : user.jsp
    Created on : Mar 3, 2019, 12:32:12 AM
    Author     : AshishYadav
--%>

<%@page import="pojo.student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Profile</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>
    <%
            student st = new student();
            if(session.getAttribute("name")==null)
            {
                out.println("<script>alert('Already logged out. Please login again !');window.location.href='../index.jsp'</script>");
            }
            else{
             st.setStudent_id((int)session.getAttribute("name"));
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/paperless_hostel", "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from student where Student_id='" + st.getStudent_id() + "'");
            if (rs.next()) {
        %>

         <script type="text/javascript">
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
<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


    	<div class="sidebar-wrapper">
                    <div class="logo">
                        <a href="#" class="simple-text">
                             <h6>Welcome</h6>
                            <%=rs.getString(2)%>
                        </a>
                    </div>
                    <%
    }
            else
            {
                out.println("<script>alert('Something is wrong!!');window.location.href='../index.jsp'</script>");
            }
                    %>

                    <ul class="nav">
                        <li >
                            <a href="dashboard.jsp">
                                <i class="pe-7s-graph"></i>
                                <p>YOur Updates</p>
                            </a>
                        </li>
                        <li class="active">
                            <a href="user.jsp">
                                <i class="pe-7s-user"></i>
                                <p>User Profile</p>
                            </a>
                        </li>
                        <li>
                            <a href="form/form.jsp">
                                <i class="pe-7s-note2"></i>
                                <p>Apply for Hostel</p>
                            </a>
                        </li>
                        <li>
                            <a href="form/messform.jsp">
                                <i class="pe-7s-note2"></i>
                                <p>Apply for Mess</p>
                            </a>
                        </li>


                        <li>
                            <a href="notifications.jsp">
                                <i class="pe-7s-bell"></i>
                                <p>Notifications</p>
                            </a>
                        </li>
                        <li>
                            <a href="../logout.jsp">
                                <i class="pe-7s-power"></i>
                                <p>Log out</p>
                            </a>
                        </li>

                    </ul>
                </div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">User</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        
                        <li>
                            <a href="../logout.jsp">
                                <p><i class="pe-7s-power"></i> &nbsp;Log out</p>
                            </a>
                        </li>
			<li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Edit Profile</h4>
                            </div>
                            
                            <div class="content">
                                <form method="post" action="Update.jsp">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Name</label>
                                                <input type="text" class="form-control" disabled name="name" value="<%=rs.getString(2)%>">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Scholar Number</label>
                                                <input type="number" class="form-control" disabled name="sid" value="<%=rs.getString(1)%>" >
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email address</label>
                                                <input type="email" class="form-control" name="email" value="<%=rs.getString(14)%>">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input type="password" class="form-control" name="pass" id="pass" value="<%=rs.getString(15)%>"/>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Confirm Password</label>
                                                <input type="password" class="form-control" name="pass1" id="pass1" onblur="password()" />
                                            </div>
                                        </div>
                                    </div>
                                             <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Mobile Number</label>
                                                <input type="number" class="form-control" name="number"  value="<%=rs.getString(6)%>" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Department</label>
                                                <input type="text" class="form-control" name="department" value="<%=rs.getString(4)%>" >
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <input type="text" class="form-control" name="address" value="<%=rs.getString(11)%>">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>City</label>
                                                <input type="text" class="form-control" name="city" value="<%=rs.getString(17)%>">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>State</label>
                                                <input type="text" class="form-control" name="state" value="<%=rs.getString(18)%>">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Postal Code</label>
                                                <input type="number" class="form-control" name="pin" value="<%=rs.getString(19)%>">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>About Me</label>
                                                <textarea rows="5" class="form-control" placeholder="Here can be your description" value="<%=rs.getString(2)%>"></textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <input type="submit" class="btn btn-info btn-fill pull-right" value="Update Profile"/>
                                    <div class="clearfix"></div>
                                <input type="hidden" name="hf" value="<%=rs.getString(1)%>"/>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-user">
                            <div class="image">
                                <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                     <a href="#">
                                    <img class="avatar border-gray" src="../IMAGE/<%=rs.getString(13)%>" alt="..."/>

                                      <h4 class="title"><%=rs.getString(2)%><br />
                                         <small><%=rs.getString(1)%></small>
                                      </h4>
                                    </a>
                                </div>
                                         <p class="description text-center"><%=rs.getString(4)%><br>
                                         <%=rs.getString(14)%></p>
                                
                                
                            </div>
                            <hr>
                            <div class="text-center">
                                <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Top
                            </a>
                        </li>
                        <li>
                            
                        </li>
                        <li>
                            
                        </li>
                        <li>
                            
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> By Ashish & Sunil, Hostel for a better web hostel services
                </p>
            </div>
        </footer>

    </div>
</div>
<%} %>

</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

</html>

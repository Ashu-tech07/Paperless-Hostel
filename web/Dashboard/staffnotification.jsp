<%-- 
    Document   : notifications
    Created on : Mar 3, 2019, 12:34:09 AM
    Author     : AshishYadav
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.studentDao"%>
<%@page import="pojo.student"%>
<%@page import="pojo.staffregister"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<style>
    td {
        margin-left: 10px;
        padding-left: 20px;
    }
    </style>
    
	<meta charset="utf-8" />
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Notification</title>

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
            staffregister st = new staffregister();
            if(session.getAttribute("name")==null)
            {
                out.println("<script>alert('Already logged out. Please login again !');window.location.href='../index.jsp'</script>");
            }
            else{
            st.setEmp_id((int)session.getAttribute("name"));
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/paperless_hostel", "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from staff where Emp_id='" + st.getEmp_id() + "'");
            if (rs.next()) {
        %>

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
                            <a href="staffdashboard.jsp">
                                <i class="pe-7s-graph"></i>
                                <p>Your Updates</p>
                            </a>
                        </li>
                        <li>
                            <a href="staffprofile.jsp">
                                <i class="pe-7s-user"></i>
                                <p>User Profile</p>
                            </a>
                        </li>
                        
                        <li class="active">
                            <a href="staffnotification.jsp">
                                <i class="pe-7s-bell"></i>
                                <p>Notifications</p>
                            </a>
                        </li>
                        <li >
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
                    <a class="navbar-brand" href="#">Notifications</a>
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
                <div class="card">
                    <div class="header">
                        <h4 class="title"><strong>Notifications<img src="new.gif"</strong></h4><hr>
                    </div>
                    <table border="0" width="100%">
                    <%
                    ArrayList<student> std = new ArrayList();
                    studentDao stdao= new studentDao();
                    std=stdao.getStudent();
                    for(int i=0;i<std.size();++i){
                        %>
                        <tr>
                            <td> <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<Strong><% out.print(std.get(i).getStudent_name()); %></strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <% out.print("  applied  for  hostel. Check the details and accept or reject the application. ") ; %></p></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="form/view.jsp?sid=<%=std.get(i).getStudent_id()%>">View Form</a></td>
                    </tr>
                    <%    
                    }
                    %>
                    </table>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-6">
                                <h5>Notifications </h5>
                                <div class="alert alert-info">
                                    <span>Check the student application</span>
                                </div>
                                <div class="alert alert-info">
                                    
                                    <span>Notify them to the rules and regulation for hostels.</span>
                                </div>
                                
                                <div class="alert alert-info alert-with-icon" data-notify="container">
                                    
                                    
                                    <span data-notify="message">The institute hostel management consists of

1.     Chief Warden of all the Hostels

2.     Warden Incharge Boys’ Hostel of all the boys hostels

3.     Warden Incharge Girls’ Hostel of all the girls hostels

4.    Warden-I & Warden-II of the respective hostel</span>
                                </div>
                            </div>
                            
                        </div>
                        <br>
                        <br>
                        
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
                    &copy; <script>document.write(new Date().getFullYear())</script>By Ashish & Sunil, Hostel for a better web hostel services
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

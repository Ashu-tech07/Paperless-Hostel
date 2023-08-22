<%-- 
    Document   : dashboard
    Created on : Mar 3, 2019, 12:19:45 AM
    Author     : AshishYadav
--%>
<%@page import="models.studentDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.student"%>
<%@page import="pojo.staffregister"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <style>
            a.n{
                color:black;
            }
        </style>
        <meta charset="utf-8" />
        
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Admin</title>

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

                <!--
            
                    Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
                    Tip 2: you can also add an image using data-image tag
            
                -->

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
                        <li class="active">
                            <a href="staffdashboard.jsp">
                                <i class="pe-7s-graph"></i>
                                <p>Your Updates</p>
                            </a>
                        </li>
                        <li>
                            <a href="staffprofile.jsp">
                                <i class="pe-7s-user"></i>
                                <p>Profile</p>
                            </a>
                        </li>
                        


                        <li>
                            <a href="staffnotification.jsp">
                                <i class="pe-7s-bell"></i>
                                <p>Notifications</p>
                            </a></li>
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
                            <a class="navbar-brand" href="#">Admin Dashboard</a>
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
                                <li class="separator hidden-lg"></li>
                            </ul>
                        </div>
                    </div>
                </nav>


                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card">

                                    <div class="header">
                                        
                                        <h4 class="title">Check Details</h4>
                                        <p class="category">Show the details of applied student</p>
                                        <button class="btn btn-info btn-fill pull-right" ><a style="color:black" href="show.jsp"><b>Student Details</b></a></button><br>
                                        <hr>
                                    </div>
                                    <div class="content">
                                        <div id="chartPreferences" class="ct-chart ct-perfect-fourth"><p>Show the details of student and get a 
                                            list of student who applied for hostel successfully. Inform them to latest news whatever happened in hostel.
                                            Show the details of student and get a 
                                            list of student who applied for hostel successfully. Inform them to latest news whatever happened in hostel.
                                            Show the details of student and get a 
                                            list of student who applied for hostel successfully. Inform them to latest news whatever happened in hostel.</p>
                                        </div>

                                        <div class="footer">
                                            <div class="legend">
                                                
                                            </div>
                                            <hr>
                                            <div class="stats">
                                                <i class="fa fa-clock-o"></i> Last update 2 min ago
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <div class="card">
                                    <div class="header">
                                        <h4 class="title"><strong>Notifications<img src="new.gif"</strong></h4>
                                        <p class="category">New applications</p>
                                    </div>
                                    <div class="content">
                                        <div id="chartHours" class="ct-chart">
                                            <table border="0" width="100%">
                                                <%
                    ArrayList<student> std = new ArrayList();
                    studentDao stdao= new studentDao();
                    std=stdao.getStudent();
                    for(int i=0;i<std.size();++i){
                        %>
                        <tr>
                            <td><p> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<Strong><% out.print(std.get(i).getStudent_name()); %></strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <% out.print("  applied  for  hostel.Check the application. ") ; %></p></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="form/view.jsp?sid=<%=std.get(i).getStudent_id()%>">View Form</a></td>
                    </tr>
                    <%    
                    }
            %></table></div>
                                        <div class="footer">
                                            <div class="legend">
                                         
                                            </div>
                                            <hr>
                                            <div class="stats">
                                                <i class="fa fa-history"></i> Updated 1 minutes ago
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col-md-12">
                                <div class="card ">
                                    <div class="header">
                                        <h4 class="title">Last Year student's update</h4>
                                        <p class="category">Check the status of last year's student update </p><hr>
                                    </div>
                                    <div class="content">
                                        <div id="chartActivity" class="ct-chart"><h4><a class="n" href="#">How many student submitted form for hostel last year.</a><br>
                                            <a class="n" href="#">How many student submitted form for hostel last year.</a><br>
                                            <a class="n" href="#">Check the student application.</a><br>
                                            <a class="n" href="#">Notify them to the rules and regulation for hostels.</a><br>
                                            <a class="n" href="#">How many student submitted form for hostel last year.</a><br>
                                            <a class="n" href="#">How many student submitted form for hostel last year.</a><br>
                                            <a class="n" href="#">How many student submitted form for hostel last year.</a><br></h4></div>

                                        <div class="footer">
                                           
                                            <hr>
                                            <div class="stats">
                                                <i class="fa fa-check"></i> Details of last year student
                                            </div>
                                        </div>
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
                            &copy; <script>document.write(new Date().getFullYear())</script> By  Ashish & Sunil, Hostel for a better web hostel services
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

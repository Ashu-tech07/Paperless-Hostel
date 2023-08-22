<%-- 
    Document   : form
    Created on : 29 Mar, 2019, 11:10:25 PM
    Author     : AshishYadav
--%>

<%@page import="pojo.student"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Colorlib Templates">
        <meta name="author" content="Colorlib">
        <meta name="keywords" content="Colorlib Templates">

        <!-- Title Page-->
        <title>Application form</title>

        <!-- Icons font CSS-->
        <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <!-- Font special for pages-->
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <!-- Vendor CSS-->
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="css/formmain.css" rel="stylesheet" media="all">
    </head>

    <body>
        <script type="text/javascript">
            function fun(){
            alert("Application rejected !!");window.location.href="../staffdashboard.jsp";
        }
        </script>

        <%
            student st = new student();
            if (session.getAttribute("name") == null) {
                out.println("<script>alert('Already logged out. Please login again !');window.location.href='../../index.jsp'</script>");
            } else {

                st.setStudent_id(Integer.parseInt(request.getParameter("sid")));
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/paperless_hostel", "root", "");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("Select * from student where Student_id='" + st.getStudent_id() + "'");
                if (rs.next()) {
        %>
        <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
            <div class="wrapper wrapper--w680">
                <div class="card card-4">
                    <div class="card-body">
                        <h1 class="title"><b>Application Form</b></h1>
                        <form action="getview.jsp" method="POST">
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Name</label>
                                        <input class="input--style-4" type="text" name="name" value="<%=rs.getString(2)%>" disabled>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Father's Name</label>
                                        <input class="input--style-4" type="text" name="f_name" value="<%=rs.getString(3)%>" disabled>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Guardian's Number</label>
                                        <input class="input--style-4" type="number" name="f_number" value="<%=rs.getString(12)%>" disabled>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Date of Birth</label>
                                        <input class="input--style-4" type="date" name="dob" value="<%=rs.getString(7)%>" disabled>
                                    </div>   
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Scholar Number</label>
                                        <input class="input--style-4" type="text" name="sid"  value="<%=rs.getString(1)%>" disabled>
                                    </div>
                                </div>

                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Department</label>
                                        <input class="input--style-4" type="text" name="department" value="<%=rs.getString(4)%>" disabled >
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Email</label>
                                        <input class="input--style-4" type="email" name="email" value="<%=rs.getString(14)%>" disabled>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Gender</label>
                                        <input class="input--style-4" type="text" name="gender" value="<%=rs.getString(16)%>" disabled>
                                    </div>   
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Phone Number</label>
                                        <input class="input--style-4" type="number" name="phone" value="<%=rs.getString(6)%>" disabled>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Address</label>
                                        <input class="input--style-4" type="text" name="address" value="<%=rs.getString(11)%>" disabled>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">City</label>
                                        <input class="input--style-4" type="text" name="city" placeholder="City" value="<%=rs.getString(17)%>" disabled>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">State</label>
                                        <input class="input--style-4" type="text" name="state" value="<%=rs.getString(18)%>" disabled>
                                    </div>
                                </div>
                            </div>
                                    <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">PIN CODE</label>
                                    <input class="input--style-4" type="number" name="pin" value="<%=rs.getString(19)%>" disabled>
                                </div>
                            </div>
                                <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Date</label>
                                    <input class="input--style-4" type="date"  name="date" required >
                                </div>
                            </div>
                                    </div>

                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label"> Photo</label>
                                        <img class="avatar border-gray" src="../../IMAGE/<%=rs.getString(13)%>" alt="..." height="100px" width="100px"/>
                                    </div>
                                </div>
                           
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                            <label class="label">Hostel No.</label>
                                            <select name="Hostel" >
                                                <option value="0">Select Hostel</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>

                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>

                                                <option value="10">10</option>
                                                <option value="11">11</option>

                                            </select> 
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group">
                                            <label class="label">Vacant Room</label>
                                            <select name="Room">
                                                <option value="0">Select Room</option>
                                                <option value="2101">2101</option>
                                                <option value="2102">2102</option>
                                                <option value="2103">2103</option>
                                                <option value="2104">2104</option>
                                                <option value="2105">2105</option>

                                                <option value="2106">2106</option>
                                                <option value="2107">2107</option>
                                                <option value="2108">2108</option>
                                                <option value="2109">2109</option>

                                                

                                            </select> 
                                        </div>
                                    </div>

                                </div>

                                <div class="col-2">
                                    <div class="p-t-15">
                                        <input  type="submit" class="btnsubmit" value="Accept" />
                                    </div>
                                </div>
                               <input type="hidden" name="hf" value="<%=rs.getString(1)%>"/>     
                        </form
                        <div class="col-2">
                                    <div class="p-t-15">
                                        <input  type="submit" class="btnsubmit" value="Reject" onclick="fun()" />
                                    </div>
                                </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Jquery JS-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <!-- Vendor JS-->
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/datepicker/moment.min.js"></script>
        <script src="vendor/datepicker/daterangepicker.js"></script>

        <!-- Main JS-->
        <script src="js/global.js"></script>
        <%
                } else {
                    out.println("Something is wrong!!");
                }
            }
        %>
    </body>

</html>
<!-- end document-->
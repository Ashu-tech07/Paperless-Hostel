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
        <%
            student st = new student();
            if (session.getAttribute("name") == null) {
                out.println("<script>alert('Already logged out. Please login again !');window.location.href='../../index.jsp'</script>");
            } else {
                st.setStudent_id((int) session.getAttribute("name"));

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
                        <form action="getform.jsp" method="POST" enctype="multipart/form-data">
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
                                        <input class="input--style-4" type="text" name="f_name" placeholder="Father's Name" >
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Guardian's Number</label>
                                        <input class="input--style-4" type="number" name="f_number" placeholder="Mobile number">
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Date of Birth</label>
                                        <input class="input--style-4" type="date" name="dob" placeholder="DOB">
                                    </div>   
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Scholar Number</label>
                                        <input class="input--style-4" type="text" name="S_no" value="<%=rs.getString(1)%>" readonly>
                                    </div>
                                </div>

                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Department</label>
                                        <input class="input--style-4" type="text" name="department" placeholder="Department">
                                    </div>
                                </div>
                            </div>
                                    <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Phone Number</label>
                                        <input class="input--style-4" type="number" name="phone" placeholder="Phone number">
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Address</label>
                                        <input class="input--style-4" type="text" name="address" placeholder="Address">
                                    </div>
                                </div>
                                    </div>
                                    <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">City</label>
                                        <input class="input--style-4" type="text" name="city" placeholder="City">
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">State</label>
                                        <input class="input--style-4" type="text" name="state" placeholder="State">
                                    </div>
                                </div>
                                    </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">PIN CODE</label>
                                        <input class="input--style-4" type="number" name="pin" placeholder="Pin Code">
                                    </div>
                                </div>
<div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Fee Description/Remarks</label>
                                        <input class="input--style-4" type="text" name="fee_desc" placeholder="Hostel fee/Mess fee" required>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Fee Transaction ID</label>
                                        <input class="input--style-4" type="text" name="fee_id" placeholder="Transaction Number" required>
                                    </div>
                                </div>
</div>
                                    <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Month</label>
                                        <select name="Month">
                                            <option value="January">January</option>
                                            <option value="February">February</option>
                                            <option value="March">March</option>
                                            <option value="April">April</option>
                                            <option value="May">May</option>

                                            <option value="June">June</option>
                                            <option value="July">July</option>
                                            <option value="August">August</option>
                                            <option value="September">September</option>

                                            <option value="October">October</option>
                                            <option value="November">November</option>
                                            <option value="December">December</option>
                                        </select> 
                                    </div>
                                </div>


                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Upload Photo</label>
                                        <input class="input--style-4" type="file" name="img" placeholder="images">
                                    </div>
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="p-t-15">
                                    <input  type="submit" class="btnsubmit" value="Submit" />
                                </div>
                            </div>
                        </form>
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
        <%}
            }%>
    </body>

</html>
<!-- end document-->
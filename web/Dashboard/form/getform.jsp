<%-- 
    Document   : getform
    Created on : 4 Apr, 2019, 1:09:30 AM
    Author     : AshishYadav
--%>

<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="models.feeDao"%>
<%@page import="models.studentDao"%>
<%@page import="pojo.fee"%>
<%@page import="pojo.student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            MultipartRequest multipartRequest = new MultipartRequest(request, "C:/Users/AshishYadav/Documents/NetBeansProject/HostelManagement/web/IMAGE");

            student s = new student();
            fee f = new fee();
            String image = multipartRequest.getFile("img").getName().toString();
            s.setStudent_id(Integer.parseInt(multipartRequest.getParameter("S_no")));
            s.setStudent_fathername(multipartRequest.getParameter("f_name"));
            s.setF_mob_no(multipartRequest.getParameter("f_number"));
            s.setDOB(multipartRequest.getParameter("dob"));
            s.setDepartment(multipartRequest.getParameter("department"));
            s.setContact_no(multipartRequest.getParameter("phone"));
            s.setAddress(multipartRequest.getParameter("address"));
            s.setImage(image);
            s.setCity(multipartRequest.getParameter("city"));
            s.setState(multipartRequest.getParameter("state"));
            s.setPin(multipartRequest.getParameter("pin"));

            f.setFEE_MONTH(multipartRequest.getParameter("Month"));
            f.setStudent_id(Integer.parseInt(multipartRequest.getParameter("S_no")));

//            System.out.println("this"+request.getParameter("department")+"this");
            f.setFee_description(multipartRequest.getParameter("fee_desc"));
            f.setFee_id(multipartRequest.getParameter("fee_id"));

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/paperless_hostel", "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from student where Student_id='" + s.getStudent_id() + "'");
            rs.next();

            studentDao student = new studentDao();
            feeDao fees = new feeDao();
            int k = fees.Insert(f);
            int j = student.Insert(s);
            if (j > 0 && k > 0) {
                out.println("<script type='text/javascript'>alert('Successfully Applied !');window.location.href='../dashboard.jsp';</script>");

            } else {
                out.println("<script type='text/javascript'>alert('Not Successfully Applied. Please try again later');window.location.href='form/form.jsp';</script>");
            }

        %>

    </body>
</html>

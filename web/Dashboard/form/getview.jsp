<%-- 
    Document   : getview
    Created on : 8 Apr, 2019, 1:19:36 AM
    Author     : AshishYadav
--%>
<%@page import="models.studentDao"%>
<%@page import="java.sql.*,javax.sql.*" %>
<%@page import="pojo.student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        student s = new student();
        s.setStudent_id(Integer.parseInt(request.getParameter("hf")));
        s.setAllotment_date(request.getParameter("date"));
        s.setHostel_building_no(Integer.parseInt(request.getParameter("Hostel")));
        s.setRoom_id(request.getParameter("Room"));
        Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/paperless_hostel", "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from student where Student_id='" + s.getStudent_id() + "'");
            rs.next();
            studentDao student = new studentDao();
            int j = student.UpdateAgain(s);
            if (j > 0 ) {
                out.println("<script type='text/javascript'>alert('Application Accepted !');window.location.href='../staffdashboard.jsp';</script>");

            } else {
                out.println("<script type='text/javascript'>alert('Application Rejected');window.location.href='../staffdashboard.jsp';</script>");
            }
        
        %>
    </body>
</html>

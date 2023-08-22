<%-- 
    Document   : getsignin
    Created on : Mar 7, 2019, 12:10:36 AM
    Author     : AshishYadav
--%>


<%@page import="pojo.staff"%>
<%@page import="pojo.student"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            student str = new student();
            staff stf=new staff();
            
            stf.setEmp_id(Integer.parseInt(request.getParameter("sid")));
            stf.setPassword(request.getParameter("pass"));
            
            str.setStudent_id(Integer.parseInt(request.getParameter("sid")));
            str.setPassword(request.getParameter("pass"));
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/paperless_hostel", "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Select count(*) from student where Student_id='" + str.getStudent_id() + "' and Password='" + str.getPassword() + "' ");
            rs.next();
            int i = rs.getInt(1);
            
            ResultSet rs1 = stmt.executeQuery("Select count(*) from staff where Emp_id='" + stf.getEmp_id() + "' and Password='" + stf.getPassword() + "' ");
            rs1.next();
           int j = rs1.getInt(1);
            if(i>0||j>0)
            {
            if (i > 0) {
                session.setAttribute("name", str.getStudent_id());
                response.sendRedirect("Dashboard/dashboard.jsp");
                out.println("<script type='text/javascript'>alert('Login Success');window.location.href='Dashboard/dashboard.jsp?sid=" + str.getStudent_id() + "';</script>");
            }
            if(j>0){
                    session.setAttribute("name", stf.getEmp_id());
                response.sendRedirect("Dashboard/staffdashboard.jsp");
                out.println("<script type='text/javascript'>alert('Login Success');window.location.href='Dashboard/staffdashboard.jsp?sid=" + stf.getEmp_id() + "';</script>");
                }
            }
            else{
                out.println("<script type='text/javascript'>alert('Inavalid Id and Password');window.location.href='registration.jsp';</script>");
            }
                
          
            

        %>
    </body>
</html>

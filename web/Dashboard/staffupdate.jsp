<%-- 
    Document   : staffupdate
    Created on : 8 Apr, 2019, 2:32:58 AM
    Author     : AshishYadav
--%>
<%@page import="models.staffDao"%>
<%@page import="pojo.staff"%>
<%@page import="java.sql.*,javax.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/paperless_hostel", "root", "");
            Statement stmt = con.createStatement();
            staff sf=new staff();
            sf.setEmp_id(Integer.parseInt(request.getParameter("hf")));
            sf.setEmail(request.getParameter("email"));
            sf.setDesignation(request.getParameter("designation"));
            sf.setAddress(request.getParameter("address"));
            sf.setPassword(request.getParameter("pass"));
            sf.setContact_no(request.getParameter("phone"));
            staffDao staff=new staffDao();
            int i=staff.Update(sf);
            if(i>0)
              {
                   out.println("<script type='text/javascript'>alert('Profile Updated');window.location.href='dashboard.jsp';</script>;");
              }
              else
              {
               out.println("<script type='text/javascript'>alert('Profile not Updated');window.location.href='beans.jsp';</script>;");
              }
           %>
    </body>
</html>

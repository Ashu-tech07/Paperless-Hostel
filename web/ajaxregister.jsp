<%-- 
    Document   : ajaxregister
    Created on : Mar 6, 2019, 11:09:08 PM
    Author     : AshishYadav
--%>
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
           String sid=request.getParameter("sid");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/paperless_hostel","root","");
           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("select count(*) from studentregister where Student_id='"+sid+"'");
           rs.next();
           int i=rs.getInt(1);
           if(i>0)
           {
               out.println("User Already Exist");
           }
           else
           {
               out.println("New User");
           }
        %>
    </body>
</html>

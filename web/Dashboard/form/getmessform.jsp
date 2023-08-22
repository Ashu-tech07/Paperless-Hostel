<%-- 
    Document   : getmessform
    Created on : 4 Apr, 2019, 10:49:55 PM
    Author     : AshishYadav
--%>

<%@page import="models.feeDao"%>
<%@page import="pojo.fee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*" %>
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
            
            fee f=new fee();
            f.setStudent_id(Integer.parseInt(request.getParameter("S_no")));
            
            f.setFEE_MONTH(request.getParameter("Month"));
            f.setFee_id(request.getParameter("fee_id"));
            f.setFee_description(request.getParameter("desc"));
            
            feeDao fees = new feeDao();
            int k = fees.Insert(f);
            
            if ( k > 0) {
                out.println("<script type='text/javascript'>alert('Successfully Applied !');window.location.href='../dashboard.jsp';</script>");

            } else {
                out.println("<script type='text/javascript'>alert('Not Successfully Applied. Please try again later');window.location.href='form/form.jsp';</script>");
            }

        %>  
    </body>
</html>

<%-- 
    Document   : logout
    Created on : 4 Apr, 2019, 11:33:33 PM
    Author     : AshishYadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% session.invalidate(); %>
        <%
        out.println("<script type='text/javascript'>alert('You have been successfully logout');window.location.href='index.jsp';</script>");
        %>
    </body>
</html>

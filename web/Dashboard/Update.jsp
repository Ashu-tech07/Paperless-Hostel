<%-- 
    Document   : Update
    Created on : 7 Apr, 2019, 2:33:11 PM
    Author     : AshishYadav
--%>

<%@page import="models.studentDao"%>
<%@page import="pojo.student"%>
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
            student st = new student();
            st.setStudent_id(Integer.parseInt(request.getParameter("hf")));
            st.setEmail(request.getParameter("email"));
            st.setPassword(request.getParameter("pass"));
            st.setContact_no(request.getParameter("number"));
            st.setDepartment(request.getParameter("department"));
            st.setAddress(request.getParameter("address"));
            st.setCity(request.getParameter("city"));
            st.setState(request.getParameter("state"));
            st.setPin(request.getParameter("pin"));
            
            studentDao student = new studentDao();
            int i=student.Update(st);
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

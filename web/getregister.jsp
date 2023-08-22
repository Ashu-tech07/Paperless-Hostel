<%-- 
    Document   : getregister
    Created on : Mar 2, 2019, 11:23:54 PM
    Author     : AshishYadav
--%>


<%@page import="pojo.staff"%>
<%@page import="pojo.student"%>
<%@page import="models.staffDao"%>
<%@page import="models.studentregisterDao"%>




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
            String ac = request.getParameter("account");
            if (ac.equals("student")) {
                student str = new student();
                str.setEmail(request.getParameter("email"));
                str.setStudent_name(request.getParameter("name"));
                str.setStudent_id(Integer.parseInt(request.getParameter("sid")));
                str.setPassword(request.getParameter("pass"));
                str.setGender(request.getParameter("gender"));

                ResultSet rs = stmt.executeQuery("Select count(*) from student where Student_id='" + str.getStudent_id() + "'");
                rs.next();
                int i = rs.getInt(1);
                if (i > 0) {
                    out.println("<script type='text/javascript'>alert('This user already exist!! use another Scholar no.. or email ');window.location.href='registration.jsp';</script>");
                } else {
                    studentregisterDao strdao = new studentregisterDao();
                    int j = strdao.Insert(str);
                    if (j > 0) {
                        out.println("<script type='text/javascript'>alert('Successfully Registered !');window.location.href='registration.jsp';</script>");

                    } else {
                        out.println("<script type='text/javascript'>alert('Not Successfully registered');window.location.href='registration.jsp';</script>");
                    }
                }
            }
            else{
                staff str1 =new staff();
                str1.setEmail(request.getParameter("email"));
                str1.setName(request.getParameter("name"));
                str1.setEmp_id(Integer.parseInt(request.getParameter("sid")));
                str1.setPassword(request.getParameter("pass"));
                str1.setGender(request.getParameter("gender"));
                ResultSet rs = stmt.executeQuery("Select count(*) from staff where Emp_id='" + str1.getEmp_id()+ "'");
                rs.next();
                int i = rs.getInt(1);
                if (i > 0) {
                    out.println("<script type='text/javascript'>alert('This user already exist!! use another Employee Id .. or email ');window.location.href='registration.jsp';</script>");
                } else {
                    staffDao strdao = new staffDao();
                    int j = strdao.Insert(str1);
                    if (j > 0) {
                        out.println("<script type='text/javascript'>alert('Successfully Registered !');window.location.href='registration.jsp';</script>");

                    } else {
                        out.println("<script type='text/javascript'>alert('Not Successfully registered');window.location.href='registration.jsp';</script>");
                    }
                }
            }
            
        %>
    </body>
</html>

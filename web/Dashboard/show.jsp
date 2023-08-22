<%-- 
    Document   : show
    Created on : 7 Apr, 2019, 4:59:30 PM
    Author     : AshishYadav
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               <table border="1" >
                        <tr>
                            <th>Scholar No.</th>
                            <th>Name</th>
                            <th>Father's Name</th>
                            <th>Department</th>
                            <th>Mobile No.</th>
                            <th>DOB</th>
                            <th>Address</th>
                            <th>City</th>
                            <th>State</th>
                            <th>PIN CODE</th>
                            <th>Guardian's No.</th>
                            <th>Email</th>
                            <th>Gender</th>

                            <th>Photo</th>
                            
                            <th>Hostel No.</th>
                            <th>Allotment Date </th>
                                
                        </tr>
                        <%
                           Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/paperless_hostel", "root", "");
            Statement stmt = con.createStatement();

                            ResultSet rs1 = stmt.executeQuery("Select * from student");
                            while (rs1.next()) {
                        %>
                        <tr>
                            <td><%=rs1.getInt(1)%></td>
                            <td><%=rs1.getString(2)%></td>
                            <td><%=rs1.getString(3)%></td>
                            <td><%=rs1.getString(4)%></td>

                            <td><%=rs1.getString(6)%></td>
                            <td><%=rs1.getString(7)%></td>
                            <td><%=rs1.getString(11)%></td>
                            <td><%=rs1.getString(17)%></td>

                            <td><%=rs1.getString(18)%></td>
                            <td><%=rs1.getString(19)%></td> 
                            <td><%=rs1.getString(12)%></td>
                            <td><%=rs1.getString(14)%></td>
                            <td><%=rs1.getString(16)%></td>
                            <td><img src="../IMAGE/<%=rs1.getString(13)%>" height="100px" width="100px"/></td>
                            
                            <td><%=rs1.getString(8)%></td>
                            <td><%=rs1.getString(10)%></td>
                            

                        </tr>  


                        <% } %> 
                    </table>
    </body>
</html>

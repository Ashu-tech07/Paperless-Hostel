/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import DBConnection.DBConnection;
import java.sql.Connection;
import java.sql.Statement;
import pojo.student;


/**
 *
 * @author AshishYadav
 */
public class studentregisterDao {
    DBConnection dbcon=new DBConnection();
    
    public int Insert(student str) throws Exception
 {
     
  Connection con=dbcon.getConnection();
   Statement stmt=con.createStatement();
   int i=stmt.executeUpdate("insert into student(Student_id,Student_name,Email,Password,Gender) values('"+str.getStudent_id()+"','"+str.getStudent_name()+"','"+str.getEmail()+"','"+str.getPassword()+"','"+str.getGender()+"')");
    if(i>0)
    {
        return 1;
    }
    else
    {
        return 0;
    }
    
}
    
    
}

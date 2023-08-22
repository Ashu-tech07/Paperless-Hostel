/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import DBConnection.DBConnection;
import java.sql.Connection;
import java.sql.Statement;
import pojo.staff;


/**
 *
 * @author AshishYadav
 */
public class staffDao {
    DBConnection dbcon=new DBConnection();
    
    public int Insert(staff str) throws Exception
 {
     
  Connection con=dbcon.getConnection();
   Statement stmt=con.createStatement();
   int i=stmt.executeUpdate("insert into staff(Emp_id,Name,Email,Password,Gender) values('"+str.getEmp_id()+"','"+str.getName()+"','"+str.getEmail()+"','"+str.getPassword()+"','"+str.getGender()+"')");
    if(i>0)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
    public int Update(staff sf) throws Exception
    {
     Connection con=DBConnection.getConnection();
   Statement stmt=con.createStatement();
 
   int j=stmt.executeUpdate("update staff set Address='"+sf.getAddress()+"',Contact_no='"+sf.getContact_no()+"',Designation='"+sf.getDesignation()+"',Email='"+sf.getEmail()+"',Password='"+sf.getPassword()+"' where Emp_id='"+sf.getEmp_id()+"'");
   if(j>0)
       {
           return 1;
           
       }
       else
       {
           return 0;
       }
    }
}

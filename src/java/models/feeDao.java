/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import DBConnection.DBConnection;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import pojo.fee;

/**
 *
 * @author AshishYadav
 */
public class feeDao {
    DBConnection dbcon=new DBConnection();
    
    public int Insert(fee f) throws SQLException
    {
       Connection con=dbcon.getConnection();
       Statement stmt=con.createStatement();
       int i=stmt.executeUpdate("insert into fee(Student_id,FEE_MONTH,Fee_description,fee_id) values('"+f.getStudent_id()+"','"+f.getFEE_MONTH()+"','"+f.getFee_description()+"','"+f.getFee_id()+"')");
       
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

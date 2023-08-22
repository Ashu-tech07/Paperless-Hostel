/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import DBConnection.DBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import pojo.student;

/**
 *
 * @author AshishYadav
 */
public class studentDao {
   DBConnection dbcon=new DBConnection();
   
   public int Insert(student s) throws SQLException
   {
       Connection con=DBConnection.getConnection();
       Statement stmt=con.createStatement();
       int i=stmt.executeUpdate("update student set Student_fathername='"+s.getStudent_fathername()+"',Department='"+s.getDepartment()+"',Contact_no='"+s.getContact_no()+"',DOB='"+s.getDOB()+"',Address='"+s.getAddress()+"',F_mob_no='"+s.getF_mob_no()+"',Image='"+s.getImage()+"',City='"+s.getCity()+"',State='"+s.getState()+"',Pin='"+s.getPin()+"' where Student_id='"+s.getStudent_id()+"'");
               
       
       if(i>0)
       {
           return 1;
       }
       else
       {
           return 0;
       }
       
   }
  
   public int Update(student s1) throws SQLException
   {
       Connection con=DBConnection.getConnection();
       Statement stmt=con.createStatement();
       
       int i=stmt.executeUpdate("update student set Department='"+s1.getDepartment()+"',Contact_no='"+s1.getContact_no()+"',Address='"+s1.getAddress()+"',Email='"+s1.getEmail()+"',Password='"+s1.getPassword()+"',City='"+s1.getCity()+"',State='"+s1.getState()+"',Pin='"+s1.getPin()+"' where Student_id='"+s1.getStudent_id()+"'");
       if(i>0)
       {
           return 1;
       }
       else
       {
           return 0;
       }
   }
  public ArrayList<student> getStudent() throws SQLException
   {
       Connection con=DBConnection.getConnection();
       Statement stmt=con.createStatement();
       ArrayList<student> std=new ArrayList();
       ResultSet rs =stmt.executeQuery("select * from student");
       while(rs.next()){
           student st=new student();
           st.setStudent_name(rs.getString(2));
           st.setStudent_id(rs.getInt(1));
           st.setDepartment(rs.getString(4));
           st.setContact_no(rs.getString(6));
           st.setEmail(rs.getString(14));
           st.setF_mob_no(rs.getString(12));
           st.setAddress(rs.getString(11));
           st.setCity(rs.getString(17));
           std.add(st);
       }
       return std;
   }
  public int UpdateAgain(student s) throws SQLException
  {
      Connection con=DBConnection.getConnection();
       Statement stmt=con.createStatement();
        int k=stmt.executeUpdate("update student set Hostel_building_no='"+s.getHostel_building_no()+"',Allotment_date='"+s.getAllotment_date()+"' where Student_id='"+s.getStudent_id()+"'");
       if(k>0)
       {
           return 1;
           
       }
       else
       {
           return 0;
       }
  }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author Girish
 */
public class homeBean implements Serializable {
    
 private float sum=0;
 private Connection connection=null;
 private ResultSet rs = null;
 private Statement st = null;
 private String connectionURL = "jdbc:mysql://localhost/social";
 private int countVol=0;
 
 public homeBean() 
{
    try {
     Class.forName("com.mysql.jdbc.Driver");
     connection = DriverManager.getConnection(connectionURL, "root", ""); 
     }catch(Exception e){
     System.out.println("Exception is ;"+e);
     }
  }
 public float getSum(){
     return sum;
 }
 
 public void setSum(int a)
  {
    try
    {
     String sql = "select SUM(amount) from account";
     st = connection.createStatement();
     rs=st.executeQuery(sql);
     while(rs.next()){
     sum=rs.getFloat(1);
     }
     st.close ();
     }
     catch(SQLException e){
     System.out.println("Exception is ;"+e);
     }
  }
 public int getVol(){
     return countVol;
 }
 public void setVol(int a){
     try
    {
     String sql = "select COUNT(*) from volunteer";
     st = connection.createStatement();
     rs=st.executeQuery(sql);
     while(rs.next()){
     countVol=rs.getInt(1);
     }
     st.close ();
    }
     catch(SQLException e){
     System.out.println("Exception is ;"+e);
     }
 }
}
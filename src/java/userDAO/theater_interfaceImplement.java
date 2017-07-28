/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package userDAO;

import java.io.File;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author D3LL
 */

public class theater_interfaceImplement implements theater_Interface{
theater threobj=new theater();    
    public theater_interfaceImplement()
    {
        System.out.println("userDAO.theater_interfaceImplement.get_connection()");
    }
    
    @Override
    public void addDta(theater threobj)
               {
//theater_pic,
                   String query="insert into Theater_data(theater_name,theater_location,theater_date,theater_time,theater_pic,theater_plan) values(?,?,?,?,?,?)";    
        try {
           PreparedStatement ps=LoadApp.conn.prepareStatement(query);
            ps.setString(1,threobj.getTheater_name());
            ps.setString(2, threobj.getTheater_location());
            ps.setString(3, threobj.getTheater_date());
            ps.setString(4, threobj.getTheater_time());
            ps.setString(5, threobj.getTheater_pic());
            ps.setString(6, threobj.getTheater_plan());

            ps.execute();
        } catch (SQLException ex) {
           out.println("error in database"+ex);
        }
    }

    @Override 
    public ArrayList<theater> theater_dta() {
        ArrayList list= new ArrayList();
        
        String query="select * from Theater_data";
        try {
           PreparedStatement ps=LoadApp.conn.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
                 theater threobj=new theater();
                 
                threobj.setId(rs.getInt(1));
                threobj.setTheater_name(rs.getString(2));
                threobj.setTheater_location(rs.getString(3));
                threobj.setTheater_date(rs.getString(4));
                threobj.setTheater_time(rs.getString(5));
                threobj.setTheater_pic(rs.getString(6));
                threobj.setTheater_plan(rs.getString(7));

                list.add(threobj);
                
             }
            
        } catch (SQLException ex) {
           out.println("error in database"+ex);
        }
        
        return list;
        
        
    }

    @Override
    public void deleteTheater(int id) {
        String query3="delete from Theater_data where id="+ id;
        try {
           Statement s=LoadApp.conn.createStatement();
            s.executeUpdate(query3);
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        
    }

    @Override
    public StringBuilder seat_dta() {
    StringBuilder sb=new StringBuilder();
            String query="select * from seatbook";
    try {
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/hardy_dta","root","root");
        Statement s=con.createStatement();
       ResultSet rs= s.executeQuery(query);
        
       while(rs.next())
       {
           sb.append(rs.getString(3));
       }
       
    } catch (SQLException ex) {
        out.println("error"+""+ex);
    }
    return  sb;
    }

    @Override
    public ArrayList selected_theater_dta(String name) {
  ArrayList list= new ArrayList();
        
        String query="select * from Theater_data where theater_name="+name;
        try {
         PreparedStatement ps=LoadApp.conn.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
                 theater threobj=new theater();
                 
                threobj.setId(rs.getInt(1));
                threobj.setTheater_name(rs.getString(2));
                threobj.setTheater_location(rs.getString(3));
                threobj.setTheater_date(rs.getString(4));
                threobj.setTheater_time(rs.getString(5));
                threobj.setTheater_pic(rs.getString(6));
                threobj.setTheater_plan(rs.getString(7));

                list.add(threobj);
                
             }
            
        } catch (SQLException ex) {
           out.println("error in database"+ex);
        }
        
        return list;
       
    }

    
    
//        
//    public  ArrayList  theater_plan()
//    {
//            ArrayList list= new ArrayList();
//        
//        String query="select theater_plan from theater_dta";
//        try {
//            Connection  con=DriverManager.getConnection("jdbc:derby://localhost:1527/hardy_dta","root","root");
//            PreparedStatement ps=con.prepareStatement(query);
//            ResultSet rs=ps.executeQuery();
//             while(rs.next())
//             {
//                 theater threobj=new theater();
//                 
//                threobj.setTheater_plan(rs.getString("theater_plan"));
//
//                list.add(threobj);
//                
//             }
//            
//        } catch (SQLException ex) {
//           out.println("error in database"+ex);
//        }
//        
//        return list;
//    
//        
//    }
//    
//    
    
    
    public void update_theatre(int Id) throws SQLException
    {
        String query="update Theater_data set theater_name=?,capital_name=?,theater_date=?,theater_time=?,theater_pic=? where id="+ Id;
        PreparedStatement ps=LoadApp.conn.prepareStatement(query);
     
            ps.setString(1,threobj.getTheater_name());
            ps.setString(2, threobj.getTheater_location());
            ps.setString(3, threobj.getTheater_date());
            ps.setString(4, threobj.getTheater_time());
          //  ps.setString(6, threobj.getTheater_plan());
            ps.setString(5, threobj.getTheater_pic());
            ps.executeUpdate();
        
        
    }

    @Override
    public ArrayList seat_table() {
         String query="select * from seatbook";
         ArrayList list=new ArrayList();
    try {
        PreparedStatement ps=LoadApp.conn.prepareStatement(query);
               ResultSet rs= ps.executeQuery();
                 while(rs.next())
             {
                 
                 list.add(rs.getInt(1));
                 list.add(rs.getString(2));
                 list.add(rs.getString(3));
             }
    } catch (SQLException ex) {
        System.err.println("error in seeat_table:"+ex);
        
    }
    return list;
     }
    
}


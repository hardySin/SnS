/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package usersession;

import userDAO.LoadApp;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author D3LL
 */
public class seatInterImpl implements  seatInterface{

  //              UserSession us = new UserSession();

    public ArrayList seat_dta(String username) {
              
          ArrayList list=new ArrayList();

try {
String query="select seat from seatbook where user_name="+username;
              PreparedStatement ps = LoadApp.conn.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
            while (rs.next()) {  
                String s=rs.getString("seat");
                System.out.println("seat price"+s);
                       list.add(rs);

                System.out.println("you retrive the data from the database");
            }
                System.out.println("Get list :" + list);
          
                
            
    } catch (SQLException ex) {

        System.out.println("error in seat price"+ex);
        }
                    return list;
    
    }
}

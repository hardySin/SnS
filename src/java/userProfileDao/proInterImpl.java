/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package userProfileDao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import user2Dao.message;
import userDAO.LoadApp;

/**
 *
 * @author D3LL
 */


public class proInterImpl implements userProInterface{
  
    
         profile pro=new profile();

    @Override
    public void addprofile_dta(profile pro) {
          String query="insert into USER_PROFILES (FIRSTNAME,LASTNAME,GENDER,EMAILID,PASSWORD,PHONE_NUMBER,USER_PIC) values (?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps=LoadApp.conn.prepareStatement(query);
            ps.setString(1, pro.getFirstname());
            ps.setString(2, pro.getLastname());
            ps.setString(3, pro.getGender());
            ps.setString(4, pro.getEmailId());
            ps.setString(5, pro.getPassword());
            ps.setString(6, pro.getPhoneNumber());
            ps.setString(7, pro.getUSER_PIC());
            ps.executeUpdate();
        } catch (SQLException ex) {


            System.out.println("error is :"+ex);

        }
        
    }

    @Override
    public ArrayList<profile> view_profile() {
        
         ArrayList list=new ArrayList();
       String query="select * from USER_PROFILES";
                        try {
                            PreparedStatement ps=LoadApp.conn.prepareStatement(query);
                            ResultSet rs=ps.executeQuery();
                                    
                            while (rs.next()) {
         profile pro=new profile();
                                
                           pro.setId(rs.getInt(1));     
                            pro.setFirstname(rs.getString(2));
                            pro.setLastname(rs.getString(3));
                            pro.setGender(rs.getString(4));
                            pro.setEmailId(rs.getString(5));
                            pro.setPhoneNumber(rs.getString(7));
                            pro.setUSER_PIC(rs.getString(8));
                            list.add(pro);
                            }
                            
                        } catch (SQLException ex) {
                        
                            System.out.println("error in view :" + ex);
                        }
                        return list;
        
    }
        
    }
    
    
    
    

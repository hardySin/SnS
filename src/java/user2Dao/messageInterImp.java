/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user2Dao;

import com.sun.tools.ws.processor.modeler.ModelerConstants;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.security.auth.message.callback.PrivateKeyCallback;
import userDAO.LoadApp;

/**
 *
 * @author D3LL
 */
public class messageInterImp  implements  messageInterface{

    
                    message mess=new message();
                      static int count=0;

    @Override
    public void message_add(message mess)  {

        
        String  query="insert into MESSAGE(username,email,phone_no,address,message) values(?,?,?,?,?)";
        try {
            PreparedStatement ps=LoadApp.conn.prepareStatement(query);
            ps.setString(1, mess.getUsername());
            ps.setString(2, mess.getEmail());
            ps.setString(3, mess.getAddress());
            ps.setString(4, mess.getPhone_no());
            ps.setString(5, mess.getMessage());
                     
            count=ps.executeUpdate();
                        
                  
        } catch (SQLException ex) {
            
            System.err.println("error :" + ex);
        }
    }
    public static List mess_count()
    {
        
        List<Integer> list=new ArrayList();
        list.add(count);
    return list;
    
            }
    
    public ArrayList<message> view_mess() {
        
        ArrayList list=new ArrayList();
       String query="select * from MESSAGE";
                        try {
                            PreparedStatement ps=LoadApp.conn.prepareStatement(query);
                            ResultSet rs=ps.executeQuery();
                                    
                            while (rs.next()) {
                    message mess=new message();
                                
                           mess.setId(rs.getInt(1));     
                            mess.setUsername(rs.getString(2));
                            mess.setEmail(rs.getString(3));
                            mess.setPhone_no(rs.getString(4));
                            mess.setAddress(rs.getString(5));
                            mess.setMessage(rs.getString(6));

                            list.add(mess);
                            }
                            
                        } catch (SQLException ex) {
                        
                            System.out.println("error in view :" + ex);
                        }
                        return list;
        
    }
 
    
    
    
    
            }

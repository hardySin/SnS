
package usersession;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserSession {

    private String username;
//    private List<Seat> list = new ArrayList();

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

//    public List<Seat> getList() {
//        return list;
//    }
//
//    public void setList(List<Seat> list) {
//        this.list = list;
//    }
//    
//    public int getTotalPrice()
//        {
//        int retval = 0;   
//        for( Seat s : list )
//        {
//            retval += Integer.parseInt(s.getSeatPrice()) ;
//        }   
//        return retval;
//    }  
    
   
//    public static void main(String[] args) {
//         UserSession us = new UserSession();
//                                         us.seatprice();
//    }
}

    
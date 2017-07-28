/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ticket_info;

import static java.lang.System.out;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import userDAO.LoadApp;
import userDAO.theater;

/**
 *
 * @author D3LL
 */
public class ticketHandleInterImpl implements ticketHandleInterface{

    TicketHandle ticket=new TicketHandle();
            
    @Override
    public void addTicket_dta(TicketHandle ticket) {
        String query="insert into ticket_info(username_name,theater_movie,theater_place,theater_timing,theater_date,user_date,user_seat) values(?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps=LoadApp.conn.prepareStatement(query);
            ps.setString(1, ticket.getUser_name());
            ps.setString(2, ticket.getTheater_movie());
            ps.setString(1, ticket.getTheater_place());
            ps.setString(1, ticket.getTheater_timing());
            ps.setString(1, ticket.getTheater_date());
            ps.setString(1, ticket.getUser_date());
            ps.setString(1, ticket.getUser_seat());
                        
            ps.executeUpdate();
            
        } catch (SQLException ex) {
            System.out.println("error"+ex);}
        
    }

    @Override
    public ArrayList<TicketHandle> view_ticket() {
        
        ArrayList list=new ArrayList();

       String query="select * from ticket_info";
        try {
           PreparedStatement ps=LoadApp.conn.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
         TicketHandle ticket=new TicketHandle();
                 
                ticket.setId(rs.getInt(1));
                ticket.setUser_name(rs.getString(2));
                ticket.setTheater_movie(rs.getString(3));
                ticket.setTheater_place(rs.getString(4));
                ticket.setTheater_timing(rs.getString(5));
                ticket.setTheater_date(rs.getString(6));
                ticket.setUser_date(rs.getString(7));
                ticket.setUser_seat(rs.getString(8));

                list.add(ticket);
                
             }
            
        } catch (SQLException ex) {
           out.println("error in database"+ex);
        }
 



        return list;
    }
    
}

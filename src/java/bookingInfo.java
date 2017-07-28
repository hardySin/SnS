    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ticket_info.TicketHandle;
import ticket_info.ticketHandleInterImpl;
import userDAO.LoadApp;
import usersession.Seat;
import usersession.UserSession;
import usersession.seatInterImpl;

/**
 *
 * @author D3LL
 */
public class bookingInfo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet bookingInfo</title>");            
            out.println("</head>");
            out.println("<body>");
             String seats="";
             String value[]=request.getParameterValues("seat");
                for(int i=0;i<value.length;i++){
            seats+=value[i]+";";
                }    
               System.out.println("seats are :"+seats);
          
                String user_name= request.getSession().getAttribute("name").toString() ;
                System.out.println("user_name :"+user_name);
                String query="insert into SEATBOOK (USERNAME,SEAT_NAME) values(?,?)";
                PreparedStatement ps=LoadApp.conn.prepareStatement(query);
                ps.setString(1, user_name);
                ps.setString(2, seats);
              int a=ps.executeUpdate();
              System.out.println("row insert"+a);

            ticketHandleInterImpl tickImpl=new ticketHandleInterImpl();
            TicketHandle ticket=new TicketHandle();

            Date d=new Date();
             String user_date=d.toString();

                String values[]=request.getParameterValues("user_info");
                for (int i = 0; i < values.length; i++) {
                    System.out.println("user value :"+ values[i]);
            }
                
                for (int i = 0; i < values.length; i++)
                {
                  ticket.setTheater_movie(values[i]);
                  ticket.setTheater_place(values[i]);
                  ticket.setTheater_timing(values[i]);
                  ticket.setTheater_date(values[i]);   
                }
                    ticket.setUser_name(user_name);
                    ticket.setUser_date(user_date);
                    ticket.setUser_seat(seats);

                    tickImpl.addTicket_dta(ticket);
                    
                    response.sendRedirect("nextStep.jsp");

                        
//             String movie=request.getParameter("movie");
//             String place=request.getParameter("place");
//             String timing=request.getParameter("timing");
//             String date=request.getParameter("date");
//
//             Date d=new Date();
//             String user_date=d.toString();
//             
//            System.out.println(movie+place+timing+date+user_date);
//            
//            ticketHandleInterImpl tickImpl=new ticketHandleInterImpl();
//            TicketHandle ticket=new TicketHandle();
//            ticket.setUser_name(user_name);
//            ticket.setTheater_movie(movie);
//            ticket.setTheater_place(place);
//            ticket.setTheater_timing(timing);
//            ticket.setTheater_date(date);
//            ticket.setUser_date(user_date);
//            ticket.setUser_seat(seats);
//            
//            tickImpl.addTicket_dta(ticket);
//            
           out.println("</body>");
            out.println("</html>");
    }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response); //To change body of generated methods, choose Tools | Templates.
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response); //To change body of generated methods, choose Tools | Templates.
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    
}
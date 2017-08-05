/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import userDAO.LoadApp;

/**
 *
 * @author D3LL
 */
public class otp_generate extends HttpServlet {

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
            throws ServletException, IOException, AddressException, MessagingException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
     int emailUserOTP_ID = 0;
     String  user_name = request.getParameter("first_name");
          String user_phone = request.getParameter("phone");  
          String user_emailId = request.getParameter("emailId"); 
          
         
          String enter_name = null,enter_moblie = null,enter_email=null;
           

            System.out.println("enter value :"+user_emailId+user_name+user_phone);
            System.out.println("data base value :"+enter_email+enter_name+enter_moblie+emailUserOTP_ID);
            String query="select * from USER_PROFILES where EMAILID=?";
            PreparedStatement ps=LoadApp.conn.prepareStatement(query);
            ps.setString(1, user_emailId);
            
            ResultSet rs=ps.executeQuery();
            while (rs.next()) {                
                emailUserOTP_ID=rs.getInt(1);
                enter_name=rs.getString(2);
                enter_email=rs.getString(5);
                enter_moblie=rs.getString(7);
            }
            
            if(user_name==null &&user_phone==null &&user_emailId==null)
            {
                response.getWriter().println("Please enter the field first please!!");
            }
            
            else if(user_name!=enter_name &&user_phone!=enter_moblie &&user_emailId!=enter_email)
                {
response.getWriter().println("Your Information Not Register With us.Please Check the Infomation or Register it");
                }
            
           else
                {
                    response.getWriter().println("heeloo");
                }
            
            
            
            
              ServletConfig config=getServletConfig();  
            String Admin_name=config.getInitParameter("Admin_id"); 
         
            final String username=Admin_name;
       String to = user_emailId;
 
       String from = Admin_name;
    
       String host = "192.168.1.133:8080";

 
try{
       Properties props = System.getProperties();
        
       props.setProperty("mail.smtp.host", host);

 
        Session session = Session.getInstance(props);            
        // Create a default MimeMessage object.
         MimeMessage message = new MimeMessage(session);
         
         // Set From: header field of the header.
         message.setFrom(new InternetAddress(from));
         
         // Set To: header field of the header.
         message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
         
         // Set Subject: header field
         message.setSubject( "Get Your Forget Password");
         
         // Now set the actual message
         message.setText("Your opt Number is "+ emailUserOTP_ID);
         
         // Send message
         Transport.send(message);
        String result = "Sent message successfully....";
        
            response.sendRedirect("type_otp.jsp");
}
catch(Exception exception)
{
    System.out.println("error in mail adjustment :"+ exception);
}
                    }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (MessagingException ex) {
            Logger.getLogger(otp_generate.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(otp_generate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (MessagingException ex) {
            Logger.getLogger(otp_generate.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(otp_generate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

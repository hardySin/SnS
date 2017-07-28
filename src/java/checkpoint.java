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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import userDAO.LoadApp;
import usersession.UserSession;

/**
 *
 * @author D3LL
 */
public class checkpoint extends HttpServlet {

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
           String name=request.getParameter("User_name");
           String password=request.getParameter("password");
//            String name=request.getParameter("emailId");
//            String password=request.getParameter("password");

            System.out.println(name);
            System.out.println(password);

                     String user_name = null;
                String user_password = null;
                       try {
                
                String query="select * from USER_PROFILES where FIRSTNAME=? and PASSWORD=?";
                             PreparedStatement ps=LoadApp.conn.prepareStatement(query);
                ps.setString(1, name);
                ps.setString(2, password);
           
               ResultSet rs= ps.executeQuery();
               if(rs.next())
               {
                    user_name=rs.getString("FIRSTNAME");
                    user_password=rs.getString("PASSWORD");
                    
               }
                   
            } 
                         catch (SQLException e) {
                System.out.println("connection error");
            }
   
            if(name==""&& password=="")
            {
           response.sendRedirect("index.html");
            }
            
                    
            else if(name.equals("hardySingh")&& password.equals("webdata")) {
                    HttpSession session=request.getSession();
         //           request.getSession(false);
        session.setAttribute("web_name",name);  
                 response.sendRedirect("AdminConsole.jsp");
            }
            
            else if(name.equals("hardySingh")
                    && password.equals("uppertab"))
            {
                     HttpSession session=request.getSession();  
        session.setAttribute("view_name",name);  
        
                 response.sendRedirect("viewTheater.jsp");
            }
  
            else if (name.equals(user_name)&& password.equals(user_password)) 
            {   
                HttpSession session=request.getSession();
                
                UserSession us = new UserSession();
      
//                Date date=new Date();
//             String  User_time=date.toString();
               
            // String user_Dname=name +""+User_time;
             
             us.setUsername(name);
             
             System.out.println(name);
                
            // session3.setAttribute("user_name", name);
             
                session.setAttribute("name", us.getUsername());

                
                response.sendRedirect("main.jsp");
            } 
            else
            {
               response.sendRedirect("error.jsp");
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
        } catch (SQLException ex) {
            System.out.println("connection get method");
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
        } catch (SQLException ex) {
            System.out.println("connection get method");
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
    
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import userDAO.LoadApp;
import userDAO.theater;
import userDAO.theater_interfaceImplement;
 
/**
 *
 * @author D3LL
 */
public class seatMapping extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet seatMapping</title>");            
            out.println("</head>");
            out.println("<body>");
            
    try {
            String theater_name=request.getParameter("theater_name");
            String theater_location=request.getParameter("theater_location");
            String theater_date=request.getParameter("theater_date");
            String theater_time=request.getParameter("theater_time");
        
            System.out.println( "theater_name :"+request.getParameter("theater_name"));
            System.out.println( "theater_location:"+request.getParameter("theater_location"));
            System.out.println( "theater_date:"+request.getParameter("theater_date"));
            System.out.println( "theater_time:"+request.getParameter("theater_time"));
        
                    String theater_nameToDta="";
                   String theater_plan="";
        String query="select * from theater_data where theater_name=?";
        PreparedStatement ps=LoadApp.conn.prepareStatement(query);
        ps.setString(1, theater_name);
        ResultSet rs=ps.executeQuery();
        while (rs.next()) {            
            theater_nameToDta=rs.getString(2);
            theater_plan=rs.getString(7);
        }
        
//        request.setAttribute("name" , theater_name);
//        request.setAttribute("location" , theater_location);
//        request.setAttribute("date" , theater_date);
//        request.setAttribute("time" , theater_time);

        if(theater_name.equals(theater_nameToDta))
        {
            request.setAttribute("theater_name", theater_name);
//            request.setAttribute("theater_name", theater_name);
//            request.setAttribute("theater_name", theater_name);
//            request.setAttribute("theater_name", theater_name);
          
            response.sendRedirect(theater_plan);
        }
        
        else
        {
            System.out.println("tum say na ho pye ga bc");
        }
//              System.out.println( "theater_name :"+request.getParameter("theater_name"));
//           switch (request.getParameter("theater_name")){
//        case "Jab Harry Met Sejal":
//            response.sendRedirect("bookingInfo.jsp");
//            break;
//        case "Mubarakan":   
//            response.sendRedirect("bookingInfo1.jsp");
//            break;
//        case "Munna Michael":
//            response.sendRedirect("bookingInfo3.jsp");
//            break;
//        case "Bank Chor":
//            response.sendRedirect("bookingInfo4.jsp");
//            break;
//            }
} catch(Exception  e)
{
    System.out.println("error"+e);
}
    out.println("</body>");
            out.println("</html>");
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
        processRequest(request, response);
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
        processRequest(request, response);
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import userDAO.theater;
import userDAO.theater_interfaceImplement;

/**
 *
 * @author D3LL
 * 
 * 
 */

@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB 
                 maxFileSize=1024*1024*50,      	// 50 MB
                 maxRequestSize=1024*1024*100)   	// 100 MB


public class updateDta extends HttpServlet {

    
        theater_interfaceImplement threDao=new theater_interfaceImplement();
    theater threobj=new theater();

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
            out.println("<title>Servlet updateDta</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            
                   String SAVE_DIR="image";        
            String appPath = request.getServletContext().getRealPath("");
                    out.println( appPath );
         String savePath = appPath + File.separator + SAVE_DIR;
        File fileSaveDir = new File(savePath);
        
        if( !fileSaveDir.exists() )
        {
            fileSaveDir.mkdir();
        }
       
          System.out.println( savePath + File.separator + "sample.jpg" );
        
        File f = new File( savePath + File.separator + "simple.jpg" );
      
        FileOutputStream fos = new FileOutputStream(f);
        BufferedOutputStream bos = new BufferedOutputStream(fos);
        
        Part part = request.getPart("image");
        
        {
            
            String filename = "simple.jpg";
            
            byte b[] = new byte[part.getInputStream().available()];
            
            part.getInputStream().read(b);
            
            bos.write(b);
               
        }
       
      
            Cloudinary cloudinary1 = new Cloudinary(ObjectUtils.asMap(
  "cloud_name", "dgsnu9dpc",
  "api_key", "571592663838813",
  "api_secret", "Bg5qGkegTWqDyyi2xQi70O3rv1o"));
             Map uploadResult = cloudinary1.uploader().upload(f, ObjectUtils.emptyMap());
             System.out.println(uploadResult.get("url"));
                      System.out.println( uploadResult );
        
       String []values=request.getParameterValues("Dta_val");
            System.err.println("list");
            for (int i = 0; i < values.length ; i++) {
              System.out.println(values[i]);
              
            }
            for (int i = 0; i < values.length; i++) {
           
                    switch(i)
               {
                    case 0: threobj.setTheater_name(values[i]);break;
                    case 1: threobj.setTheater_location(values[i]);break;
                    case 3: threobj.setTheater_date(values[i]);break;
                    case 4: threobj.setTheater_time(values[i]);break;
//                    case 5: threobj.setTheater_plan(values[i]);break;
    
               }
           
            }
             bos.close();
        fos.close();

            threobj.setTheater_pic(uploadResult.get("url").toString());
 
            threDao.addDta(threobj);
           
            
             int Id=Integer.parseInt(request.getParameter("Theatre_id"));
                threDao.update_theatre(Id);
           
                response.sendRedirect("viewTheater.jsp");

            
            
            
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
            try {
                processRequest(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(updateDta.class.getName()).log(Level.SEVERE, null, ex);
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
                Logger.getLogger(updateDta.class.getName()).log(Level.SEVERE, null, ex);
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

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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
import userProfileDao.proInterImpl;
import userProfileDao.profile;

/**
 *
 * @author D3LL
 */

@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB 
                 maxFileSize=1024*1024*50,      	// 50 MB
                 maxRequestSize=1024*1024*100)   	// 100 MB

public class AddtoUserDta extends HttpServlet {

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
            out.println("<title>Servlet AddtoUserDta</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddtoUserDta at " + request.getContextPath() + "</h1>");
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

        
        
        String SAVE_DIR="image";        
            String appPath = request.getServletContext().getRealPath("");
                   System.out.println(appPath); 
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
       
      
            Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
  "cloud_name", "dgsnu9dpc",
  "api_key", "571592663838813",
  "api_secret", "Bg5qGkegTWqDyyi2xQi70O3rv1o"));
             Map uploadResult = cloudinary.uploader().upload(f, ObjectUtils.emptyMap());
             System.out.println(uploadResult.get("url"));
             String profile_pic=(uploadResult.get("url")).toString();
                      System.out.println( uploadResult );
       
      String firstname=request.getParameter("firstname");        
        String lastname=request.getParameter("lastname");                     
        String gender=request.getParameter("gender");
        String emailId=request.getParameter("emailid");
        String password=request.getParameter("uPassword");
        String number=request.getParameter("number");
                               
                                       profile pro=new profile();
              proInterImpl proIm=new proInterImpl();
                                       pro.setFirstname(firstname);
                      pro.setLastname(lastname);
                      pro.setGender(gender);
              pro.setEmailId(emailId);
              pro.setPassword(password);
              pro.setPhoneNumber(number);
              pro.setUSER_PIC(profile_pic);
              
              
              proIm.addprofile_dta(pro);
              response.sendRedirect("index.jsp");
              
//        try {
//            Connection c =DriverManager.getConnection("jdbc:derby://localhost:1527/hardy_dta","root","root");
//            String query="insert into user_profile (FIRSTNAME,LASTNAME,GENDER,EMAILID,PASSWORD,PHONENUMBER,USER_PROFILEpic) values (?,?,?,?,?,?,?)";
//            PreparedStatement ps=c.prepareStatement(query);
//            
//            ps.setString(1, request.getParameter("firstname"));
//            ps.setString(2, request.getParameter("lastname"));
//            ps.setString(3, request.getParameter("gender"));
//            ps.setString(4, request.getParameter("emailid"));
//            ps.setString(5, request.getParameter("uPassword"));
//            ps.setString(6, request.getParameter("number"));
//            ps.setString(7, profile_pic);
//            
//            ps.executeUpdate();
//       response.sendRedirect("index.html");
//  }
//        catch (SQLException ex) {
//            System.out.println("user database error"+ex);
//        }
//        
    }
   
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import userDAO.LoadApp;
import java.sql.PreparedStatement;

public final class type_005fotp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

String OTP,error_message;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("                             <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write(" <link rel=\"stylesheet\" type=\"text/css\" href=\"header_footer_colour.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("           <div class=\"Container\"><h1 class=\"heading\">Sound and Stage</h1>\n");
      out.write("           </div>  \n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-default navbar-fixed-top\" style=\"background-color: #ccccff\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      \n");
      out.write("      <a class=\"navbar-brand\" href=\"#myPage\">\n");
      out.write("                  <img style=\"width:80px;height:70px;padding-bottom: 10px;opacity:1\" src=\"image/logo3.jpg\" /> \n");
      out.write("</a>\n");
      out.write("     \n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                  <li><a href=\"index.jsp\">Continue...</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>  \n");
      out.write("        <center>\n");
      out.write("        <div style=\"border: 2px solid cornsilk;background-color: cornsilk;box-shadow: 5px 10px 70px #ccccff;\">\n");
      out.write("            <form action=\"type_otp.jsp\" method=\"post\">\n");
      out.write("            <h4>OTP Send To Your Email</h4>\n");
      out.write("                <hr style=\"width: 30px;border: 1px solid #777\">\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                 <input style=\"border: none;border-bottom: 1px solid #66ccff;\" \n");
      out.write("            class=\"form-control\" id=\"text\"  type=\"number\" \n");
      out.write("            placeholder=\"Enter OTP Number\" \n");
      out.write("            name=\"User_opt\" required>\n");
      out.write("             </div>\n");
      out.write("        </form>\n");
      out.write("            ");
      out.write("\n");
      out.write("            ");

                
                String user_otp=request.getParameter("User_opt");
                String query="select password from user_profiles where id=?";
            PreparedStatement ps=LoadApp.conn.prepareStatement(query);
            ps.setString(1,user_otp);
            ResultSet rs=ps.executeQuery();
        while (true) {   
            if(rs!=null)
            {
              OTP=rs.getString(1);
            }
            else
            {
                error_message="Please Enter the Vaild OTP Number";
            }
            
      out.write("\n");
      out.write("           \n");
      out.write("            <p style=\"color: #777\"> Your Password is : <h4 style=\"color:#ccccff\">");
      out.print(OTP);
      out.write("</h4></p>\n");
      out.write("        <p style=\"color:red\">");
      out.print(error_message);
      out.write("</p>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("         ");
   
            }
            
      out.write("\n");
      out.write("        </div>        \n");
      out.write("            </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import userDAO.theater_interfaceImplement;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_set_var_value_nobody.release();
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
      out.write("                  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write(" <script src=\"https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js\"></script>\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"header_footer_colour.css\">\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"index.css\">\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("    function isNumberKey(evt){  \n");
      out.write("    var charCode = (evt.which) ? evt.which : evt.keyCode\n");
      out.write("    if (charCode != 46 && charCode > 31 \n");
      out.write("\t&& (charCode < 48 || charCode > 57))\n");
      out.write("        return false;\n");
      out.write("        return true;\n");
      out.write("\t}\n");
      out.write("\t\t   \n");
      out.write("    function ValidateAlpha(evt)\n");
      out.write("    {\n");
      out.write("        var keyCode = (evt.which) ? evt.which : evt.keyCode\n");
      out.write("        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)\n");
      out.write("         \n");
      out.write("        return false;\n");
      out.write("            return true;\n");
      out.write("    }\n");
      out.write("      function ValidateAlpha2(evt)\n");
      out.write("    {\n");
      out.write("        var keyCode = (evt.which) ? evt.which : evt.keyCode\n");
      out.write("        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)\n");
      out.write("         \n");
      out.write("        return false;\n");
      out.write("            return true;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("     function ValidateAlpha3(evt)\n");
      out.write("    {\n");
      out.write("        var keyCode = (evt.which) ? evt.which : evt.keyCode\n");
      out.write("        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)\n");
      out.write("         \n");
      out.write("        return false;\n");
      out.write("            return true;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    function emailval(value)\n");
      out.write("    {\n");
      out.write("        var pattern=\"[a-z0-9._%+-]+@gmail\\.com$\";\n");
      out.write("    //var x=document.getElementById(\"emailID2\");\n");
      out.write("    if (pattern.test(value)) {\n");
      out.write("     document.getElementById(\"emailval\").innerHTML = \"Write Pattern\";\n");
      out.write("alert(\"write patern\");\n");
      out.write("}\n");
      out.write("else\n");
      out.write("{\n");
      out.write("     document.getElementById(\"emailval\").innerHTML = \"Please Write the Right Pattern\";\n");
      out.write("\n");
      out.write("alert(\"worng patern\");\n");
      out.write("}\n");
      out.write("    }\n");
      out.write("    function validateNumber(event) {\n");
      out.write("    var key = window.event ? event.keyCode : event.which;\n");
      out.write("    if (event.keyCode === 8 || event.keyCode === 46) {\n");
      out.write("        return true;\n");
      out.write("    } else if ( key < 48 || key > 57 ) {\n");
      out.write("        return false;\n");
      out.write("    } else {\n");
      out.write("        return true;\n");
      out.write("    }\n");
      out.write("};\n");
      out.write("    \n");
      out.write("</script>\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    <body ng-app=\"myApp\">\n");
      out.write("           <div class=\"Container\"><h1 class=\"heading\">Sound and Stage</h1>\n");
      out.write("           </div>  \n");
      out.write("        <nav class=\"navbar navbar-default navbar-fixed-top\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>                        \n");
      out.write("      </button>\n");
      out.write("        <a class=\"navbar-brand\" href=\"#myPage\"> \n");
      out.write("            <img style=\"width:80px;height:70px;padding-bottom: 10px\" src=\"image/logo3.jpg\" /> \n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("        <li><a data-toggle=\"modal\" data-target=\"#login\"><b>LOGIN</b> </a></li>\n");
      out.write("        <li><a data-toggle=\"modal\" data-target=\"#createAccount\"><b>CREATE ACCOUNT</b></a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");

            HttpSession session1=request.getSession();
            session1.getAttribute("name");
            session1.invalidate();
            

        
      out.write("               \n");
      out.write("               <!--Login start-->\n");
      out.write("             \n");
      out.write("                 <div class=\"modal fade\" id=\"login\" role=\"dialog\">\n");
      out.write("                <div class=\"modal-dialog modal-sm\">\n");
      out.write("    \n");
      out.write("      <!-- Modal content-->\n");
      out.write("               <div class=\"modal-content\">\n");
      out.write("               <div class=\"modal-body\">\n");
      out.write("               <div>\n");
      out.write("              <h4 style=\"text-align:center\">Sign up</h4>\n");
      out.write("               </div>\n");
      out.write("          <center>\n");
      out.write("          <hr style=\"border: 1px solid #000;width: 30px;\">\n");
      out.write("          </center>\n");
      out.write("   \n");
      out.write("            <form name=\"myForm\" action=\"checkpoint\" method=\"post\">\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                \n");
      out.write("                <input style=\"border: none;border-bottom: 1px solid #66ccff;\" \n");
      out.write("            class=\"form-control\" id=\"text\" onKeyPress=\"return ValidateAlpha3(event)\" type=\"text\" \n");
      out.write("            placeholder=\"User Name\" \n");
      out.write("            name=\"User_name\" required>\n");
      out.write("            \n");
      out.write("            </div>\n");
      out.write("                           \n");
      out.write("           <div class=\"form-group\">\n");
      out.write("            <input  style=\"border: none;border-bottom: 1px solid #66ccff;\" class=\"form-control\" \n");
      out.write("                    type=\"password\" ng-model=\"password\" placeholder=\"Password\" name=\"password\" \n");
      out.write("            required>\n");
      out.write("                \n");
      out.write("            <span style=\"color:red\" ng-show=\"myForm.password.$dirty && myForm.password.\n");
      out.write("            $invalid\">\n");
      out.write("            <span ng-show=\"myForm.password.$error.required\">Password Required</span>\n");
      out.write("            </span>\n");
      out.write("                             \n");
      out.write("           </div>\n");
      out.write("                  <center>\n");
      out.write("            <button type=\"submit\" class=\"btn btn-info \">Login</button>\n");
      out.write("                  </center>\n");
      out.write("            </div>\n");
      out.write("      </form>     \n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  \n");
      out.write("\n");
      out.write("<!--Login End-->               \n");
      out.write("\n");
      out.write("  <!--============================================================================-->\n");
      out.write("  \n");
      out.write("  <!--create profile--> \n");
      out.write("  \n");
      out.write("    <div class=\"modal fade\" id=\"createAccount\" role=\"dialog\">\n");
      out.write("    <div class=\"modal-dialog\">\n");
      out.write("      <div class=\"modal-content\">\n");
      out.write("        <div class=\"modal-body\">\n");
      out.write("           <div>\n");
      out.write("              <h4 style=\"text-align:center\">Create Account</h4>\n");
      out.write("          </div>\n");
      out.write("          <center>\n");
      out.write("          <hr style=\"border: 1px solid #000;width: 30px;\">\n");
      out.write("          </center>\n");
      out.write("          \n");
      out.write("        <div class=\"modal-body\">\n");
      out.write("            <!-- login start-->\n");
      out.write("            <form name=\"myform\" action=\"AddtoUserDta\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("       \n");
      out.write("       \n");
      out.write("                 <div class=\"form-group\">\n");
      out.write("                 <input  style=\"border: none;border-bottom: 1px solid #66ccff;\" \n");
      out.write("class=\"form-control\" id=\"firstname\" onKeyPress=\"return ValidateAlpha(event);\" type=\"text\" \n");
      out.write("ng-model=\"firstname\" ng-pattern=\"/^[A-Za-z]+$/\" ng-minlenghth=\"4\" placeholder=\"First name\" \n");
      out.write("name=\"firstname\" >\n");
      out.write("                 <span style=\"color:red\" ng-show=\"myform.firstname.$dirty && \n");
      out.write("myform.firstname.$invalid\">\n");
      out.write("  <span ng-show=\"myform.firstname.$error.required\">First Name Required.</span>\n");
      out.write("  <span ng-show=\"myform.firstname.$error.pattern\">Invalid Character</span>\n");
      out.write("  <span ng-show=\"myform.firstname.$error.minlength\">Minimum 5 Character required</span>\n");
      out.write("\n");
      out.write("                 </span>\n");
      out.write("          </div>                                                                           \n");
      out.write("                                                                      \n");
      out.write("          \n");
      out.write("          <div class=\"form-group\">\n");
      out.write("                    <input style=\"border: none;border-bottom: 1px solid #66ccff;\" \n");
      out.write("class=\"form-control\" required type=\"text\" ng-model=\"lastname\" onKeyPress=\"return ValidateAlpha2(event);\" ng-pattern=\"/^[A-Za-z]+$/\" ng-minlenghth=\"3\" placeholder=\"Last \n");
      out.write("name\" name=\"lastname\">\n");
      out.write("                 <span style=\"color:red\" ng-show=\"myform.lastname.$dirty && \n");
      out.write("myform.emailId.$invalid\">\n");
      out.write("  <span ng-show=\"myform.lastname.$error.required\">Last Name Required.</span>\n");
      out.write("  <span ng-show=\"myform.lastname.$error.pattern\">Invalid Character</span>\n");
      out.write("  <span ng-show=\"myform.lastname.$error.minlength\">Minimum 5 Character required</span>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("          </div>\n");
      out.write("          <label class=\"radio-inline\">\n");
      out.write("              <input type=\"radio\" required name=\"gender\" value=\"Male\">Male\n");
      out.write("           </label>\n");
      out.write("          <label class=\"radio-inline\">\n");
      out.write("                <input type=\"radio\" required name=\"gender\" value=\"Female\">Female\n");
      out.write("           </label>\n");
      out.write("          <br><br>\n");
      out.write("             <div class=\"form-group\">\n");
      out.write("                 <input style=\"border: none;border-bottom: 1px solid #66ccff;\" class=\"form-control\" ng-model=\"emailid\"  id=\"emailID2\" pattern=\"[a-z0-9._%+-]+@gmail\\.com$\" onchange=\"emailval(this.value)\" ng-pattern=\"/[a-z0-9._%+-]+@gmail\\.com$/\" required \n");
      out.write("                    type=\"text\" placeholder=\"Email id\" name=\"emailid\">\n");
      out.write("                          <span style=\"color:red\" ng-show=\"myform.emailid.$dirty && \n");
      out.write("                    myform.emailid.$invalid\">\n");
      out.write("  <span ng-show=\"myform.emailid.$error.required\">Email is required.</span>\n");
      out.write("  <span ng-show=\"myform.emailid.$error.pattern\">Invalid email address.</span>\n");
      out.write("  </span>\n");
      out.write("       \n");
      out.write("             </div>\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("              <input style=\"border: none;border-bottom: 1px solid #66ccff;\" class=\"form-control\" required ng-model=\"uPassword\" ng-patren=\"/.+/\" type=\"Password\" \n");
      out.write("placeholder=\"Password\" name=\"uPassword\">\n");
      out.write("            \n");
      out.write("                          <span style=\"color:red\" ng-show=\"myform.uPassword.$dirty && myform.uPassword.$invalid\">\n");
      out.write("  <span ng-show=\"myform.uPassword.$error.required\">Password Required</span>\n");
      out.write("  <span ng-show=\"myform.uPassword.$error.pattern\">Password Required</span>\n");
      out.write("  </span>\n");
      out.write("\n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("              <input style=\"border: none;border-bottom: 1px solid #66ccff;\" class=\"form-control\" required ng-model=\"confpass\" ng-pattern=\"uPassword\" type=\"Password\" \n");
      out.write("placeholder=\"Confirm password\" name=\"confpass\">\n");
      out.write("              \n");
      out.write("              \n");
      out.write("              <span style=\"color:red\" ng-show=\"myform.confpass.$dirty && myform.confpass.$invalid\">\n");
      out.write("  <span ng-show=\"myform.confpass.$error.required\">Confirm password Required</span>\n");
      out.write("  \n");
      out.write("  <span ng-show=\"myform.confpass.$error.pattern\">Confirm Password not Match</span>\n");
      out.write("  </span>\n");
      out.write(" </div>\n");
      out.write("\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("              <input style=\"border: none;border-bottom: 1px solid #66ccff;\" class=\"form-control\" required type=\"number\"  id=\"number\" pattern=\"(0|91)?[7-9][0-9]{9}$\" \n");
      out.write("onkeyup=\"validateNumber(event)\" ng-model=\"number\" ng-pattern=\"/(0|91)?[7-9][0-9]\n");
      out.write("{9}$/\"placeholder=\"Phone Number\" name=\"number\">\n");
      out.write("    \n");
      out.write("                        <span style=\"color:red\" ng-show=\"myform.number.$dirty && myform.number.$invalid\">\n");
      out.write("                            \n");
      out.write("  <span ng-show=\"myform.number.$error.required\"> Required</span>\n");
      out.write("  <span ng-show=\"myform.number.$error.pattern\">Enter the valid Indian Moblie Number</span>\n");
      out.write("          \n");
      out.write("                        </span>\n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("          \n");
      out.write("               <div class=\"form-group\">\n");
      out.write("                   <input style=\"border: none;\" class=\"form-control form-file\" required type=\"file\"  id=\"number\"  name=\"image\">\n");
      out.write("    \n");
      out.write("               \n");
      out.write("          </div>\n");
      out.write("         \n");
      out.write("          <center>\n");
      out.write("          <button type=\"submit\" class=\"btn btn-info\">Sumbit profile </button>\n");
      out.write("     </center>\n");
      out.write("\n");
      out.write("   </form>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  <!--create profile end-->\n");
      out.write("        \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("         <!--=========================================================================-->\n");
      out.write("                ");

                theater_interfaceImplement threDao=new theater_interfaceImplement();
               ArrayList list=(ArrayList)threDao.theater_dta();
               
               System.out.println( list );
        
      out.write("\n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        <h2 style=\"text-align: center;\">AVAILABLE THEATER</h2>\n");
      out.write("        <hr style=\"border: 1px solid #000;width: 100px;\">\n");
      out.write("            \n");
      out.write("             ");
      //  c:set
      org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
      _jspx_th_c_set_0.setPageContext(_jspx_page_context);
      _jspx_th_c_set_0.setParent(null);
      _jspx_th_c_set_0.setVar("theater_dta");
      _jspx_th_c_set_0.setValue(list);
      int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
      if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
        return;
      }
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      out.write("\n");
      out.write("             <div class=\"container-fluid\">\n");
      out.write("     \n");
      out.write("                    <div class=\"row\" >\n");
      out.write("    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("          </div>\n");
      out.write("                 \n");
      out.write("             </div>\n");
      out.write("     \n");
      out.write("    <script>\n");
      out.write("         \n");
      out.write("\n");
      out.write("        var app=angular.module(\"myApp\",['ngRoute']);\n");
      out.write("\tapp.config(function($routeProvider)\n");
      out.write("{\n");
      out.write("\t\t$routeProvider\n");
      out.write("\t\t.when('/',{\n");
      out.write("\t\t\ttemplateUrl:'index.html',\n");
      out.write("\t\t\tcontroller:'myrefreshcontroller'\n");
      out.write("\n");
      out.write("\t\t})\n");
      out.write("                        .otherwise(\n");
      out.write("                            {\n");
      out.write("                            controller:'nextcontroller'\n");
      out.write("                        });\n");
      out.write("\t\n");
      out.write("});\n");
      out.write("\n");
      out.write("\tapp.controller(\"myrefreshController\",function($scope,$location)\n");
      out.write("\t{\n");
      out.write("\t\t\n");
      out.write("\t\t\t$location.path('/')\n");
      out.write("\t\t\t{\n");
      out.write("                            //$route.reload();\n");
      out.write("                           setTimeout(function() {\n");
      out.write("\t\t\t\t\t\tlocation.reload();  // this method for refresh the page \n");
      out.write("\t\t\t\t\t}, \n");
      out.write("\t\t\t\t\t40000);\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t}\n");
      out.write("\t});\n");
      out.write("            app.controller(\"nextcontroller\",function ($scope,$location)\n");
      out.write("            {\n");
      out.write("                            \n");
      out.write("                     setTimeout(function ()\n");
      out.write("                            {\n");
      out.write("                              // location.reload();\n");
      out.write("                                    },2000) \n");
      out.write("                            \n");
      out.write("                });\n");
      out.write("       \n");
      out.write("    </script>\n");
      out.write("    </body>\n");
      out.write("    \n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("i");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${theater_dta}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("        <div  class=\"col-md-4\">\n");
          out.write("            <div class=\"adjust_image\" class=\"Container\">\n");
          out.write("            <div class=\"thumbnail\">\n");
          out.write("         \n");
          out.write("  <img  id=\"img\" src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getTheater_pic()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" style=\"width:100%\"/>\n");
          out.write("   <div class=\"caption\">\n");
          out.write("\n");
          out.write("       <h3><i>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getTheater_name()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</i> <a href=\"#\"><span id=\"info\" class=\"glyphicon glyphicon-info-sign\"></span></a></h3>\n");
          out.write("        <hr style=\"border: 0.2px solid #000;width: 100px;text-align: center\">\n");
          out.write("                \n");
          out.write("            <h5>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getCapital_name()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h5>\n");
          out.write("          <h5>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getTheater_date()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h5>\n");
          out.write("                    <h5>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getTheater_time()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h5>\n");
          out.write("\n");
          out.write("            </div>\n");
          out.write("           </div>\n");
          out.write("        </div>\n");
          out.write("        </div>\n");
          out.write("    ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}

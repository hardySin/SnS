<%-- 
    Document   : default_Check
    Created on : 30 May, 2017, 3:56:10 PM
    Author     : D3LL
--%>

<%@page import="java.sql.Statement"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script>
             
            
        </script>
           
    </head>
    <body>
<%--        <%!
            File file;
            int max=50000*4;
            int maxFactsize=50000*4 ;
            String str;
            %>
            <%
            String type=request.getContentType();
            out.println(type);
            if(type.indexOf("multipart/form")>=0)
            {
                out.println("its is mutlipart");
            }
            DiskFileItemFactory disfact=new DiskFileItemFactory();
            disfact.setSizeThreshold(maxFactsize);
            disfact.setRepository(new File("C:/Users/D3LL/Pictures"));
            ServletFileUpload fileUpload=new ServletFileUpload(disfact);             
fileUpload.setFileSizeMax(max);
List list=fileUpload.parseRequest(request);
Iterator itr=list.iterator();
while (itr.hasNext()) {
FileItem item=(FileItem)itr.next();

if (!item.isFormField()) {
    out.println(!item.isFormField());
    str=item.getName();
    str=str.substring(0,1)+"hardy"+(str.substring(str.indexOf(".")));
    out.println(str);
   file= new File("C:/Users/D3LL/Documents/NetBeansProjects/hardy_project1/build/web/image",str);
item.write(file);
out.println("uploaded image");
      }
}
%>
<%
     String query="insert into im_path values('"+str+"')";
     Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/hardy_dta","root","root"); 
     PreparedStatement  ps=con.prepareStatement(query);
     ps.executeUpdate();
%>
--%>
 
    </body>
</html> 
    
    
    
    
<!--    
    $(document).ready(function ()
            {
               $("#mybutton").click(function (){
                   alert("inside the request");
                   var searchVal=$("seacrh").val();
                   $.get(
                  "default_check",
                 { value:searchVal},    s
                 function(data) {
                alert(data);
                });
                 
             }) ;
            });
    
    
    -->
    
    
    
    
<%--       <%
        //   response.setContentType("text/plain");
           String x=request.getParameter("value");
         PrintWriter out1=response.getWriter();  
           //response.setContentType("text/S");
//		response.getWriter().write(greetings);
           Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/hardy_dta","root","root");
           String query="select * from CONCERT_DTA where singer=?";
           PreparedStatement ps=con.prepareStatement(query);
           ps.setString(1, x);
           ResultSet rs=ps.executeQuery();
           
while (rs.next()) {        
        out1.print("<p>"+ rs.getString(0)+"</p>");
                out1.print("<p>"+ rs.getString(1)+"</p>");
        out1.print("<p>"+ rs.getString(2)+"</p>");
        out1.print("<p>"+ rs.getString(3)+"</p>");
        out1.print("<p>"+ rs.getString(4)+"</p>");
        
          
    }
                      //   response.getWriter().write("{issue:true}");

        
                


                    con.close();
     %>
         --%>
  

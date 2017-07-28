<%-- 
    Document   : type_otp
    Created on : 27 Jul, 2017, 4:53:02 AM
    Author     : D3LL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="userDAO.LoadApp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                             <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" type="text/css" href="header_footer_colour.css">

    </head>
    <body>
           <div class="Container"><h1 class="heading">Sound and Stage</h1>
           </div>  

        <nav class="navbar navbar-default navbar-fixed-top" style="background-color: #ccccff">
  <div class="container-fluid">
    <div class="navbar-header">
      
      <a class="navbar-brand" href="#myPage">
                  <img style="width:80px;height:70px;padding-bottom: 10px;opacity:1" src="image/logo3.jpg" /> 
</a>
     

    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
                  <li><a href="index.jsp">Continue...</a></li>
      </ul>
    </div>
  </div>
</nav>  
        <center>
        <div style="border: 2px solid cornsilk;background-color: cornsilk;box-shadow: 5px 10px 70px #ccccff;">
            <form action="type_otp.jsp" method="post">
            <h4>OTP Send To Your Email</h4>
                <hr style="width: 30px;border: 1px solid #777">
            <div class="form-group">
                 <input style="border: none;border-bottom: 1px solid #66ccff;" 
            class="form-control" id="text"  type="number" 
            placeholder="Enter OTP Number" 
            name="User_opt" required>
             </div>
        </form>
            <%!String OTP,error_message;%>
            <%
                
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
            %>
           
            <p style="color: #777"> Your Password is : <h4 style="color:#ccccff"><%=OTP%></h4></p>
        <p style="color:red"><%=error_message%></p>
        
        
         <%   
            }
            %>
        </div>        
            </center>
    </body>
</html>

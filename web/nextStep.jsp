<%-- 
    Document   : nextStep
    Created on : 20 Jul, 2017, 1:47:24 AM
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
 
  <style>
                 .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #ccccff;
      border: 0;
      font-size: 11px ;
      letter-spacing: 4px;
      opacity: 0.9;
      box-shadow: 5px 10px 70px #ccccff;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #333333;
  }
  body {
      
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
       font-family: Segoe Script;
        overflow-x: hidden;
  overflow-y: scroll;
  }

      </style>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-fixed-top" style="background-color: #ccccff">
  <div class="container-fluid">
    <div class="navbar-header">
      
      <a class="navbar-brand" href="#myPage">
                  <img style="width:80px;height:70px;padding-bottom: 10px;opacity:1" src="image/logo3.jpg" /> 
</a>
     

    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">HOME</a></li>
        <li><a href="#theater">THEATER</a></li>
        <li><a href="#contact">CONTACT</a></li>
        <li><a href="index.jsp">LOGOUT</a></li>

        <li><a href="#welcome">Hi,<%=request.getSession().getAttribute("name")%></a></li>
      </ul>
    </div>
  </div>
</nav>  

      
      
                 <div class="jumbotron text-center">
            <h1 style="">Sound and Stage </h1>
</div>
  
                <div class="container text-center" >
  <div class="row"><%! int ticket_id=0;%>
     <%
              String user_name= (String)request.getSession().getAttribute("name") ;
                
              System.out.println(user_name);
              
              String query="select ID from SEATBOOK where username=?";
              PreparedStatement ps=LoadApp.conn.prepareStatement(query);
              ps.setString(1,user_name);
           ResultSet  rs=ps.executeQuery();
              while (rs.next()) { 
                  System.out.println("id :"+rs.getInt("id"));
                     ticket_id =rs.getInt("id");
                  }

              %> 
      <center>
          
          <h2>Your Booking has Done Successfully</h2>
          <h4>Your Ticket ID 
              <%=ticket_id%>
              </h4>
      </center>     
  </div>
</div>
    </body>
</html>

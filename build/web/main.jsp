<%@page import="userDAO.LoadApp"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="userDAO.theater"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="userDAO.theater_interfaceImplement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
 
<link rel="stylesheet" type="text/css" href="index.css">

 <link rel="stylesheet" type="text/css" href="header_footer_colour.css">
</head>

    <div class="Container-fluid">
        <h1 class="heading">SOUND AND STAGE</h1>
      </div>

             <%!String user_pic;%>
            <%String user_name=request.getSession().getAttribute("name").toString();%>
            <%
                String query="select user_pic from USER_PROFILES where firstname =?";
            PreparedStatement ps=LoadApp.conn.prepareStatement(query);
             ps.setString(1,user_name);
            ResultSet rs=ps.executeQuery();
            while (rs.next()) {                    
                   user_pic=rs.getString("user_pic");
                }   
            %>
            <img src="<%=user_pic%>"id="img_adjust" style="width:100px;height:100px;"
                 alt="user_pic"  class="img-circle">
                            
<nav class="navbar navbar-default navbar-fixed-top">
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
        <li><a href="#contact"  data-toggle="modal" data-target="#contact">CONTACT</a></li>
        <li><a href="index.jsp">LOGOUT</a></li>
            <%String user_name1=request.getSession().getAttribute("name").toString().toUpperCase();%>
        <li><a href="#welcome">Hi,<%=user_name1%></a></li>
      </ul>
    </div>
  </div>
</nav>  
         
    
        <%System.out.println("user_session"+request.getSession().getAttribute("name"));%>
   <%
                theater_interfaceImplement threDao=new theater_interfaceImplement();
               ArrayList<theater> list=(ArrayList)threDao.theater_dta();
               JSONArray  json=new JSONArray();
               for (theater threobj : list) {
                   json.add(threobj.getJSONObject());
               }
               String jsonData=json.toString();
                   
  
        %>
         <c:set var="theater_dta" value="<%=jsonData%>"/>
        
        <script>
            var app=angular.module("myApp",[]);
            app.controller("myController",function($scope) {
    $scope.data=${theater_dta};
});
     </script>
<div class="container">
    

        
         <div  id="myPage" class="carousel slide" data-ride="carousel"  >
   
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
 
   
    <div style="height: 500px" class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="image/go1.jpg" alt="New York" width="1200" height="700">
        <div class="carousel-caption">
          <h3>No Live Without sound</h3>
         
        </div>      
      </div>
              <div class="item">
        <img src="image/go2.jpg"  width="1200" height="700">
        <div class="carousel-caption">
            <h3>Music is What Feelings Sound Like</h3>
        </div>      
      </div>
    
      <div class="item">
        <img src="image/go3.jpg" alt="Los Angeles" width="1200" height="700">
        <div class="carousel-caption">
            <h3>In Music Silence is More Important Than Sound</h3>
        </div>      
      </div>
        
        
    </div>

    <a class="left carousel-control"  href="#myCarousel" role="button" data-slide="prev" >
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" >
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>    
</div>
    </div>       
    


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
 

<h2 style="text-align: center;color: #333">Theatre's </h2>

<hr>

<div  id="theater" class="container-fluid" ng-app="myApp" ng-controller="myController" >
     
                    <div class="row"  >
        <div  class="col-md-3"  ng-repeat="x in data ">
            <div class="adjust_image" class="Container-fluid">
            <div class="thumbnail">
         
  <img  id="img" src="{{x.theater_pic}}" style="width:100%">
   <div class="caption">
       
       <form action="seatMapping.jsp" method="post">
           
       <span><h3><i>{{x.theater_name}}</i></h3></span>       
      <input type="hidden" name="theater_name" value="{{x.theater_name}}">
      <input type="hidden" name="theater_location" value="{{x.theater_location}}">
      <input type="hidden" name="theater_date" value="{{x.theater_date}}">
      <input type="hidden" name="theater_time" value="{{x.theater_time}}">

         &nbsp;&nbsp;
       <hr class="hr">
                
            <h5>{{x.theater_location}}</h5>
            <h5>{{x.theater_date}}</h5>
            <h5>{{x.theater_time}}</h5>
            <button class="btn btn-danger">Booking</button>
                  </form>
     </div>
           </div>
        </div>
        </div>
    
          </div>
                 
             </div>

             
 
  <!-- Contact Section -->
    
  
  
<!-- End page content -->
                  
<!-- Modal -->
<div id="contact" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h1 style ="text-align:center;text-decoration:underline">Contact</h1><br>
      </div>
      <div class="modal-body">
         <div style="color: #777">
          
          
      <center>   <h5>We offer full-service. We understand your needs and Do not hesitate to contact us.</h5>
    <p><b> Arya Samaj Road,Uttam Nagar, New Delhi Pin-110059</b></p>

          
      </div>
    
      </center>
      <center>
          
          <form action="user_message" method="post">
    <div class="form-group">
        <input  style="width:60%;height:60px;border-radius: 12px" type="text" class="form-control" id="email" required="Your First Name" placeholder="Your Name" name="username">
    </div>
    <div class="form-group">
        <input  style="width:60%;height:60px;border-radius: 12px" required type="email" class="form-control" id="pwd" placeholder="Your Email ID" name="username">
    </div>
            <div class="form-group">
                <input type="text" style="width:60%;height:60px;border-radius: 12px"  required class="form-control" id="Address" placeholder="Your Address" name="username">
    </div>
              
              
                    <div class="form-group">
        <input type="tel" style="width:60%;height:60px;border-radius: 12px" required class="form-control" id="contact" placeholder="Your Contact" name="username">
    </div>
 
             <div class="form-group">
        <input type="text"  style="width:60%;height:60px;border-radius: 12px"  required class="form-control" id="mesage" placeholder="Your Message" name="username">
    </div>
              <button class="btn btn-info" style="border-radius:12px;background-color: #6699ff;width:200px">Sumbit Message</button>         

          </form>
         </center>

      </div>
     
    </div>

  </div>
</div>


</body>

   
</html>




